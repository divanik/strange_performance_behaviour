#!/usr/bin/env python3

import glob
import os
import subprocess
import sys

ASM_DIR = "./asm_nops"
BINARIES_DIR = "./asm_binaries"

MODES = ["1"]
QUERIES_NUMBER = 10_000_000
QUERIES_SEED = 42
NS = [100_000_000]
PATH = "data/numbers_1e9"


def compile_asm(asm_path, binary_path, objdump_path):
    cmd = ["g++-13", asm_path, "-std=c++23", "-fomit-frame-pointer", "-fno-exceptions",
           "-fno-rtti", "-O3", "-static", "-o", binary_path]
    print(f"Assembling {asm_path}: {' '.join(cmd)}")
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"  FAILED:\n{result.stderr}", file=sys.stderr)
        return False
    print(f"  OK -> {binary_path}")

    cmd = ["objdump", "-d", "-C", binary_path]
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"  objdump FAILED:\n{result.stderr}", file=sys.stderr)
    else:
        with open(objdump_path, "w") as f:
            f.write(result.stdout)
        print(f"  OBJDUMP -> {objdump_path}")
    return True


def run(binary, mode, n):
    cmd = [binary, mode, str(n), str(QUERIES_NUMBER), str(QUERIES_SEED), PATH]
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        return None, result.stderr.strip()
    return result.stdout.strip(), None


def main():
    os.makedirs(BINARIES_DIR, exist_ok=True)

    asm_files = sorted(glob.glob(os.path.join(ASM_DIR, "*.s")))
    if not asm_files:
        print(f"No .s files found in {ASM_DIR}", file=sys.stderr)
        sys.exit(1)

    compiled = []
    for asm_path in asm_files:
        stem = os.path.splitext(os.path.basename(asm_path))[0]
        binary_path = os.path.join(BINARIES_DIR, "binary_" + stem)
        objdump_path = os.path.join(BINARIES_DIR, "binary_" + stem + ".objdump")
        if compile_asm(asm_path, binary_path, objdump_path):
            compiled.append({"name": stem, "binary": binary_path})
    print()

    if not compiled:
        print("No files compiled successfully, aborting.", file=sys.stderr)
        sys.exit(1)

    col = 16
    header = f"{'name':<40}" + "".join(f"  {'mode':<6} {'n':>14}  {'ns/query':>{col}}")
    print(header)
    print("-" * (40 + (6 + 14 + col + 6) * len(MODES) * len(NS)))

    for entry in compiled:
        for mode in MODES:
            for n in NS:
                ns_per_query, err = run(entry["binary"], mode, n)
                value = ns_per_query if err is None else f"ERROR: {err}"
                print(f"{entry['name']:<40}  {mode:<6} {n:>14}  {value:>{col}}")


if __name__ == "__main__":
    main()

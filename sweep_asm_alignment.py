#!/usr/bin/env python3

import argparse
import csv
import os
import random
import re
import statistics
import subprocess
import sys
from pathlib import Path


DEFAULT_FLAGS = [
    "-std=c++23",
    "-fomit-frame-pointer",
    "-fno-exceptions",
    "-fno-rtti",
    "-O3",
    "-static",
]


def parse_pads(value):
    if ":" in value:
        parts = value.split(":")
        if len(parts) not in (2, 3):
            raise argparse.ArgumentTypeError("range must be START:STOP or START:STOP:STEP")
        start = int(parts[0], 0)
        stop = int(parts[1], 0)
        step = int(parts[2], 0) if len(parts) == 3 else 1
        return list(range(start, stop, step))
    return [int(x, 0) for x in value.split(",") if x.strip()]


def normalize_label(label):
    return label[:-1] if label.endswith(":") else label


def find_function_bounds(lines, function_name):
    start = None
    for i, line in enumerate(lines):
        if line.strip() == f"{function_name}:":
            start = i
            break
    if start is None:
        raise ValueError(f"function label not found: {function_name}")

    end = len(lines)
    size_re = re.compile(rf"\s*\.size\s+{re.escape(function_name)}\s*,")
    for i in range(start + 1, len(lines)):
        if size_re.match(lines[i]):
            end = i
            break
    return start, end


def find_label(lines, label, start, end):
    wanted = normalize_label(label)
    for i in range(start, end):
        if lines[i].strip() == f"{wanted}:":
            return i
    raise ValueError(f"target label not found inside selected function: {wanted}")


def is_alignment_directive(line):
    stripped = line.strip()
    return (
        stripped.startswith(".p2align")
        or stripped.startswith(".balign")
        or stripped.startswith(".align")
    )


def make_variant(source_text, function_name, label, pad):
    lines = source_text.splitlines(keepends=True)
    fn_start, fn_end = find_function_bounds(lines, function_name)
    label_idx = find_label(lines, label, fn_start, fn_end)

    remove_start = label_idx
    while remove_start > fn_start and is_alignment_directive(lines[remove_start - 1]):
        remove_start -= 1

    padding = [
        f"\t# alignment sweep: fixed {pad} byte(s) before {normalize_label(label)}\n",
        f"\t.fill {pad}, 1, 0x90\n",
    ]
    return "".join(lines[:remove_start] + padding + lines[label_idx:])


def run_command(cmd, cwd=None, timeout=None):
    return subprocess.run(
        cmd,
        cwd=cwd,
        timeout=timeout,
        text=True,
        capture_output=True,
    )


def compile_variant(compiler, asm_path, binary_path, flags):
    cmd = [compiler, str(asm_path)] + flags + ["-o", str(binary_path)]
    result = run_command(cmd)
    if result.returncode != 0:
        raise RuntimeError(
            "compile failed:\n"
            + " ".join(cmd)
            + "\n\nstdout:\n"
            + result.stdout
            + "\nstderr:\n"
            + result.stderr
        )


def objdump_binary(binary_path, objdump_path):
    cmd = ["objdump", "-d", "-C", str(binary_path)]
    result = run_command(cmd)
    if result.returncode != 0:
        raise RuntimeError("objdump failed:\n" + result.stderr)
    objdump_path.write_text(result.stdout)
    return result.stdout


def parse_objdump_block(objdump_text, symbol):
    header_re = re.compile(rf"^([0-9a-fA-F]+)\s+<{re.escape(symbol)}>:", re.MULTILINE)
    match = header_re.search(objdump_text)
    if not match:
        raise ValueError(f"symbol not found in objdump: {symbol}")

    start = match.start()
    next_header = re.search(r"^\S.*<[^>]+>:", objdump_text[match.end():], re.MULTILINE)
    end = match.end() + next_header.start() if next_header else len(objdump_text)
    return objdump_text[start:end]


def parse_addresses(objdump_text, symbol):
    block = parse_objdump_block(objdump_text, symbol)
    lines = block.splitlines()
    result = {
        "loop_target_addr": "",
        "loop_branch_addr": "",
        "exit_cmp_addr": "",
        "ret_addr": "",
    }

    addr_line_re = re.compile(r"^\s*([0-9a-fA-F]+):\s+")
    ja_re = re.compile(r"^\s*([0-9a-fA-F]+):.*\bja\s+([0-9a-fA-F]+)\s+<")

    for index, line in enumerate(lines):
        ja = ja_re.match(line)
        if ja:
            result["loop_branch_addr"] = int(ja.group(1), 16)
            result["loop_target_addr"] = int(ja.group(2), 16)
            for next_line in lines[index + 1:]:
                addr_match = addr_line_re.match(next_line)
                if addr_match:
                    result["exit_cmp_addr"] = int(addr_match.group(1), 16)
                    break
            continue

        if re.search(r"\bret[q]?\s*$", line):
            addr_match = addr_line_re.match(line)
            if addr_match:
                result["ret_addr"] = int(addr_match.group(1), 16)

    for key in list(result):
        addr = result[key]
        if isinstance(addr, int):
            result[key + "_hex"] = f"0x{addr:x}"
            result[key + "_mod16"] = addr % 16
            result[key + "_mod32"] = addr % 32
            result[key + "_mod64"] = addr % 64
        else:
            result[key + "_hex"] = ""
            result[key + "_mod16"] = ""
            result[key + "_mod32"] = ""
            result[key + "_mod64"] = ""

    return result


def parse_ns_per_query(stdout):
    values = []
    for line in stdout.splitlines():
        stripped = line.strip().replace(",", ".")
        try:
            values.append(float(stripped))
        except ValueError:
            pass
    if not values:
        raise ValueError("benchmark stdout does not contain a numeric ns/query value")
    return values[-1]

def run_benchmark(binary_path, args, repeat, timeout, taskset_cpu):
    values = []
    stderr_samples = []
    base_cmd = [str(binary_path)] + args
    if taskset_cpu is not None:
        base_cmd = ["taskset", "-c", str(taskset_cpu)] + base_cmd

    for _ in range(repeat):
        result = run_command(base_cmd, timeout=timeout)
        stderr_samples.append(result.stderr.strip())
        if result.returncode != 0:
            raise RuntimeError(
                "benchmark failed:\n"
                + " ".join(base_cmd)
                + "\n\nstdout:\n"
                + result.stdout
                + "\nstderr:\n"
                + result.stderr
            )
        values.append(parse_ns_per_query(result.stdout))

    return {
        "ns_per_query_mean": statistics.mean(values),
        "ns_per_query_min": min(values),
        "ns_per_query_max": max(values),
        "ns_per_query_stdev": statistics.stdev(values) if len(values) > 1 else 0.0,
        "runs": values,
        "stderr": "\n--- run ---\n".join(x for x in stderr_samples if x),
    }

def run_perf(binary_path, args, perf_repeat, taskset_cpu, raw_path, timeout):
    cmd = [
        "perf",
        "stat",
        "-x,",
        "-r",
        str(perf_repeat),
        "-e",
        "cycles,instructions,branches,branch-misses",
        str(binary_path),
    ] + args
    if taskset_cpu is not None:
        cmd = ["taskset", "-c", str(taskset_cpu)] + cmd

    result = run_command(cmd, timeout=timeout)
    raw_path.write_text(result.stdout + "\n--- stderr ---\n" + result.stderr)
    if result.returncode != 0:
        raise RuntimeError("perf failed:\n" + " ".join(cmd) + "\n\n" + result.stderr)


def main():
    parser = argparse.ArgumentParser(
        description="Generate assembly padding variants, compile them, and benchmark address-layout effects."
    )
    parser.add_argument("asm", type=Path, help="source GNU assembly file")
    parser.add_argument("--function", default="_ZN15BinarySearcher16searchEl",
                        help="mangled function label to edit in the .s file")
    parser.add_argument("--label", default=".L13",
                        help="local label before which alignment directives are replaced")
    parser.add_argument("--objdump-symbol", default="BinarySearcher1::search(long)",
                        help="demangled symbol name as printed by objdump -C")
    parser.add_argument("--pads", type=parse_pads, default=list(range(16)),
                        help="padding values, e.g. 0:16 or 0,2,8,10")
    parser.add_argument("--out-dir", type=Path, default=Path("alignment_sweep"),
                        help="directory for generated .s files, binaries, objdumps, and CSV")
    parser.add_argument("--compiler", default=os.environ.get("CXX", "g++-13"))
    parser.add_argument("--no-default-flags", action="store_true",
                        help="do not use the script's default g++ flags")
    parser.add_argument("--no-static", action="store_true",
                        help="remove -static from the default flags")
    parser.add_argument("--flag", action="append", default=[],
                        help="extra compiler/linker flag; can be passed multiple times")
    parser.add_argument("--mode", default="1")
    parser.add_argument("--n", default="100000000")
    parser.add_argument("--queries", default="10000000")
    parser.add_argument("--seed", default="42")
    parser.add_argument("--data", default="data/numbers_1e9")
    parser.add_argument("--repeat", type=int, default=1,
                        help="normal benchmark repeats per variant")
    parser.add_argument("--shuffle", action="store_true",
                        help="run padding variants in random order")
    parser.add_argument("--taskset-cpu", type=int, default=None,
                        help="pin benchmark/perf to one CPU with taskset -c")
    parser.add_argument("--timeout", type=float, default=None,
                        help="timeout in seconds for each benchmark run")
    parser.add_argument("--perf", action="store_true",
                        help="also run perf stat for each variant and save raw output")
    parser.add_argument("--perf-repeat", type=int, default=3)
    args = parser.parse_args()

    source_text = args.asm.read_text()
    out_dir = args.out_dir
    asm_dir = out_dir / "asm"
    bin_dir = out_dir / "bin"
    dump_dir = out_dir / "objdump"
    perf_dir = out_dir / "perf"
    for directory in (asm_dir, bin_dir, dump_dir, perf_dir):
        directory.mkdir(parents=True, exist_ok=True)

    pads = list(args.pads)
    if args.shuffle:
        random.shuffle(pads)

    compiler_flags = [] if args.no_default_flags else list(DEFAULT_FLAGS)
    if args.no_static:
        compiler_flags = [flag for flag in compiler_flags if flag != "-static"]
    compiler_flags.extend(args.flag)
    benchmark_args = [args.mode, args.n, args.queries, args.seed, args.data]
    rows = []

    for pad in pads:
        stem = f"{args.asm.stem}_pad_{pad:02d}"
        variant_asm = asm_dir / f"{stem}.s"
        binary = bin_dir / stem
        dump = dump_dir / f"{stem}.objdump"

        variant_asm.write_text(make_variant(source_text, args.function, args.label, pad))
        compile_variant(args.compiler, variant_asm, binary, compiler_flags)
        objdump_text = objdump_binary(binary, dump)
        addresses = parse_addresses(objdump_text, args.objdump_symbol)

        bench = run_benchmark(binary, benchmark_args, args.repeat, args.timeout, args.taskset_cpu)
        if args.perf:
            run_perf(binary, benchmark_args, args.perf_repeat, args.taskset_cpu,
                     perf_dir / f"{stem}.perf.txt", args.timeout)

        row = {
            "pad": pad,
            "binary": str(binary),
            **addresses,
            "ns_per_query_mean": f"{bench['ns_per_query_mean']:.8f}",
            "ns_per_query_min": f"{bench['ns_per_query_min']:.8f}",
            "ns_per_query_max": f"{bench['ns_per_query_max']:.8f}",
            "ns_per_query_stdev": f"{bench['ns_per_query_stdev']:.8f}",
            "runs": " ".join(f"{x:.8f}" for x in bench["runs"]),
        }
        rows.append(row)
        print(
            f"pad={pad:2d} "
            f"target={row['loop_target_addr_hex']:>10} "
            f"target%64={row['loop_target_addr_mod64']:>2} "
            f"branch%64={row['loop_branch_addr_mod64']:>2} "
            f"ret%64={row['ret_addr_mod64']:>2} "
            f"ns/query={row['ns_per_query_mean']}"
        )
        sys.stdout.flush()

    csv_path = out_dir / "results.csv"
    if rows:
        fieldnames = list(rows[0].keys())
        with csv_path.open("w", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(sorted(rows, key=lambda x: int(x["pad"])))

    best = min(rows, key=lambda x: float(x["ns_per_query_mean"])) if rows else None
    print()
    print(f"CSV: {csv_path}")
    if best:
        print(
            "best: "
            f"pad={best['pad']} "
            f"target%64={best['loop_target_addr_mod64']} "
            f"branch%64={best['loop_branch_addr_mod64']} "
            f"ns/query={best['ns_per_query_mean']}"
        )

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("interrupted", file=sys.stderr)
        sys.exit(130)
    except Exception as exc:
        print(f"error: {exc}", file=sys.stderr)
        sys.exit(1)
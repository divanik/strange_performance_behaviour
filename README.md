# strange_performance_behaviour

Experiment which needs to be tried on different CPUs types. 

Ensure you have linux.

Run with commamnd:

```
python3 run_binary_search.py
```

Ensure that g++-13 is installed beforehand.

You need 1 Gb of RAM and disk space before run.

Send the result table to @divanik tg, please.

Your mmeasurements are especially important to me if you have AMD processor.

## diff parddings of binary search:

Experiment change padding of `BinarySearch1::search` instructions

```
python3 sweep_asm_alignment.py asm_nops/experiment_v1_gcc13.s --pads 0:16 --repeat 1 --taskset-cpu 0  --out-dir alignment_sweep
```

will use all padding from 0 to 15 including at `.L13` flag and run `experiment_v1_gcc13.s` with it.

Sample output looks like:
```
pad= 0 target=  0x406256 target%64=22 branch%64=50 ret%64=59 ns/query=450.45807000
pad= 1 target=  0x406257 target%64=23 branch%64=51 ret%64=60 ns/query=457.07137000
pad= 2 target=  0x406258 target%64=24 branch%64=52 ret%64=61 ns/query=468.82436000
pad= 3 target=  0x406259 target%64=25 branch%64=53 ret%64=62 ns/query=478.38019000
pad= 4 target=  0x40625a target%64=26 branch%64=54 ret%64=63 ns/query=451.74687000
pad= 5 target=  0x40625b target%64=27 branch%64=55 ret%64= 0 ns/query=444.16560000
pad= 6 target=  0x40625c target%64=28 branch%64=56 ret%64= 1 ns/query=461.76323000
pad= 7 target=  0x40625d target%64=29 branch%64=57 ret%64= 2 ns/query=449.05136000
pad= 8 target=  0x40625e target%64=30 branch%64=58 ret%64= 3 ns/query=465.80982000
pad= 9 target=  0x40625f target%64=31 branch%64=59 ret%64= 4 ns/query=879.69312000
pad=10 target=  0x406260 target%64=32 branch%64=60 ret%64= 5 ns/query=795.20138000
pad=11 target=  0x406261 target%64=33 branch%64=61 ret%64= 6 ns/query=451.10380000
pad=12 target=  0x406262 target%64=34 branch%64=62 ret%64= 7 ns/query=469.21844000
pad=13 target=  0x406263 target%64=35 branch%64=63 ret%64= 8 ns/query=847.22238000
pad=14 target=  0x406264 target%64=36 branch%64= 0 ret%64= 9 ns/query=807.47216000
pad=15 target=  0x406265 target%64=37 branch%64= 1 ret%64=10 ns/query=439.26350000

CSV: alignment_sweep/results.csv
best: pad=15 target%64=37 branch%64=1 ns/query=439.26350000
```

It shows different runtime depends on padding 

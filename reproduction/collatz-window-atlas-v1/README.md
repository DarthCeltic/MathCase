# Collatz parity-window first-descent atlas

This package provides a compiled C++17 command that enumerates exact accelerated-parity windows, builds every upper-cap pair, and records first-drop coverage from the least `n ≥ 3` representative of each residue class. Curated JSON atlases cover 12+12, 8+16, and 16+8 windows. The two C++ programs use different methods: `window_atlas.cpp` directly simulates every least representative; `affine_audit.cpp` independently classifies every parity word using exact affine prefix thresholds and does not simulate starting orbits. `build_atlases.py` merges the checks and stops if their counts or fully covered maxima differ.

## Stable data files

- [`atlas-12-12.json`](atlas-12-12.json) is the primary 24-step atlas for the Pages explorer. It contains 169 exact odd-count cells and 169 upper-cap gates, including all cap pairs from `(0,0)` through `(12,12)`.
- [`atlas-8-16.json`](atlas-8-16.json) and [`atlas-16-8.json`](atlas-16-8.json) are unequal-window comparisons, each with 153 cells and 153 cap pairs.
- `affine-audit-*.csv` preserves the independent symbolic classification table used to enrich each JSON gate.

The JSON window lengths and horizon define the first and second consecutive windows. An exact-cell row gives its odd count in each window and the number of residue classes with those exact counts. A gate row `(cap_first, cap_second)` admits every cell with first count `≤ cap_first` and second count `≤ cap_second`.

Each gate contains:

- `admitted_class_count`: exact number of admitted classes modulo `2^horizon`.
- `guaranteed_drop_class_count`: classes whose least representative drops by the horizon. A drop gives a positive affine slope, so every larger member of that class drops by the same or an earlier step.
- `least_representative_no_drop_class_count`: classes whose least `n ≥ 3` representative does not drop by the horizon. Each is an actual counterexample to a uniform drop claim.
- `member_classification`: the independent affine audit partitions classes into `all_member_drop_class_count`, `mixed_member_class_count`, and `no_member_drop_class_count`. A mixed class has a finite number of small starts that fail the horizon, while larger members eventually drop within it. A no-member-drop class has no start in that residue class that drops by the horizon. `finite_non_dropping_member_count_in_mixed_classes` counts those finite exceptions.
- `fully_covered`: true only when every admitted start `n ≥ 3` drops by the horizon. The four sharp maximum/witness fields are JSON `null` for partial gates.
- `sharp_max_first_drop_accelerated_steps` and `sharp_max_first_drop_ordinary_steps`, with the least start attaining each maximum, for fully covered gates. If the first accelerated drop occurs at step `t` after `h` odd inputs, its ordinary-step count is `t+h`.

For a parity prefix of length `t`, the accelerated endpoint is `x_t=(3^h n+c)/2^t`. A drop requires `(2^t−3^h)n>c`. The direct scan verifies a concrete representative. The separate affine checker uses the prefix thresholds to decide whether all, some, or none of the members of each residue class drop by the horizon. An unresolved representative alone is a counterexample; the direct scan does not infer what happens to larger members in that class.

## Selected results

At 12+12, the full atlas has 134 fully covered cap pairs and 35 partial pairs. With no caps, 16,490,635 of 16,777,216 classes drop for every member by accelerated step 24; 286,581 classes contain no member that drops by step 24. There are no mixed classes in this full split, and the least non-dropping representative is 27.

Two matched 12+12 gates reproduce the earlier first-drop comparison: caps 9+6 admit 10,082,670 classes and have a sharp 24/39 accelerated/ordinary maximum at `n=283`; reversed caps 6+9 admit the same count and have a sharp 10/16 maximum at `n=347`.

The unequal-window atlases give a second matched-count comparison. An 8+16 gate with caps 5+10 and a 16+8 gate with caps 10+5 each admit 12,844,569 classes and are fully covered. Their sharp maxima are 8/13 at `n=39` and 16/26 at `n=359`, respectively. Reordering equal-count window conditions can change the latest first drop.

Terras's stopping-time framework motivates parity-prefix analysis; see [Terras, “A stopping time problem on the positive integers” (1976)](https://www.impan.pl/en/publishing-house/journals-and-series/acta-arithmetica/all/30/3/101028/a-stopping-time-problem-on-the-positive-integers) and the later [survey/preprint](https://arxiv.org/abs/2502.00948). MathCase contributes reproducible software and finite tables here; it makes no priority claim.

These finite, condition-specific results do not prove that all Collatz trajectories reach 1 and do not establish novelty. They describe only the stated parity filters and first-drop horizons.

## Build and run

Requires a C++17 compiler and Python 3.10 or later. From the repository root on Windows with `g++` installed:

```powershell
New-Item -ItemType Directory -Force bin | Out-Null
g++ -std=c++17 -O3 -Wall -Wextra -pedantic reproduction/collatz-window-atlas-v1/window_atlas.cpp -o bin/window_atlas.exe
g++ -std=c++17 -O3 -Wall -Wextra -pedantic reproduction/collatz-window-atlas-v1/affine_audit.cpp -o bin/affine_audit.exe
```

The general representative-scan CLI accepts any two positive window lengths whose sum is at most 24 and writes JSON to standard output:

```powershell
bin/window_atlas.exe 12 12
bin/window_atlas.exe 8 16 > atlas-8-16-direct.json
```

To regenerate all three curated JSON atlases and their independent CSV audits:

```powershell
python -B reproduction/collatz-window-atlas-v1/build_atlases.py --atlas-executable bin/window_atlas.exe --affine-executable bin/affine_audit.exe
```

The builder checks all cap-row counts, unresolved least representatives, full-coverage flags, and sharp maxima against the affine audit before writing the files. For a second small exhaustive control, compare the compiled direct scanner against a separate Python orbit enumerator over all 256 least representatives for 3+5 windows:

```powershell
python -B reproduction/collatz-window-atlas-v1/verify_small_oracle.py --executable bin/window_atlas.exe
```

Expected output:

```text
PASS: C++ atlas matches independent Python direct simulation for 256 residues and all 24 cap pairs (3+5).
```

The atlas is a finite computation, not a Lean proof or an automatic claim of Collatz convergence.

# Two-window Collatz first-drop comparison

This package compares two parity filters over the first 24 **accelerated** Collatz steps. The accelerated map is `x → x/2` for even `x` and `x → (3x+1)/2` for odd `x`. An odd count records the parity of the input to each accelerated step.

The two matched filters are:

| Filter | Steps 1–12 | Steps 13–24 | Admitted parity classes mod `2^24` | Sharp first drop, accelerated | Sharp first drop, ordinary |
| --- | ---: | ---: | ---: | ---: | ---: |
| Early-heavy `9+6` | At most 9 odd inputs | At most 6 odd inputs | 10,082,670 | 24 | 39 |
| Reversed `6+9` | At most 6 odd inputs | At most 9 odd inputs | 10,082,670 | 10 | 16 |
| First-window only `6+12` | At most 6 odd inputs | No restriction | 10,280,960 | 10 | 16 |

The global at-most-15-of-24 filter admits 15,505,590 classes. The two matched filters are subsets of it; this package does not improve or replace that existing result. The separate first-window-only filter is not a subset: it can admit words with as many as 18 odd inputs overall. The reversed comparison shows that placing the same restrictive cap first gives an earlier sharp drop. In fact, the cap of 6 in the first 12 steps alone suffices; the last 12-step cap is unnecessary for the 10/16 bound.

## What “sharp” means here

For every start `n ≥ 3` satisfying a row's filter, the stated maximum is the greatest possible first-drop time under that filter. The “ordinary” count uses the unaccelerated map `T(n)=3n+1` for odd `n`, `T(n)=n/2` for even `n`. If the first accelerated drop is at step `t` after `h` odd inputs, the corresponding first ordinary drop is at step `t+h`: an odd accelerated step combines the `3n+1` operation and its following division by two.

The 24-bit parity-word map is bijective onto residue classes modulo `2^24`. The window counts are `Σᵢ₌₀⁹ C(12,i)=4,017` and `Σᵢ₌₀⁶ C(12,i)=2,510`, so each matched filter admits their product, 10,082,670 words. The runner counts these words by an exact dynamic program and checks the count against the binomial product. It computes the strict slope-crossing maxima, but a slope crossing alone is not used to claim a bound for every start. For `x_t=(3^h n+c)/2^t`, a drop requires `(2^t−3^h)n>c`.

The all-start bounds include the affine constant `c`:

- For `9+6`, at step 24, the largest required starting value over all admissible prefix-count states is 118. The maximizing state has `h=15`, `c=286,131,032`, and slope `2^24−3^15=2,428,309`. Thus every qualifying `n ≥ 118` drops by step 24. The runner directly checks every integer `3 ≤ n < 118`; 93 of them satisfy the filter, and all drop by step 24.
- For `6+9` and the broader first-window-only `6+12`, at step 10 the first-window cap guarantees `h≤6`. Exact prefix propagation gives maximum `c=10,640` at `h=6`; the slope is `2^10−3^6=295`, so every `n ≥ 37` drops by step 10. The runner directly checks every integer `3 ≤ n < 37`; 31 starts satisfy the first-window cap, and all drop by step 10. This proof does not use the second-window cap.

These affine maxima also have short hand checks. If the odd positions are `i₁<…<iₕ` (one-based), then `c=Σⱼ 3^(h−j)·2^(iⱼ−1)`. Moving an odd position later within its window increases `c`; adding an allowed odd input increases `c` and decreases the positive slope. So the worst `9+6` endpoint word is `000111111111000000111111`, with `c=286,131,032` and slope `2,428,309`. For the first-window cap at step 10, the worst prefix is `0000111111`, with `c=10,640` and slope 295. The executable independently propagates these maxima and records their attaining words in the receipt.

The small-start checks are finite and complete for the stated ranges. The affine inequalities cover every larger integer, regardless of its residue representative. This avoids treating a single representative or an asymptotic slope calculation as an all-start certificate.

## Exact residue-word witnesses

The 24-character word lists the accelerated input parities, from step 1 to step 24. Each witness is itself the least positive representative of its recorded residue class.

| Filter | Start `n` | 24-bit word | Window odd counts | First accelerated drop | Ordinary drop | Affine check at first drop |
| --- | ---: | --- | ---: | ---: | ---: | --- |
| `9+6` | 283 | `110111111001111000101010` | 9, 6 | 24, after 15 odds | 39 | `c=32,900,023`, slope `2,428,309`, `x_24=244<283` |
| `6+9` | 347 | `110111010000011111010110` | 6, 8 | 10, after 6 odds | 16 | `c=989`, slope `295`, `x_10=248<347` |
| `6+12` | 347 | `110111010000011111010110` | 6, 8 | 10, after 6 odds | 16 | `c=989`, slope `295`, `x_10=248<347` |

The residue calculation is checked two ways in the executable: incremental prefix lifting and the modular inverse formula `n ≡ −c(3^h)⁻¹ mod 2^24`. The direct orbit supplies the first-drop and window counts.

## Reproduce

Requires Python 3.10 or later; the script uses only the standard library. From the repository root:

```sh
python reproduction/collatz-two-window-first-drop-2026-11-v1/analyze_two_windows.py
```

The command runs the exact count and prefix dynamic programs, the affine all-start cutoff calculations, direct checks of all small starts below those cutoffs, both witness simulations, and an exhaustive 8-step parity-word counting control. It writes `receipt.json` beside the script, including the run time, runtime version, exact counts, witness words/residues, affine constants, and the SHA-256 of the executable. When the optional C++ source and output are present, the receipt also binds both by SHA-256.

An independent full residue-class scan is included in [`check_all_residues.cpp`](check_all_residues.cpp); its recorded output is [`independent-residue-scan.csv`](independent-residue-scan.csv). It directly simulates the least `n ≥ 3` in every class modulo `2^24` (the consecutive range `3` through `2^24+2`) for all three filters. If that least representative first drops at `t`, then `(2^t−3^h)n>c≥0` implies `2^t>3^h`; all larger starts in that class have the same first `t` parities and also drop by `t`. The greatest drop time over these least representatives is therefore the exact all-start maximum. This second implementation does not reuse the Python DP or finite-small-start split.

With a C++17 compiler available, rebuild and run it from the repository root:

```sh
g++ -std=c++17 -O3 -Wall -Wextra -pedantic reproduction/collatz-two-window-first-drop-2026-11-v1/check_all_residues.cpp -o check_all_residues
./check_all_residues
```

It prints the CSV header and the three exact result rows recorded with this package. No compiled binary is included.

## Limits

This is a bounded parity-filter comparison with elementary affine arithmetic. It is not a Lean theorem, a proof of Collatz convergence, a novelty claim, or an independent mathematical review. It makes no assertion about starts whose first 24 accelerated inputs fail the stated filter.

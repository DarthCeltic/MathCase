# A 3-row transfer matrix for every periodic length

For each of the three columns, encode its vertical spin pattern as one of eight states s in {0,...,7}. Let v(s) count the disagreeing vertical bonds inside that column, including the wrap from row 3 back to row 1. Let h(s,t) be the Hamming distance between adjacent column states. For a periodic sequence s_0,...,s_(L-1), the broken-bond count is

B = sum_i v(s_i) + sum_i h(s_i,s_(i+1 mod L)).

Define the 8x8 polynomial matrix T(z) by

T[s,t](z) = z^(v(t)+h(s,t)).

In a cyclic matrix-product term for T^L, the transition weights contribute v(s_1)+...+v(s_0) and every adjacent-column distance exactly once. The vertical sum is the same as sum_i v(s_i) after cyclic reindexing. Therefore each labeled periodic spin assignment contributes exactly z^B to trace(T(z)^L), and the coefficient of z^b is the exact number of assignments with b broken bonds. This is a direct combinatorial identity for every L>=3; it is not a new Ising result.

## Reproduce the check

Run `python -B transfer_check.py` in this folder. It checks the transfer polynomial against direct enumeration for all assignments at lengths 3 through 6, then compares the length-10 polynomial with both independently recorded histograms in the pinned public MathCase receipt `density-3x10-public.json`. A modified transition exponent is a negative control. The command writes a fresh untracked receipt under `evidence/runs/local-result.json`; use `--output path/to/receipt.json` for another location and leave the committed `result.json` unchanged.

The script uses Python exact integers and finite polynomial dictionaries. It performs no network or provider calls. The reference JSON was retrieved from public MathCase at commit 2bce5aa25f3d31020d59ac5bf42cc61b70ef79a3; the SHA-256 is recorded in SHA256SUMS.txt.

## What this does not establish

It is a small transfer-matrix identity and a reproducible finite check. It does not establish a new physical result, asymptotic behavior, or a novel method. The full paper/source review of transfer-matrix prior art remains separate.

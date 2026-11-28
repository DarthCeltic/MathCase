# Periodic 6x3 Ising exact finite check

Status: `PASS_EXACT_FINITE_CHECK` for one periodic 6-by-3 square-lattice torus.

The check enumerates all 262,144 labeled spin assignments and compares the exact joint histogram `(number of disagreeing edges, number of + spins)` using three implementations:

1. Explicitly count the 36 periodic edges for each assignment.
2. Sum closed walks over 64 six-bit column states, adding vertical bonds by cyclic rotation and the seam when the walk closes.
3. Independently walk all assignments in Gray-code order, updating the cut size from the four neighbors of the flipped vertex.

All three histograms match. The primary histogram SHA-256 is `d7de5b273854f6a6975f3a80b036560a8ea73ac38bf2aef88445655826da2fef`. The 64-state transfer implementation also passed the structural controls (total configurations, uniform configurations, single-spin-flip bins, spin-inversion symmetry). A damaged transfer control omitting vertical-bond contributions was rejected. The independent Gray-code verifier also rejected a deliberately incremented histogram count.

## Fixed-up-spin screen

Broken-edge counts are even on this degree-four torus, so the screen uses the naturally spaced even-edge profile. For each fixed up-spin count `u=0..18`, leading and trailing zero bins are trimmed; interior zeros remain and count as log-concavity failures if their neighbors are positive. Ten of the 19 profiles are log-concave and nine are not. The first failure is `u=5`, with counts at 8, 10, and 12 disagreeing edges equal to `36, 162, 972`; `162^2 = 26,244 < 36*972 = 34,992`.

## Reproduce

With Python 3 and no third-party packages, from this directory:

```powershell
python -B .\check_width6.py --max-seconds 120 --output .\receipt.json
python -B .\independent_gray_crosscheck.py --receipt .\receipt.json --output .\independent-check-r2.json
```

The initial optional Gray-code attempt is retained as `independent-check.json` with its `FAIL`; its update-sign error was corrected in the checked-in `independent_gray_crosscheck.py` and the corrected run is `independent-check-r2.json`.

## Scope

This is an exact finite computation for this single torus. It is not a general Ising theorem, a thermodynamic-limit result, or a novelty/priority claim. It is a reproducible additive finite-data package candidate; publication should describe it as an extension of the existing width-five finite computation and state the exact scope above.

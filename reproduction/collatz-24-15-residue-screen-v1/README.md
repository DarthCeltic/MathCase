# Collatz 24/15 residue-aware finite screen (exploratory)

## What was checked

The existing exploratory 24/15 statement says: for every natural number n at least 3, if at most 15 of the first 24 accelerated Collatz inputs are odd, then the ordinary Collatz iterate at step 24+h is smaller than n, where h is that odd-input count. The existing Lean receipt is bound to the source hashes in run-receipt.json; that target has not received M0 review.

This package adds a finite computational cross-check only. It is not a Lean proof, does not replace the existing Lean receipt, is not a new theorem, and says nothing about global Collatz convergence or novelty.

The screen visits all 2^24 residue classes modulo 2^24. For each class with at most 15 odd inputs, it uses the least starting integer n >= 3 in that class and computes the exact 24-step accelerated endpoint. It groups the accepted classes by h and records the smallest scaled margin 2^24 * (n - endpoint) in each group. The parity word fixes an affine endpoint (3^h*n+c)/2^24; its scaled margin has slope 2^24-3^h, which is positive for every h <= 15. Thus the enumerated minimum is the boundary case for the rest of that residue class, subject to the correctness of the implementation. The programs check that relation computationally; it is not separately formalized here.

## Independent implementations

- Python splits the 24-bit residue into low and high 12-bit parts, computes the first 12 accelerated steps once per low part, then completes the trace.
- C++17 scans every residue directly and simulates 24 accelerated steps.
- The verifier compares all 16 odd-count rows against the binomial counts, checks both minimum witnesses, recomputes their exact affine margins, confirms positive slopes, and rejects a zero-margin mutation and an altered-residue mutation.

The two methods agreed on all 15,505,590 accepted classes. See verification.json for exact per-row counts, minima, and representative starts/endpoints.

## Reproduce

Requires Python 3 and a C++17 compiler. From this package directory:

    python -B reproduce.py

Each invocation writes to a new timestamped subfolder under runs/ and leaves the published receipt and saved outputs unchanged. Use --output-dir PATH to choose another new output folder on the scratch volume you want to use.

The recorded run used Python 3.14.7 and g++ 16.2.0. See run-receipt.json and SHA256SUMS.txt for source pins, output hashes, timings, and the existing exploratory Lean receipt binding. No model/provider calls or paid compute were used.

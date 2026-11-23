# Counting the twenty-step parity families

The theorem `MathCase.Collatz.WordBound.counted_progressions_descend` counts 125,970 qualifying residues out of 1,048,576. A residue qualifies when exactly twelve inputs are odd in twenty accelerated Collatz steps. For every such residue r and every natural k, the number 1,048,576k + r reaches 531,441k + A²⁰(r) after 32 ordinary Collatz steps. This endpoint is strictly smaller than the starting number. A is the accelerated step that divides by two once after handling odd or even parity.

A residue r modulo 2^t has exactly two lifts at the next level, r and r + 2^t. Their first t parity counts agree. At the end of those t steps their states differ by the odd number 3^h, so exactly one next step contributes a new odd input. This yields the Pascal recursion and gives the count without enumerating a million trajectories in Lean. The final theorem states the count on the actual list of residues, using the same parity predicate as the descent proof.

Place `CountWords.lean` and `verify_count.py` alongside `WordBound.lean` and `WordResidue.lean`. With Python 3 and Lean 4.33.1 installed, run:

```sh
python verify_count.py --output count-receipt.json
```

The script rebuilds these three source modules in a new temporary directory, audits their axioms, and checks that substituting 125,971 for the count is rejected. It uses one Lean worker. The Lean compiler and Python are the only runtime dependencies. For a specific Lean installation, pass `--lean /path/to/lean`.

This result covers a fixed parity condition. Universal convergence and prior art are separate questions.

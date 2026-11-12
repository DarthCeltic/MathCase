# M31 residual initial-valuation audit v1

This audit checks one exact finite property of the saved M31 128-step screen. It reconstructs the hash-bound M30 coverage mask, visits both modulus-`2^31` lifts of every M30-uncovered residue, removes every saved M31 affine-family residue, and computes `v2(3n+1)` for the same fixed representative `n = r + 2^31` used by the M31 structure sample.

The audit reports the full base-residual parity counts, the number of M31 rows matched, the exact count of unresolved M31 classes, and the valuation histogram over every unresolved class. It does not rerun the symbolic affine search or the paired-trajectory screen. The saved M31 independent validation receipt remains the authority for those prior finite checks.

All inputs are hash-bound to the committed local M30/M31 packages. Execution is local CPU only, one worker, with Docker networking disabled; no model, provider, search API, GPU, or Lean build is used. The conclusion is limited to this finite residue population and does not prove or refute the Collatz conjecture.

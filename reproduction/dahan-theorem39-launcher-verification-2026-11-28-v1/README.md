# Dahan Theorem 3.9 launcher verification

This small record verifies the normal public MathCase launcher, rather than
replacing the canonical 500,000-row receipt. On November 28, 2026, a fresh
output directory ran the public case ID below: generation exited 0, followed
by the independent row audit, which also exited 0.

```text
python -B scripts/run_public_case.py dahan-theorem39-500000 --out <fresh-output-directory>
```

The full generated JSON is intentionally not committed (it is about 66 MB).
The canonical finite result and source hashes remain in
`research/number-theory/egyptian-fractions/dahan-theorem39-extension-500000-v1/`.
This launcher record stores only the path-free status and digests needed to
reproduce and distinguish the route check. The generator embeds a digest
before the final JSON is written, so both that embedded digest and the final
file digest are preserved.

This is finite arithmetic evidence only. It is not a proof of the
Erdős–Straus conjecture, an asymptotic result, a novelty claim, or a priority
claim. External calls and spend were 0 and $0.

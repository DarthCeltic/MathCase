# Diagnostics and lab notes

These checks are retained for transparency and exploration. Each entry names the limited action that was actually run; none should be read as independent verification of an upstream theorem or a new mathematical result.

- **VP versus VNP:** the 2×2 permanent/determinant example and seven pinned source-file identity checks. No Lean target or upstream proof replay is claimed. Commands: `python scripts/run_public_case.py vp-vnp-example` and `python scripts/run_public_case.py vp-vnp-source-audit`. See the [package](../../reproduction/vp-vnp-source-audit-v1/README.md).
- **Matrix multiplication exponent 9/4:** one exact 2×2 ordinary/Strassen worked example and a damaged-result control. The local Lean target attempt timed out before reaching the theorem; the Comparator workflow was not run. See the [package](../../reproduction/matrix-exponent-2x2-v1/README.md).
- **Riemann hypothesis:** four pinned public source files were checked for byte identity. This is not a proof replay or independent validation. See the [package](../../reproduction/riemann-source-audit-v1/README.md).
- **M31 v1:** local checks rebind the saved Lean receipt and recompute 860 listed rows. Fresh anonymous Lean replay and independent review remain open. See the [package](../../reproduction/collatz-m31-lift-v1/README.md).
- **Collatz 17/27:** a Lean PASS receipt and separate finite residue count are preserved. No exact M0 review or separate authorization was found in the reviewed record; keep it outside the featured theorem path. See the [package](../../reproduction/collatz-at-most-seventeen-of-twenty-seven-v1/README.md).
- **M31 step-34 sample:** a finite representative census and its input-byte binding record; it is not a class-wide theorem. See the [package](../../reproduction/m31-step34-crlf-binding-v1/README.md).
- **Finite solver probes:** bounded outcomes such as `UNKNOWN` or a failed extension apply only to the stated formula, saved coloring, neighborhood, and time cap. They do not prove a general impossibility result. See the [frontier package](../../research/frontier-2026-11/README.md) and its [visitor page](https://darthceltic.github.io/frontier.html).

The primary reproducible Lean entry is the [23/14 bounded Collatz theorem](../../reproduction/collatz-parity-envelopes-2026-11-v1/README.md). It demonstrates a finite first-drop result and proof checking, not Collatz convergence or a new discovery. The current combined script also compiles three exploratory cases; a 23/14-only replay is being prepared and will be linked once published.

# R(6,6) Lean replay attempt history

The public statement is a known-witness formalization, not a new Ramsey bound. This list keeps the main outcomes visible without publishing workstation paths or raw local diagnostic logs.

| Run | Result | What happened |
| --- | --- | --- |
| R1 | Failed | The 2 GiB container was killed by the memory limit during a row proof. |
| R2 | Failed before Lean | Output-layout setup failed; no theorem result was produced. |
| R2b | Failed | The 4 GiB run hit Lean recursion depth in the 101-row proof approach. This was not an OOM. |
| R3 | Failed | The representative module compiled, but the composition source had Lean proof-construction errors. The failed output was preserved. |
| R3b | Passed | Three MathCase modules compiled from source under a 6 GiB cap. All exited 0; the final axiom audit passed. |
| Lake package replay | Passed | A fresh standalone package build in the public checkout compiled the same source and passed the same axiom audit. This host run had no enforced memory cap and was not an anonymous whole-repository clone. |
| Package normalization attempt | Failed outside theorem | A broad line-ending pass entered ignored generated Lake dependency files; the next incremental Lean process exited 3221225477 (0xC0000005). Proof-source hashes were unchanged. The failure is preserved in verification/package-cache-normalization-failure.json. |
| Lake recovery replay | Passed, incremental | The damaged generated Qq clone was replaced at its locked revision; a one-job build and axiom audit exited 0. The three theorem modules were replayed from the existing full-source build and were not recompiled in this recovery run. |

The earlier failures remain preserved in the private run archive. The independent Lake package replay also passed. The public record reports the outcome and cause without including local path strings from those diagnostics. The package-normalization failure is a preserved cache/setup failure, not a mathematical failure; the locked dependency was restored and an incremental recovery build plus axiom audit passed.

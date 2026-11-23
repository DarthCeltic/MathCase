# Replay outcome

## Passing v2 run

Four fresh-source Lean 4.33.1 modules compiled successfully in one attempt. The command used Lean core only, one module at a time, a 60-second per-module timeout, and no network or provider calls. All four exit codes were 0; total wall time was about 7.6 seconds on the warmed local toolchain.

| Module | Time (s) | Source SHA-256 | OLean SHA-256 |
|---|---:|---|---|
| `WordBound` | 2.067080 | `2208a91a348c41b110c799124b450957a5a7a168e33c49dbab03ec0736c3d48d` | `8ca3ff4172048d00af6f97e305f564ce4ff7dc17412a3bc946a841b19b976d30` |
| `WordResidue` | 0.972392 | `812b00cdf2375de9a87d8c87fbd7cebb61924542d251775828dcc845bd0fdc1c` | `9bb543de9bd5da88a51fba7d8057b904349d10cd5c768f8bbfa4e4a8de7ae007` |
| `CountWords` | 0.942257 | `3466e894caf365eadbad480bd7f9bb75de7ae015ff84e567f1eeb0c363e99e60` | `a8d1c83c4230c8f501f38322815f4451cf0290e6bff2bede972c2bfc34dd24df` |
| `AtMostThirteen22` | 3.644093 | `a6e55ea4c501fc22fc209503ea9d24c1dbaa47cd320021ab8365116bc66766bc` | `c9785d80b5491e726950ca55b866e429a7b1d557e158b3594ff754c05bb5e1f8` |

The direct run receipt SHA-256 is `0cd932aa2a80514ed0d8b79f17171051e18ba817b0659105bab7ef79abde3656`. The path-free [run binding](ATTEMPT-BINDING.json) and [verification summary](verification-summary.json) record the statement, sources, output hashes, and arithmetic-audit digest. The independent arithmetic-audit SHA-256 is `d8f2329a802162f50ee42ab25c3274a415a62cecbd7aaad9b70b7e88e896a2db`.

The exact density is `3,593,934 / 4,194,304 = 85.6860637665%` of residue classes modulo `2^22`. The coefficient argument has positive gap through 13 odd accelerated inputs; its largest strict threshold is `n ≥ 313`. Lean handles starts 3 through 312 directly. The independent audit found 226 qualifying starts in that finite interval and no exception.

## Public case launcher check

The new `collatz-at-most-thirteen-22` route was then run through the public repository launcher. It again compiled all four modules and passed the exact axiom and arithmetic checks. The launcher source hash is `df3542c0368c5d9964ba97325539dfa4df1476e9964ad23ea69434d235080b78`; its path-free run summary is `public-case-route-replay.json`.

The source hashes and theorem axiom reports match the direct v2 run. The final `.olean` hash is different because Lean's artifact includes its absolute source path; the source bytes and proof result match, but the two final compiled artifacts are not byte-identical. The separate run summary binds each output hash and makes no artifact-identity claim.

## Preserved v1 failure

Version 1 compiled the three shared dependencies, then exited 1 in `AtMostThirteen22.lean`. Its final proof step asked Lean to rewrite an ordinary-iterate expression inside a hypothesis whose target was the accelerated iterate. Lean reported that the requested expression was absent. The proof was repaired in v2 using the equality in the forward direction.

The failed elaboration produced `sorryAx` in Lean's diagnostic axiom print for that unproved declaration; this is not a `sorry` token in the source and is not used in the passing v2 theorem. The v1 source scan found no `sorry`, `admit`, or `native_decide`. The failed result is preserved rather than presented as mathematical evidence against the theorem.

The exact v1 receipt SHA-256 is `cb4c9f19713594ea89e7a76aefc2bea57fc93c8961cde725798c50bf4b5d7015`; the source and compiler-output digests are recorded in [`attempt-v1-failed/failure-summary.json`](attempt-v1-failed/failure-summary.json). No retry was made on v1.

## Claim boundary

This proves a first drop for the stated parity-conditioned families, not global Collatz convergence, not a general descent rule for all inputs, and not novelty or priority. The count is a density of selected periodic residue classes.

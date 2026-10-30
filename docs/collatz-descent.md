# Restricted Collatz descent (optional research appendix)

The [Lean source](../proofs/collatz/CollatzDescent.lean) defines one Collatz step on natural numbers: halve an even number, or take `3n+1` for an odd number. It proves these elementary, partial results:

- For `k > 0`, `4k+1 → 12k+4 → 6k+2 → 3k+1`, and `3k+1 < 4k+1`.
- For `k ≥ 0`, `16k+3 → 48k+10 → 24k+5 → 72k+16 → 36k+8 → 18k+4 → 9k+2`, and `9k+2 < 16k+3` since the difference is `7k+1`.
- For every `n ≥ 2` outside the residue classes `7`, `11`, and `15` modulo `16`, some iterate after **1 to 6 steps** is smaller than `n`. This covers 13 of the 16 classes: eight even classes, four odd classes congruent to `1` modulo `4`, and the class `3` modulo `16`.

These are known, restricted descent calculations. The theorem does **not** show that every trajectory reaches `1`: a decreasing iterate may land in an uncovered class. No novelty or full Collatz convergence claim is made.

## What was checked

The included file is an exact byte copy of the final agent-authored formalization, SHA-256 `f31a3368fcca1b413106dac110300b2adfd10c846f495b83fcd9bfeb5a7add5d`. A saved final Lean 4.33.1 compile exited `0`; its [stdout](../proofs/collatz/CollatzDescent.stdout.txt) SHA-256 is `7b33bdc73b138b5be8d38184d3606915934c1d26d7ddcb1dae61f89884c195d7` and reports only `[propext, Quot.sound]` for all four theorems. The exact [exit-code file](../proofs/collatz/CollatzDescent.exit-code.txt) and [derived receipt metadata](../proofs/collatz/receipt.json) are included. This is a self-recorded local research compile, not a standard M4 receipt or a fresh build of this public checkout. An earlier elaboration failed; the final repaired source and successful receipt are the ones cited here.

The recorded environment used Lean `leanprover/lean4:v4.33.1` and Mathlib revision `0df444a360eaa60ab8c11dca51a86af692955474` from the pinned project package manifest. Its content-addressed compiler image was `sha256:ec3377f34aaf0b83502e6755d5403ca36382adb99e4c7ab1470d42a1ac5abdc7`. The public repository supplies the Lean file, not that image, Mathlib packages, or a compiled cache. To recheck, use a Lake project with that Lean toolchain and Mathlib revision, then run `lake env lean <path-to-CollatzDescent.lean>` from that project's root. The source's `#print axioms` commands print the axiom report.

## Today's bounded provider attempts

The same research session made eight paid model calls through MathCase's separate provider route, costing **$0.003291** in total. These did not produce the four checked theorems above; the formalization was written by a Codex agent and then compiled in Lean.

| Provider model | Calls and target | Recorded result |
| --- | --- | --- |
| `nvidia/Nemotron-3_5-Lightning` | 3: two three-step family attempts, one full Collatz target | All three candidate proofs rejected by Lean. |
| `Qwen/Qwen3-30B-A3B-Instruct-2507` | 2 three-step family attempts | Both candidate proofs rejected by Lean. |
| `deepseek-ai/DeepSeek-V4-Flash-0731` | 3 three-step family attempts | Two initial responses had reasoning text but no proof body, so no Lean candidate. One corrected chat-mode call returned a body; Lean rejected it. |

The final DeepSeek call used `reasoning_effort: none` and `chat_template_kwargs.thinking_mode: chat`. That changed the response channel in this one call, not the proof outcome. Targets, context, and configurations differed across calls, so this small set supports no model ranking. These observations are derived from saved local receipts, which are not part of this appendix. They are separate from the in-app saved prime-divisibility story and are not a standard MathCase benchmark.

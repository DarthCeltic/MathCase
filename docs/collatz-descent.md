# Restricted Collatz descent (optional research appendix)

The [Lean source](../proofs/collatz/CollatzDescent.lean) defines one Collatz step on natural numbers: halve an even number, or take `3n+1` for an odd number. It proves these elementary, partial results:

- For `k > 0`, `4k+1 → 12k+4 → 6k+2 → 3k+1`, and `3k+1 < 4k+1`.
- For `k ≥ 0`, `16k+3 → 48k+10 → 24k+5 → 72k+16 → 36k+8 → 18k+4 → 9k+2`, and `9k+2 < 16k+3` since the difference is `7k+1`.
- For every `n ≥ 2` outside the residue classes `7`, `11`, and `15` modulo `16`, some iterate after **1 to 6 steps** is smaller than `n`. This covers 13 of the 16 classes: eight even classes, four odd classes congruent to `1` modulo `4`, and the class `3` modulo `16`.

These are known, restricted descent calculations. The theorem does **not** show that every trajectory reaches `1`: a decreasing iterate may land in an uncovered class. No novelty or full Collatz convergence claim is made.

## Extended bounded residue result

A separate [Lean file](../proofs/collatz/BoundedResidueDescent.lean) checks a stronger but still elementary partial descent result. Its theorem covers each `n ≥ 2` satisfying one of these residue conditions: even; `1 mod 4`; `3 mod 16`; `11` or `23 mod 32`; or `7`, `15`, or `59 mod 128`. For each such `n`, an iterate after **1 to 11 steps** is strictly smaller than `n`. A second theorem counts exactly **115 of the 128 residue classes** as eligible under those conditions.

This count describes residue classes with a bounded first descent. It does not say that 115 of 128 Collatz trajectories converge, or that any uncovered class never descends. The source is agent-written, and no novelty or full-convergence claim is made. For context on substantially broader partial results, see [Terence Tao's discussion of almost all Collatz orbits](https://terrytao.wordpress.com/2019/09/10/almost-all-collatz-orbits-attain-almost-bounded-values/); the bounded descent result here is not a reproduction of that work.

The extended source SHA-256 is `b7060b2b5c6589495f4cb75cf32fff6df2ad8f6687f9643e9c010066775284c5`. Its saved final Lean 4.33.1 compile exited `0`; the exact [stdout](../proofs/collatz/BoundedResidueDescent.stdout.txt) has SHA-256 `a9bf473f66a22db5aa8824432d42e5a7b8e1b697b91768b48d92da772a111509`. Lean reports `[propext, Quot.sound]` for `bounded_residue_descent` and no axioms for the 115-class count theorem. The exact [exit-code file](../proofs/collatz/BoundedResidueDescent.exit-code.txt) and [derived receipt metadata](../proofs/collatz/bounded-receipt.json) are included. This was a self-recorded local research compile in the same pinned environment described below, not a standard M4 receipt or a fresh build from this public checkout.

## Post-check prior-literature lookup

After the formalization was checked, an operator ran the separate public MathCase Tavily command for Collatz prior literature. It used one Tavily credit and returned two source locators. The [derived lookup record](collatz-prior-literature.json) contains their saved titles and URLs, the query hash, retrieval time, provider request ID, and original result hash. It excludes the query text, snippets, and full provider response. The linked Tao source describes substantially broader known partial results; the lookup did not generate these Lean lemmas, enter the model-attempt contexts, or feed the saved prime-divisibility case. Neither a novel theorem nor a novel formalization is established by this work. Search results do not certify global novelty.

## What was checked

The included file is an exact byte copy of the final agent-authored formalization, SHA-256 `f31a3368fcca1b413106dac110300b2adfd10c846f495b83fcd9bfeb5a7add5d`. A saved final Lean 4.33.1 compile exited `0`; its [stdout](../proofs/collatz/CollatzDescent.stdout.txt) SHA-256 is `7b33bdc73b138b5be8d38184d3606915934c1d26d7ddcb1dae61f89884c195d7` and reports only `[propext, Quot.sound]` for all four theorems. The exact [exit-code file](../proofs/collatz/CollatzDescent.exit-code.txt) and [derived receipt metadata](../proofs/collatz/receipt.json) are included. This is a self-recorded local research compile, not a standard M4 receipt or a fresh build of this public checkout. An earlier elaboration failed; the final repaired source and successful receipt are the ones cited here.

The recorded environment used Lean `leanprover/lean4:v4.33.1` and Mathlib revision `0df444a360eaa60ab8c11dca51a86af692955474` from the pinned project package manifest. Its content-addressed compiler image was `sha256:ec3377f34aaf0b83502e6755d5403ca36382adb99e4c7ab1470d42a1ac5abdc7`. The public repository supplies the Lean file, not that image, Mathlib packages, or a compiled cache. To recheck, use a Lake project with that Lean toolchain and Mathlib revision, then run `lake env lean <path-to-CollatzDescent.lean>` from that project's root. The source's `#print axioms` commands print the axiom report.

## Today's bounded provider attempts

The first research lanes made eight paid model calls through MathCase's separate provider route, costing **$0.003291** in total. These did not produce the independently agent-authored formalizations above, which were subsequently compiled in Lean.

| Provider model | Calls and target | Recorded result |
| --- | --- | --- |
| `nvidia/Nemotron-3_5-Lightning` | 3: two three-step family attempts, one full Collatz target | All three candidate proofs rejected by Lean. |
| `Qwen/Qwen3-30B-A3B-Instruct-2507` | 2 three-step family attempts | Both candidate proofs rejected by Lean. |
| `deepseek-ai/DeepSeek-V4-Flash-0731` | 3 three-step family attempts | Two initial responses had reasoning text but no proof body, so no Lean candidate. One corrected chat-mode call returned a body; Lean rejected it. |

The final DeepSeek call used `reasoning_effort: none` and `chat_template_kwargs.thinking_mode: chat`. That changed the response channel in this one call, not the proof outcome. Targets, context, and configurations differed across calls, so this small set supports no model ranking. These observations are derived from saved local receipts, which are not part of this appendix. They are separate from the in-app saved prime-divisibility story and are not a standard MathCase benchmark.

### Four later strong-model calls

The later bounded window made four more paid calls on the `128k+7` eleven-step family, costing **$0.297401**. Each original provider outcome remained unsuccessful:

| Model and call | Cost | Original outcome |
| --- | ---: | --- |
| `nvidia/Nemotron-3-Ultra-550b-a55b`, initial | $0.042342 | Parser recorded `NO_PROGRESS`; exact proof-body extraction then failed a separate local Lean check. |
| `deepseek-ai/DeepSeek-V4-Pro-0813`, initial | $0.094356 | Lean rejected the candidate. |
| `deepseek-ai/DeepSeek-V4-Pro-0813`, repair call | $0.091514 | Lean rejected the candidate. |
| `nvidia/Nemotron-3-Ultra-550b-a55b`, repair call | $0.069189 | Lean rejected the candidate. |

Across both windows, **12 paid calls cost $0.300692**. The contexts and configurations differ, so these records are not a model ranking. No original model candidate passed Lean.

### Model-proposed candidate, then agent repair

The rejected Pro repair call supplied the arithmetic and parity lemmas `h1` through `h11` for `128k+7 → 81k+5` in eleven steps. A Codex agent retained those lemmas but repaired the final `Nat.rec` composition. The [original rejected checker source](../proofs/collatz/model-pro-repair/original-generated-source.lean), [exact unified diff](../proofs/collatz/model-pro-repair/original-to-agent-repaired.diff), and [agent-repaired source](../proofs/collatz/model-pro-repair/agent-repaired-candidate.lean) make that boundary inspectable. This record is **MODEL_PROPOSED_AGENT_REPAIRED**, not a provider-generated proof pass. The independent 115-of-128 formalization above was agent-authored separately.

The repaired source SHA-256 is `74ce5e658521c51609cd521737641b5f1560b089a36df5d9829c8055b176e9f2`. Its saved pinned Lean compile exited `0`, with `[propext, Quot.sound]` reported; the [final stdout](../proofs/collatz/model-pro-repair/lean-repair-r5-stdout.txt), [exit-code file](../proofs/collatz/model-pro-repair/lean-repair-r5-exit-code.txt), and [derived lineage receipt](../proofs/collatz/model-pro-repair/receipt.json) are included. Compiler warnings about unused simplification arguments remain in the exact stdout. The original provider verdict stays `REJECTED`; this self-recorded agent repair is not a standard M4 result, a fresh public-checkout rebuild, or a novelty claim.

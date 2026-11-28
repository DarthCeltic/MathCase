# MathCase knowledge graph v1

This is a small, machine-readable index connecting a mathematical question to
the evidence that checks it, the method used, and the limit that still applies.
It is deliberately a catalog, not a claim that the cases solve their open
problems. Paths are relative to the MathCase repository root so a stranger can
open the same files from a clean clone.

Validate the file with the standalone command:

```powershell
python scripts/validate_knowledge_graph.py
```

Each edge names its relationship in plain language. A reader can follow a
case node to a receipt or checker, then to the exact bounded result and its
next question. The graph does not replace the case READMEs or their hashes.

## Reviewer quickstart

From a clean MathCase clone, first check the catalog itself:

```powershell
python scripts/validate_knowledge_graph.py
```

Then choose one bounded route. These are the public commands and their honest
scopes:

| Command | What a successful run means |
| --- | --- |
| `python scripts/run_public_case.py collatz-parity-envelope-23-14` | The reviewed 23/14 Lean target replays; it is not Collatz convergence. |
| `python scripts/run_public_case.py geometry-midpoint` | The coordinate midpoint theorem replays under its stated model. |
| `python scripts/run_public_case.py geometry-midpoint-general` | Replays the stronger general-coordinate midpoint theorem and its axiom audit. |
| `python scripts/run_frontier_case.py egyptian-28k-21` | The exact `28k+21` identities check; Erdős–Straus remains open. |
| `python scripts/run_frontier_case.py ramsey-6-6` | The Paley(101) witness and fixed-base checks pass; other 102-vertex graphs are not ruled out. |
| `python scripts/run_frontier_case.py ising-width6` | Replays the finite periodic 6×3 histogram with direct, transfer, and Gray-code checks; it is not a thermodynamic-limit result. |
| `python scripts/run_frontier_case.py ising-width7` | Replays the finite periodic 7×3 histogram with direct and transfer checks; it is not a general Ising theorem. |
| `python scripts/run_frontier_case.py c7-greedy --dry-run` | The bounded C7 search command is registered; a search miss is `UNKNOWN`, not impossibility. |
| `python scripts/run_frontier_case.py c7-multiseed-neighborhood` | Runs the exact conflict-neighborhood continuation from nine checked 367-word seeds; a miss remains `UNKNOWN`. |
| `python -B reproduction/weak-schur-5-candidate-checker-v1/verify_candidate.py candidate.json` | Checks all 10,712 distinct-addend triples in a proposed 208-coloring; a pass would be a witness, while a conflict rules out only that file. |
| `python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-200000-v1/check_theorem39_extended.py --count 200000 --pair-bound 40 --output full-result.json` | Replays Dahan's finite two-parameter criterion on 200,000 eligible primes; it is not an asymptotic or full Erdős–Straus proof. |
| `python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-300000-v1/check_theorem39_extended.py --count 300000 --pair-bound 40 --output full-result.json` | Extends the same finite replay to 300,000 eligible primes; it remains finite arithmetic evidence only. |
| `python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-500000-v1/check_theorem39_extended.py --count 500000 --pair-bound 40 --output full-result.json` | Extends the same finite replay to 500,000 eligible primes; it remains finite arithmetic evidence only. |

Every route writes its own receipt/output directory. The graph and this table
are navigation aids; the linked case README and receipt remain authoritative.

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
| `python scripts/run_frontier_case.py egyptian-28k-21` | The exact `28k+21` identities check; Erdős–Straus remains open. |
| `python scripts/run_frontier_case.py ramsey-6-6` | The Paley(101) witness and fixed-base checks pass; other 102-vertex graphs are not ruled out. |
| `python scripts/run_frontier_case.py c7-greedy --dry-run` | The bounded C7 search command is registered; a search miss is `UNKNOWN`, not impossibility. |

Every route writes its own receipt/output directory. The graph and this table
are navigation aids; the linked case README and receipt remain authoritative.

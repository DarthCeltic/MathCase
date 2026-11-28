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

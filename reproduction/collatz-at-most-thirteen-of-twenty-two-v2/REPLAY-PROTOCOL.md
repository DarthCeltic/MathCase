# Reproduction protocol

This document gives the reproduction conditions for the successful v2 replay.

1. Install Lean 4.33.1 and Python 3. No Mathlib checkout is required.
2. Start with an empty output directory. The runner copies all four `.lean` files into it before compiling.
3. Compile `WordBound`, `WordResidue`, `CountWords`, and `AtMostThirteen22` in that order, one process at a time, with a 60-second cap per module.
4. Require exit code 0 for every module. Check the printed axiom sets for the descent and count theorems; `sorryAx` must not appear.
5. Read the independent integer audit. It checks the binomial residue count, coefficient thresholds for odd counts 0 through 13, and the qualifying starts from 3 through 312.

Run from this directory:

```sh
python verify_at_most_thirteen_22.py --output-dir RUN_DIR
```

The runner makes no model, provider, or search request. It writes compiler output, freshly produced `.olean` hashes, the arithmetic audit, and a receipt into `RUN_DIR`. The reported module times are specific to the machine and whether Lean's own runtime files are already cached.

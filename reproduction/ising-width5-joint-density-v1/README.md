# Periodic width-five Ising finite check

Status: `PASS`, a bounded exact computation only. No network, external dependency, or Lean proof was used.

`check_width5.py` compares two implementations of the joint histogram `(disagreeing bonds, plus spins)` on periodic 5-by-L square grids:

- direct enumeration of every labeled spin assignment, with explicit row-edge checks;
- a separate closed-walk dynamic program over all 32 five-bit column states, using cyclic bit rotation for vertical bonds.

Run from this folder with Python 3:

```powershell
python -B .\check_width5.py --max-seconds 180 --output .\receipt.json
```

From the repository root, the same check is available through the shared
launcher:

```powershell
python -B scripts/run_frontier_case.py ising-width5 --out <new-run-folder>
```

The run completed L=3 and L=4: 32,768 and 1,048,576 assignments, respectively. The direct and transfer histograms matched exactly at both lengths; structural checks passed. A deliberately damaged transfer implementation omitting every vertical bond was rejected at 5x3. Runtime was 6.110329 seconds on the recorded host. The receipt contains each exact histogram, its SHA-256, source hash, timings, and status.

Scope: this checks only these two finite tori. It does not establish a new Ising theorem, thermodynamic-limit behavior, or novelty. The transfer construction follows the established column-state method; this is a wider finite computation than the existing width-four reference, not a new method.


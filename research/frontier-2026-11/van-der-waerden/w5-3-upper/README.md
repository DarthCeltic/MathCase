# Can five colors avoid every three-term progression on 171 positions?

The known 170-position coloring proves W(5,3) ≥ 171. To establish equality at 171, every possible five-coloring on 171 positions must be ruled out. A single avoiding coloring at 171 would instead raise the lower bound to 172.

`python upper.py control` uses Python's standard library. It enumerates every binary coloring on 8 and 9 positions, checks the encoding against a separately written arithmetic-progression detector, and recovers the exact control W(2,3) = 9. Six of 256 rows avoid triples at length 8. None of 512 avoids them at length 9. `elan run leanprover/lean4:v4.33.1 lean SmallExact.lean` independently checks the two sides of this control with the kernel.

`python upper.py encode --cnf five-171.cnf` writes the full five-color formula. Each position gets exactly one color. Each of 7,225 progressions forbids its three positions from all receiving any one color. There are 855 Boolean variables and 38,006 clauses. The formula does not freeze a seed or impose extra symmetries.

An optional search uses the python-sat Glucose 4 backend. With python-sat installed, run `python upper.py probe --seconds 20 --conflicts 4000 --drat-trim /path/to/drat-trim --receipt fresh.json`. The saved run independently checked the small nine-position refutation with DRAT-trim. The unrestricted 171-position probe reached its 20-second limit with no verdict. The exported DIMACS file gives other searches the same starting point. A claimed upper bound requires a checked refutation and scrutiny of the encoding.

The case uses color-count-first notation. [Heule's work on van der Waerden certificates](https://www.cs.cmu.edu/~mheule/publications/JOC_08_03_A01.pdf) · [DRAT-trim verifier](https://github.com/marijnheule/drat-trim)

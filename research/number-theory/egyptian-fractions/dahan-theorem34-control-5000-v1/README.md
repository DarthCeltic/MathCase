# Dahan Theorem 3.4 — bounded `a=1` control

This is a deliberately bounded control for the same 5,000-prime population
used by the sibling Theorem 3.9 replay. It fixes `a=1` and searches only
`1 ≤ u ≤ 40`.

Result: **4,989/5,000 succeeded; 11 had no witness under this `u` cap.**
The eleven bounded-control misses were `409, 577, 5569, 9601, 23929,
57457, 83449, 102001, 329617, 353329, 427249`.

This control is intentionally not the unrestricted Theorem 3.4 claim: a
failure here means only that this bounded `a=1`, `u≤40` search found no row.
The two-parameter Theorem 3.9 replay succeeds on all 5,000 rows with
`u,a≤40`, showing the finite effect of the extra parameter in this sample.

`audit_theorem34_slice.py` independently checks prime order, primality,
divisibility, congruences, reconstruction, and the exact identity for every
successful row. Run:

```powershell
python -B .\check_theorem34_slice_5000.py --count 5000 --u-bound 40 --output result.json
python -B .\audit_theorem34_slice.py .\result.json
```

This is finite, bounded evidence only. It does not prove Erdős–Straus or an
asymptotic statement.

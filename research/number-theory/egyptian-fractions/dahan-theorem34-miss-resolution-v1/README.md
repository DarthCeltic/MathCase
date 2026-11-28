# Resolving the bounded Theorem 3.4 control misses

The sibling bounded control fixed `a=1` and searched `u≤40` on 5,000 primes.
It had 11 misses. This follow-up searches each of those 11 rows exhaustively
over the explicit finite range `1≤u≤n`.

Three rows reappear with larger `u`:

| n | first witness u | s | v | alpha |
|---:|---:|---:|---:|---:|
| 57457 | 78 | 311 | 185 | 1 |
| 353329 | 50 | 1599 | 221 | 8 |
| 427249 | 131 | 2095 | 204 | 4 |

Eight rows still have no witness in the searched range:
`409, 577, 5569, 9601, 23929, 83449, 102001, 329617`.

`audit_resolved_misses.py` independently enumerates divisors and checks all
11 rows. This is a finite capped search result, not a proof that those eight
integers have no witness for larger `u`, and not a proof of Erdős–Straus.

```powershell
python -B .\resolve_theorem34_misses.py
python -B .\audit_resolved_misses.py .\result.json
```

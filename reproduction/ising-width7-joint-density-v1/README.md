# Periodic 7x3 Ising joint histogram

Status: `PASS_EXACT_FINITE_CHECK` for one periodic 7-by-3 square-lattice torus.

The run enumerated all 2,097,152 labeled assignments in Gray-code order, updating the four bonds incident to each flipped spin. It independently computed the full joint histogram by summing closed walks through seven columns with eight possible three-spin column states. The exact `(broken bonds, up spins)` histograms agreed. A damaged transfer calculation that omitted vertical bonds disagreed and was rejected.

The fixed-up-spin screen uses naturally spaced even broken-bond counts. Leading and trailing zero bins are trimmed; interior zero bins are retained. For each up-spin count, log-concavity means `c[k]^2 >= c[k-1]*c[k+1]` at every interior bin. The profiles fail for up-spin counts 4 through 17; counts 0 through 3 and 18 through 21 pass. The first failure is at four up spins: counts at 8, 10, and 12 broken bonds are `63, 315, 1680`, and `315^2 = 99,225 < 63*1,680 = 105,840`.

## Reproduce

Requires Python 3 and no third-party packages. From this folder:

```powershell
python -B .\check_width7x3.py --max-seconds 180 --output .\receipt.json
```

The measured run took 1.911 seconds total (1.884 seconds direct enumeration, 0.015 seconds transfer). The 180-second cap is enforced by periodic checks during direct enumeration and transfer. No network or model calls were made.

## Limits

This is an exact finite computation for this one torus and a finite set of fixed-up-spin profiles. It is not a general Ising result, a thermodynamic-limit claim, or a novelty/priority claim. The log-concavity test follows the same convention as the existing finite width-six check.

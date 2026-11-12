# Third bounded `n = 1 mod 12` residual range

This tranche scans the disjoint interval `200001 <= d <= 300000`, with
`n=12d+1` and `q=(n+3)/4`. It keeps only candidates for which neither `n`
nor `q` has a prime factor congruent to 2 modulo 3, the residual condition
outside the previously recorded factor-conditioned family.

The exact rational search found representations for all 9,737 residual
candidates. The first-denominator offset bound was 4,096: 9,481 cases were
resolved within the initial offset 256 and 256 additional cases were resolved
through offset 4,096. No candidate remained unresolved within this bound.

The receipt is `range-receipt-h4096.json`, SHA-256
`dce5d4d9cb1e1564e5a87650906c0688e530f79b76737042f3cf5c60277426c8`.
It binds the candidate and result digests and the exact search scripts,
classifier, and family note. The run records zero network, model, and provider
calls.

Together with the preceding disjoint tranches, exact representations are now
recorded for all 30,961 factor-conditioned residual candidates among the first
300,000 `d` values. This is finite computational evidence only; it does not
prove the full Erdős–Straus conjecture or make a novelty claim.

Reopen the saved receipt without overwriting it, then run the focused tests:

```powershell
python -c "import json; from pathlib import Path; from scripts.search_egyptian_fraction_n1mod12_range_v2 import verify_receipt; receipt=json.loads(Path(r'research/number-theory/egyptian-fractions/n1-mod12-range-200001-300000-v1/range-receipt-h4096.json').read_text(encoding='utf-8')); verify_receipt(receipt); print('receipt reopened')"
python -m unittest scripts.test_egyptian_fraction_n1mod12_range_v2 -v
```

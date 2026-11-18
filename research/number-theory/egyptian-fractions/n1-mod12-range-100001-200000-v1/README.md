# Second bounded `n = 1 mod 12` residual range

This tranche scans the disjoint interval `100001 <= d <= 200000`, with
`n=12d+1` and `q=(n+3)/4`. It keeps only candidates for which neither `n`
nor `q` has a prime factor congruent to 2 modulo 3, the residual condition
outside the previously recorded factor-conditioned family.

The h=256 search found 9,777 exact strict triples among 10,068 residual
candidates. Continuing only those misses through first-denominator offset
4,096 found 290 more; the sole remaining input was `n=1609969`. Its next
bounded offset interval, 4,097 through 65,536, found a strict exact witness
at offset 4,452:

```text
4/1609969 = 1/406945 + 1/36784506 + 1/14509369013376930.
```

The range receipt is `range-receipt-h4096.json`, SHA-256
`ca91d87e0e721e14afdc0b9d00b232593eae6655e63318e1fb451b336a5bbf2a`.
The one-input extension receipt is `residual-1609969-offset-65536.json`,
SHA-256 `962fe144cd9cc747e5c6ba248cbfff52d6e31d2afc185db665ef3211f7c77b86`.
Both bind their input and implementation hashes, use exact arithmetic, and
record zero network, model, and provider calls.

Together with the earlier `d=1..100000` tranche, this gives exact
three-term representations for all 21,224 factor-conditioned residuals in
the first 200,000 `d` values. The methods have bounded first-denominator
offsets and one exhaustive fixed-input check from the first tranche. This is
finite computational evidence; it does not prove the full Erdős–Straus
conjecture, claim novelty, or establish representations outside the tested
intervals.

Reopen the range search and its focused tests with:

```powershell
python scripts/search_egyptian_fraction_n1mod12_range.py `
  --start-d 100001 --cases 100000 --max-total-offset 4096 `
  --output research/number-theory/egyptian-fractions/n1-mod12-range-100001-200000-v1/range-receipt-h4096.json
python -m unittest scripts.test_egyptian_fraction_n1mod12_range -v
```

Reopen the final bounded extension and receipt with:

```powershell
python scripts/extend_egyptian_fraction_single_residual.py `
  --max-total-offset 65536 `
  --output research/number-theory/egyptian-fractions/n1-mod12-range-100001-200000-v1/residual-1609969-offset-65536.json
python -m unittest scripts.test_egyptian_fraction_single_residual_extension -v
```

## Machine-readable witness stream

The companion [witness-stream-r1.md](witness-stream-r1.md) and `witness-stream-r1/` directory preserve every candidate and bounded result for this interval. The independent stream verifier checks candidate coverage and all 10,067 exported witness triples. One candidate remains not found within offset 4,096; its separate extension receipt records an exact witness at offset 4,452.

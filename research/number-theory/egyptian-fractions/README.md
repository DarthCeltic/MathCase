# Bounded Erdős–Straus witness campaign

MathCase checked exact finite Egyptian-fraction witnesses for a filtered set of integers through `d = 10,000,000`. This is a reproducible computation record, not a proof of the full Erdős–Straus conjecture.

For each recorded candidate `n`, the bundle supplies positive integers `x < y < z` and verifies the exact identity

`4xyz = n(xy + xz + yz)`,

which is equivalent to `4/n = 1/x + 1/y + 1/z`. The search here uses `n = 12d + 1` and a factor-based filter on `n` and `q = (n + 3)/4`. It is not a search over every positive integer and does not settle the conjecture.

## What is included

- 100 contiguous 100,000-value denominator-parameter ranges, from `d = 1` through `d = 10,000,000`.
- The candidate, result, witness, run-manifest, and verification-receipt files for each range.
- Saved bounded-extension receipts for every base-search miss. The extension cap is 65,536; all 427 misses were resolved within that cap in the recorded data.
- The progress binding and exact versioned search/export/checker scripts needed by the run manifests.
- The aggregate audit output in `campaign-v9-10m-audit-v1/`.

The aggregate audit checked 831,860 candidate rows and 831,860 exact identities across the 100 ranges. It found zero unresolved items in this filtered set. The largest recorded first-denominator offset was 35,498, leaving 30,038 below the fixed 65,536 cap. These are finite observed bounds only.

The range maxima show a noisy upward association over the full interval (Pearson `r = 0.267`, `R² = 0.072`); within the v9 interval alone the association is much smaller (`r = 0.067`). This does not provide a bound beyond `d = 10,000,000`. The recorded data did not establish a new parameterized identity family.

## Recheck from a fresh checkout

Run from the repository root with Python 3:

```sh
python scripts/audit_egyptian_fraction_campaign_v9.py --output-dir ./audit-output
python -m unittest discover -s scripts -p "test_verify_egyptian_fraction_witness_stream_v*.py"
python -m unittest discover -s scripts -p "test_extend_egyptian_fraction_witness_stream_v*.py"
```

`audit-output` must not already exist. The aggregate audit rechecks the progress binding, every range manifest and stream hash, the saved extension bindings, candidate coverage, row counts, offsets, and exact identities. It does not repeat the original range searches.

## Scope and limits

This campaign reports finite witnesses for the stated factor-conditioned candidate set. It does not prove a witness exists for every positive integer, prove a general decomposition identity, or solve the Erdős–Straus conjecture. The results are not compared numerically with the separate published prime search through `10^18`, which uses a different population and measurement.

Provider/model/search API calls: zero. GPU: unused. External spend: $0.

For the one historical range-cap failure whose stderr transcript contained a local absolute path, the public copy preserves the error and stack shape while omitting only that environment-specific path. The source/public hashes and handling are recorded in `PUBLIC_DATA_NOTES.md`.

## Separate prime-denominator window result

The independent [`centered-window-v1`](centered-window-v1/README.md) package
studies distinct triples for prime `p` near the least possible largest
denominator. Its exact centered classification and strict uniqueness bound
are separate from the bounded residual witness campaign summarized above.

## Separate Dahan Theorem 3.9 replay

The [`dahan-theorem39-replay-v1`](dahan-theorem39-replay-v1/README.md)
package replays the first 1,000 primes in the `n ≡ 1 (mod 24)` class. The
independent [`dahan-theorem39-extension-5000-v1`](dahan-theorem39-extension-5000-v1/README.md)
package extends that same finite test to 5,000 consecutive primes, with its
full rows and independent audit. Both are finite evidence only; neither is an
asymptotic result or a proof of Erdős–Straus.

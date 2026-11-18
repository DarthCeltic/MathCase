# Erdos-Straus bounded campaign through d=10,000,000

The 50 v9 ranges from d=5,000,001 through 10,000,000 are complete. Across the audited baseline and v9 streams, **831,860 factor-conditioned candidates** have **831,860 checked finite witnesses**. No candidate remains unresolved after the recorded bounded extensions.

The v9 lane added 399,327 candidates. Its 234 base-search misses all resolved within the fixed 65,536 offset cap. This is finite evidence for the filtered set only; the full Erdős-Straus conjecture remains unsolved and no novelty claim is made.

## First-denominator offset distribution

The following distribution includes all base and extension witnesses across d=1..10,000,000, including the one selected exhaustive n=193 resolution at offset 1.

| Offset | Witnesses | Share |
|---:|---:|---:|
| 0-8 | 391,433 | 47.055% |
| 9-16 | 142,479 | 17.128% |
| 17-32 | 120,148 | 14.443% |
| 33-64 | 76,813 | 9.234% |
| 65-128 | 49,854 | 5.993% |
| 129-256 | 28,476 | 3.423% |
| 257-512 | 13,731 | 1.651% |
| 513-1024 | 5,703 | 0.686% |
| 1025-2048 | 2,043 | 0.246% |
| 2049-4096 | 754 | 0.091% |
| 4097-8192 | 337 | 0.041% |
| 8193-16384 | 66 | 0.008% |
| 16385-32768 | 22 | 0.003% |
| 32769-65536 | 1 | 0.000% |

Stages: 0–256: 809,203; 257–4,096: 22,231; 4,097–65,536: 426.

The largest offset across all ranges is **35,498** at n=16,459,249, in d=1,300,001–1,400,000. That leaves 30,038 below the 65,536 cap (1.85 times the observed maximum). The v9-only peak is 30,063 at n=64,272,289; the final 100k range peaked at 10,359.

Per-range maxima are a noisy upward association: overall Pearson r=0.267 (R²=0.072); v9-only r=0.067. This describes the sample through 10M and is not a bound beyond it.

| d block | ranges | mean maximum | median maximum | peak maximum | n at peak |
|---:|---:|---:|---:|---:|---:|
| 1–500,000 | 5 | 7,606.6 | 4,452 | 17,277 | 5,309,329 |
| 500,001–1,000,000 | 5 | 7,763.8 | 7,467 | 12,063 | 10,349,089 |
| 1,000,001–1,500,000 | 5 | 13,748.4 | 8,871 | 35,498 | 16,459,249 |
| 1,500,001–2,000,000 | 5 | 9,749.2 | 8,637 | 17,463 | 21,687,649 |
| 2,000,001–2,500,000 | 5 | 6,525.0 | 5,417 | 11,517 | 26,204,161 |
| 2,500,001–3,000,000 | 5 | 10,491.8 | 7,238 | 22,053 | 34,586,161 |
| 3,000,001–3,500,000 | 5 | 9,023.4 | 7,431 | 17,096 | 38,651,089 |
| 3,500,001–4,000,000 | 5 | 12,190.6 | 11,677 | 18,086 | 43,256,929 |
| 4,000,001–4,500,000 | 5 | 6,274.4 | 5,499 | 8,708 | 48,539,089 |
| 4,500,001–5,000,000 | 5 | 10,139.2 | 5,805 | 24,111 | 55,011,889 |
| 5,000,001–5,500,000 | 5 | 16,119.0 | 13,777 | 30,063 | 64,272,289 |
| 5,500,001–6,000,000 | 5 | 8,632.2 | 9,292 | 10,388 | 69,072,721 |
| 6,000,001–6,500,000 | 5 | 14,189.2 | 10,808 | 25,805 | 72,607,441 |
| 6,500,001–7,000,000 | 5 | 11,910.6 | 11,258 | 19,887 | 78,127,921 |
| 7,000,001–7,500,000 | 5 | 10,798.0 | 11,019 | 16,563 | 89,548,369 |
| 7,500,001–8,000,000 | 5 | 14,423.8 | 10,883 | 28,553 | 95,433,361 |
| 8,000,001–8,500,000 | 5 | 11,288.4 | 7,575 | 22,587 | 100,781,521 |
| 8,500,001–9,000,000 | 5 | 13,365.6 | 12,638 | 22,857 | 103,205,281 |
| 9,000,001–9,500,000 | 5 | 14,200.0 | 13,208 | 23,397 | 108,139,201 |
| 9,500,001–10,000,000 | 5 | 14,598.2 | 14,081 | 19,518 | 114,242,881 |

## Candidates needing extension

There were 427 base misses across the 5M and 10M checkpoints: 193 in baseline and 234 in v9. All have saved exact resolutions. Their n factor shapes are {'composite': 4, 'prime': 131, 'prime_power': 292}; n mod 72 counts are {'1': 150, '25': 137, '49': 140}; q mod 24 counts are {'1': 115, '13': 122, '19': 94, '7': 96}. The misses vary in factor shape and residue finer than mod 24, so this sample does not expose one additional rule that covers them all.

All misses have n mod 24 distribution {'1': 427}. That residue is imposed by this factor-conditioned candidate construction, so it does not distinguish the hard cases from the candidate pool. These are observed finite patterns, not a theorem.

## Family watch

This lane covers n=1 mod 12 with neither n nor q=(n+3)/4 having a prime factor congruent to 2 mod 3. Its candidate stream is the n=1 mod 24 residual subset outside the known unconditional n=1 mod 4 constructions; the same factor filter excludes the conditional Family D cases. The data did not establish a new parameterized identity. Even n and n=3 mod 4 are outside this campaign.

## Audit scope

The aggregate audit passed for 100 ranges, 831,860 candidate/result rows, and 831,860 exact identity rows including extensions. It checked manifest, verifier receipt, stream, extension, replay and progress bindings; see aggregate-audit-v1.json and per-range-maxima.csv.

The ten M0 items still await Ryan. Collatz, transfer comparison, and research-controller work remain untouched. No dossier gate was promoted. Provider/model/search API calls: 0. GPU: unused. External spend: $0.

Audit UTC: 2026-11-13T15:14:52Z. Progress input SHA-256: bca32e409d5cc00588a3e8cba1f5e2ebec8a8bddf7326189567b33560163a2c3.

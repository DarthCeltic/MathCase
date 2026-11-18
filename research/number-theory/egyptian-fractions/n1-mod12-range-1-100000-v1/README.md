# First bounded `n = 1 mod 12` residual range

This tranche records the factor-conditioned candidates over `1 <= d <= 100000`
(`13 <= n <= 1,200,001`, `n=12d+1`). The exact witness bundle and independent
verification receipt are in [`witness-stream-r1` bundle and receipts](witness-stream-r1/).

All 11,156 residual candidates are accounted for: 11,155 have exact triples
within the registered first-denominator offset bound 4,096. `n=193` is marked
`NOT_FOUND_WITHIN_BOUND` by that search; a separate exact enumeration receipt
records six valid triples for it. This distinction is preserved in the data.

This is finite evidence only and does not prove or settle the full
Erdos-Straus conjecture. The exact run records zero network, provider, model,
and GPU use.

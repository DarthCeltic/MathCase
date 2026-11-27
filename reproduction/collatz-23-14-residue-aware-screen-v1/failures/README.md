# Preserved failed approaches — 2026-11-27

- `LeanResidueSmoke_incorrect_residue_recurrence.lean`: used `2*r-1` for an odd prefix without multiplying by the inverse of 3. On the `h=11` worst-mask example it computed residue 5,592,413 instead of 3. The sample kernel check also hit Lean's default recursion limit. Do not use this recurrence.
- `LeanResidueSmoke_incorrect_inverse_and_timeout.lean`: used 5,592,405 as the inverse of 3 modulo 2^23; Lean rejected the identity. The corrected inverse is 2,796,203. Its 4,096-mask proof also hit the default heartbeat limit.
- `test_envelope_naive_assumption_failed.py`: assumed the coefficient-only maximum would make all 15 sufficient inequalities positive. It correctly failed at `h=4`; the coefficient-only approach passes only h=0..3.

These failures were preserved as source and were not silently rewritten into passing results.

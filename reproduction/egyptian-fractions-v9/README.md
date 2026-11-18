# Public Erdős–Straus file inventory

`inventory.json` lists the SHA-256 and byte count for each included campaign data file and source/verification script. It excludes itself. The sanitized legacy failure transcript also carries the SHA-256 of the private original in its entry, documented at the data root.

From the repository root, run:

```sh
python scripts/verify_egyptian_fraction_public_inventory.py
python scripts/audit_egyptian_fraction_campaign_v9.py --output-dir ./audit-output
python -m unittest discover -s scripts -p "test_verify_egyptian_fraction_witness_stream_v*.py"
python -m unittest discover -s scripts -p "test_extend_egyptian_fraction_witness_stream_v*.py"
```

The aggregate audit is the substantive data check; the inventory verifier confirms the public payload has not changed. The audit does not rerun the searches. No provider/model/search API is needed.

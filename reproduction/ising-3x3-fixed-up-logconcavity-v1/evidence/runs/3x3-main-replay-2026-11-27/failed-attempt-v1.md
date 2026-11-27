# Preserved failed release attempt

The first public-clone invocation of the documented checker exited 1 before writing a receipt. The source had just added a `checker_sha256` field, but passed raw source bytes to the JSON-object digest helper. Python raised `TypeError: Object of type bytes is not JSON serializable` while constructing the receipt.

This was a packaging/checker bug, not a mathematical mismatch. The fix adds a separate byte digest helper and changes only that field. The corrected command is rerun in the same run directory; this failure remains preserved.

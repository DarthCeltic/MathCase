# Reproduction conditions for the preserved v1 attempt

The failed v1 attempt used Lean 4.33.1 core, copied its four `.lean` modules to a new output directory, compiled the modules in dependency order, and ran the independent integer audit. Each module had a 60-second cap; the run was not retried. The bound source and runner hashes are recorded in the protocol-bound attempt summary.

The `AtMostThirteen22` source failed to elaborate. Its source and failure summary are preserved here so the proof-term error can be inspected. This failure was repaired in the separate v2 source; it is not evidence that the statement is false.

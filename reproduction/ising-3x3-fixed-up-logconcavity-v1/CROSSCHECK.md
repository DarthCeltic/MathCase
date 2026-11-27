# Verification notes

The result is checked in two independent ways inside the executable:

1. Enumerate every 9-bit spin assignment, construct the explicit 18-edge periodic graph, and count broken edges at each fixed up-spin count.
2. Expand a cyclic 8-state column transfer dynamic program and require its full joint table to equal the explicit table.

The checker also verifies the 18-edge count, every binomial row total, a positive log-concavity control, and a deliberately damaged interior-zero control. The saved receipt reports the complete profiles and all control outcomes.

The inequality that matters is a positive-middle failure, not a zero-bin artifact:

```text
c(8) = 45, c(10) = 36, c(12) = 45
36^2 = 1296 < 2025 = 45*45
```

# Lean replay for the centered window

`CenteredWindow.lean` imports the already merged `PrimeBand.lean` from the
sibling `prime-envelope-v1/lean/` package. It formalizes the exact center iff,
the modulo-eight equation that restricts the center to one class modulo four,
uniqueness among centers `B` through `B+3` under the strict width condition,
and the boundary counterexample. The boundary theorem includes kernel-checked
primality of 25121 by testing all potential divisors through 158 and proving
the needed gcd implication.

The formalization uses only Lean `Std`. It has no `sorry`, `unsafe`, or
`native_decide`. `CheckCentered.lean` prints the axiom dependencies for the
four public theorems; they should each be `[propext, Classical.choice,
Quot.sound]`.

## Reproduce in PowerShell

Use the pinned Lean 4.33.1 toolchain. From this directory:

```powershell
$build = Join-Path $env:TEMP 'mathcase-centered-window-lean'
New-Item -ItemType Directory -Force -Path $build | Out-Null
$env:LEAN_PATH = $build
lean --version
lean -o (Join-Path $build 'PrimeBand.olean') ..\..\prime-envelope-v1\lean\PrimeBand.lean
lean -o (Join-Path $build 'CenteredWindow.olean') CenteredWindow.lean
lean CheckCentered.lean
leanchecker -v CenteredWindow
```

The output directory keeps generated `.olean` files outside the checkout. The
two imports are the first-band formalization and this package's centered
module; no two-diagonal module is involved.

# Preserved preflight failures — M31 step 34

These are setup/test failures from preparing the step-34 package. They occurred before either arithmetic pass began. They are retained so the passing run does not erase the debugging history.

1. Package-generation guard rejected an incomplete parent-path migration:

   `AssertionError: unconverted step-32/33 identifier in scripts/audit_collatz_m31_first_descent_through_thirtyfourth_v1.py: ['m31-residual-first-descent-through-thirtysecond-v1']`

   The parent path was corrected to the pinned step-33 package.

2. First focused-test run exited 1 because a test loaded the step-33 primary instead of the new step-34 primary:

   `ValueError: step-32 parent must contain bins 1..32`

   The test import and parent-history range were corrected.

3. Second focused-test run exited 1 because the copied parent-source binding still named the step-32 primary:

   `ValueError: step-33 primary source binding mismatch`

   The parent-source binding was corrected to the exact step-33 source. The subsequent focused test passed all six checks, including parent receipt and input-hash validation. No arithmetic was run during these failures.

4. The first package text-hygiene check exited 1 because `README.md`, `protocol.md`, and `verification-protocol.md` used CRLF where `.gitattributes` requires LF. The exact protocol bytes bound by the already completed primary and independent attempts were copied to `run-1/protocol-input-crlf.bin` and `verification-run-1/verification-protocol-input-crlf.bin`; their SHA-256 values remain `85d2d3ea599ba03928a4c19eaa8640dec6b5c5c0767eeb8846321bf1dbcd307a` and `77b4326698ee7ea6d57b2eb51b9614356dcd8a462dcf6a73a8841f0ee8cb9e1b`. The Markdown working copies were normalized to LF after those exact bytes were archived. The v1 run outputs are unchanged, but the package is not qualified for commit because its original input paths no longer carry the bytes named by the receipts.

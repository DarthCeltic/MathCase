# CRLF input binding addendum — M31 step 34

The original step-34 runs used CRLF protocol bytes. Those exact bytes are preserved as `run-1/protocol-input-crlf.bin` and `verification-run-1/verification-protocol-input-crlf.bin`; this addendum binds them to the existing receipts without rerunning any calculation.

- Primary input: SHA-256 `85d2d3ea599ba03928a4c19eaa8640dec6b5c5c0767eeb8846321bf1dbcd307a`; equals the `protocol_sha256` field in the primary attempt record.
- Independent verification input: SHA-256 `77b4326698ee7ea6d57b2eb51b9614356dcd8a462dcf6a73a8841f0ee8cb9e1b`; equals the `verification_protocol_sha256` field in both the verifier start and receipt.
- The current `protocol.md` and `verification-protocol.md` files are LF-normalized documentation derivatives and are not the original run inputs.

This resolves the byte-provenance ambiguity only. The existing CRLF text-hygiene failure remains in `preflight-failures.md`, and no mathematical calculation, result, or Lean claim is upgraded by this addendum.

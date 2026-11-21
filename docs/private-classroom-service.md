# Private classroom service (local-first prototype)

The private classroom command is a separate self-hosted option alongside the static file handoff.

## Start it

Run go run ./cmd/mathcase classroom-serve. By default it listens only on 127.0.0.1:55136 and stores its JSON database and one-time teacher setup token under the current user's MathCase configuration directory. The server prints the token file path, not the token itself. Open that token file locally to create the first teacher account. After setup, delete the token file yourself; the server has already consumed the token.

To use a different private data root, pass --data and --bootstrap-token-file. Do not put either file under the Git checkout. The database contains password hashes, assignments, and learner submissions. Keep its parent directory private and back it up using the host's normal encrypted backup process.

The server refuses cleartext binding to a non-loopback address. Sharing over a private network requires a valid HTTPS certificate and key with --tls-cert and --tls-key. Do not expose the service directly to the public internet.

## Workflow and limits

The first teacher can create separate learner accounts, issue assignments, and review submissions. Learners see only their own assignments and can submit work only to those assignments. The store persists user, assignment, and submission records across server restarts. Session cookies are HTTP-only, SameSite Strict, CSRF-bound, and kept in memory; a server restart signs everyone out.

Passwords are stored as salted PBKDF2-HMAC-SHA256 hashes. The service has request-size limits, bounded local sign-in throttling, strict same-origin checks, and no external scripts, APIs, model calls, email, or hosted storage. It has no password-reset workflow, multi-teacher administration, organization-grade audit log, account recovery, or independent penetration test. Treat it as a local prototype until those needs are addressed.

Assignment statements and Lean targets are teacher-provided text. This service does not compile Lean, check a proof, or create a MathCase evidence receipt.

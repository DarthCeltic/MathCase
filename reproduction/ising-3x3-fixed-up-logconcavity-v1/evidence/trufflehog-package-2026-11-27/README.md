# Package secret scan

The exact release package was scanned with the pinned TruffleHog image before publication preparation. The scanner ran with network disabled and a read-only package mount. It exited 0 with zero verified and zero unverified findings.

The first direct invocations hung at the host wrapper and were not treated as passes. The controlled invocation recorded here exited normally; those wrapper observations did not alter the package or scanner settings.

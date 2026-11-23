"""Check four immutable source references for MathCase's external RH case."""

import hashlib
import json
import sys
import urllib.request
from dataclasses import dataclass
from datetime import datetime, timezone


@dataclass(frozen=True)
class Reference:
    role: str
    url: str
    size: int
    digest: str


RAW = "https://raw.githubusercontent.com/leanprover-community/"
MATHLIB = RAW + "mathlib4/0df444a360eaa60ab8c11dca51a86af692955474/"
ORIGINAL = RAW + "riemann-hypothesis/40e56bab026552e089d7afcfeff08d2defb9c005/"
CHALLENGE = RAW + "riemann-hypothesis/0df13c6021f92a746687929a26f1b6dc286aef09/"

REFERENCES = (
    Reference("Mathlib target definition", MATHLIB + "Mathlib/NumberTheory/LSeries/RiemannZeta.lean",
              12306, "db9f37f08bcce379c502549f604c0e98bf4a39b3a3440606861bbac847f2a1a9"),
    Reference("Community challenge statements", CHALLENGE + "src/Challenge.lean",
              1222, "a3cebbf30be6b9268a0ed413c9bbc256dfa9f4bfa04f1a75f144d135da5e21a5"),
    Reference("Alpöge's original proof entry point", ORIGINAL + "src/Main.lean",
              433, "017645ca448f2fd1f6fd5c4c2cb2c6e96e472725be13f6e180ca6e1574360939"),
    Reference("Community comparator configuration", CHALLENGE + "comparator.json",
              460, "8ea890e6ccda9cf3983ada343af18a41d12542036875a3936e7925ed5b1582ff"),
)


def fetch(reference):
    request = urllib.request.Request(reference.url, headers={"User-Agent": "MathCase-source-check"})
    with urllib.request.urlopen(request, timeout=15) as stream:
        if stream.status != 200 or stream.geturl() != reference.url:
            raise ValueError("Unexpected HTTP status or redirect")
        # One extra byte suffices to reject an oversized body.
        return stream.read(reference.size + 1)


def check(reference, fetch_bytes):
    row = {"role": reference.role, "url": reference.url,
           "expected_bytes": reference.size, "expected_sha256": reference.digest}
    try:
        content = fetch_bytes(reference)
    except (OSError, ValueError) as error:
        row.update(status="UNAVAILABLE", reason=str(error))
        return row
    digest = hashlib.sha256(content).hexdigest()
    matches = len(content) == reference.size and digest == reference.digest
    row.update(status="MATCH" if matches else "MISMATCH",
               bytes_read=len(content), observed_sha256=digest)
    return row


def main():
    files = [check(reference, fetch) for reference in REFERENCES]
    passed = all(row["status"] == "MATCH" for row in files)
    print(json.dumps({
        "case": "riemann-hypothesis-external",
        "operation": "pinned_source_byte_identity",
        "checked_utc": datetime.now(timezone.utc).isoformat(),
        "status": "ALL_PINNED_SOURCES_MATCH" if passed else "INCOMPLETE_OR_MISMATCH",
        "proof_replayed_by_this_check": False,
        "statement_elaborated_by_this_check": False,
        "files": files
    }, ensure_ascii=True, indent=2))
    return 0 if passed else 1


if __name__ == "__main__":
    sys.exit(main())

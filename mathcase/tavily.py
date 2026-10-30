"""One explicit, bounded Tavily search for an operator-supplied statement.

Adapted from the private Case Desk's basic-search transport. This standalone
public route does not read cases, write a ledger, or feed proof verification.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import math
import os
import sys
import urllib.error
import urllib.request
from datetime import datetime, timezone
from pathlib import Path
from typing import Mapping, Sequence, TextIO
from urllib.parse import urlsplit


SEARCH_URL = "https://api.tavily.com/search"
MAX_STATEMENT_CHARS = 400
MAX_STATEMENT_FILE_BYTES = 4096
MAX_RESPONSE_BYTES = 1_000_000
MAX_RESULTS = 6
TIMEOUT_SECONDS = 8


class TavilySearchError(ValueError):
    """A safe, user-facing refusal without provider response text or secrets."""


def _statement_text(statement: str) -> str:
    if not isinstance(statement, str):
        raise TavilySearchError("statement must be text")
    text = statement.strip()
    if not text:
        raise TavilySearchError("statement must not be empty")
    if len(text) > MAX_STATEMENT_CHARS:
        raise TavilySearchError(f"statement exceeds {MAX_STATEMENT_CHARS} characters")
    if any(ord(char) < 32 or ord(char) == 127 for char in text):
        raise TavilySearchError("statement must be a single line without control characters")
    return text


def _http_message(status: int) -> str:
    messages = {
        401: "Tavily rejected TAVILY_API_KEY",
        429: "Tavily rate limit reached",
        432: "Tavily plan usage limit reached",
        433: "Tavily pay-as-you-go limit reached",
    }
    if type(status) is not int or not 100 <= status <= 599:
        return "Tavily returned an invalid HTTP status"
    return messages.get(status, f"Tavily returned HTTP {status}")


def _source_url(value: object) -> bool:
    if not isinstance(value, str) or len(value) > 2000:
        return False
    if any(ord(char) <= 32 or ord(char) == 127 for char in value):
        return False
    try:
        parsed = urlsplit(value)
        return (
            parsed.scheme in {"http", "https"}
            and bool(parsed.hostname)
            and parsed.username is None
            and parsed.password is None
        )
    except ValueError:
        return False


def search_statement(
    statement: str,
    *,
    environ: Mapping[str, str] | None = None,
    opener=urllib.request.urlopen,
) -> dict[str, object]:
    """Search the exact supplied statement once; return bounded reference data.

    No retry, cache, provider fallback, or automatic result persistence occurs.
    The caller must supply a key through TAVILY_API_KEY in its environment.
    """
    query = _statement_text(statement)
    environment = os.environ if environ is None else environ
    api_key = environment.get("TAVILY_API_KEY", "").strip()
    if not api_key:
        raise TavilySearchError("set TAVILY_API_KEY before starting a search")
    if api_key in query:
        raise TavilySearchError("statement must not contain TAVILY_API_KEY")

    payload = json.dumps(
        {
            "query": query,
            "search_depth": "basic",
            "max_results": MAX_RESULTS,
            "include_answer": False,
            "include_raw_content": False,
            "include_images": False,
            "include_usage": True,
        }
    ).encode("utf-8")
    request = urllib.request.Request(
        SEARCH_URL,
        data=payload,
        headers={
            "Authorization": f"Bearer {api_key}",
            "Content-Type": "application/json",
        },
        method="POST",
    )
    try:
        with opener(request, timeout=TIMEOUT_SECONDS) as response:
            status = response.status
            raw = response.read(MAX_RESPONSE_BYTES + 1)
    except urllib.error.HTTPError as exc:
        exc.close()
        raise TavilySearchError(_http_message(exc.code)) from None
    except TimeoutError:
        raise TavilySearchError("Tavily search timed out; usage may be uncertain") from None
    except Exception:
        # Provider or transport exception text can contain the Authorization header.
        raise TavilySearchError("Tavily search failed; usage may be uncertain") from None

    if status != 200:
        raise TavilySearchError(_http_message(status))
    if len(raw) > MAX_RESPONSE_BYTES:
        raise TavilySearchError("Tavily response exceeded the size limit")
    try:
        data = json.loads(raw.decode("utf-8"))
        if not isinstance(data, dict) or not isinstance(data.get("results"), list):
            raise ValueError
    except (UnicodeDecodeError, json.JSONDecodeError, ValueError, AttributeError):
        raise TavilySearchError("Tavily returned an unreadable response") from None

    usage = data.get("usage")
    credits = usage.get("credits") if isinstance(usage, dict) else None
    if type(credits) is not int or credits != 1:
        raise TavilySearchError("Tavily did not confirm one-credit basic-search usage")

    results: list[dict[str, object]] = []
    for item in data["results"][:MAX_RESULTS]:
        if not isinstance(item, dict):
            continue
        title, url = item.get("title"), item.get("url")
        if not isinstance(title, str) or not title.strip() or not _source_url(url) or api_key in url:
            continue
        score = item.get("score")
        if (
            isinstance(score, bool)
            or not isinstance(score, (int, float))
            or not math.isfinite(score)
            or not 0 <= score <= 1
        ):
            score = None
        snippet = item.get("content")
        results.append(
            {
                "title": title.replace(api_key, "[redacted]")[:300],
                "url": url,
                "score": score,
                "snippet": snippet.replace(api_key, "[redacted]")[:1200] if isinstance(snippet, str) else "",
            }
        )

    request_id = data.get("request_id")
    if not isinstance(request_id, str):
        request_id = ""
    request_id = request_id.replace(api_key, "[redacted]")
    return {
        "schema_version": "mathcase-public-tavily-search-v1",
        "provenance": "TAVILY_LIVE",
        "statement_sha256": hashlib.sha256(query.encode("utf-8")).hexdigest(),
        "query": query,
        "provider_request_id": request_id[:100],
        "provider_credits_used": credits,
        "retrieved_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
        "results": results,
        "source_urls": [result["url"] for result in results],
        "boundary": "Untrusted reference material only; not proof, novelty evidence, accepted review, or downstream-use clearance.",
    }


def _read_statement_file(path: str) -> str:
    try:
        with Path(path).open("rb") as stream:
            raw = stream.read(MAX_STATEMENT_FILE_BYTES + 1)
    except OSError:
        raise TavilySearchError("statement file could not be read") from None
    if len(raw) > MAX_STATEMENT_FILE_BYTES:
        raise TavilySearchError("statement file exceeds the size limit")
    try:
        return raw.decode("utf-8")
    except UnicodeDecodeError:
        raise TavilySearchError("statement file must be UTF-8") from None


def main(
    argv: Sequence[str] | None = None,
    *,
    environ: Mapping[str, str] | None = None,
    opener=urllib.request.urlopen,
    stdout: TextIO | None = None,
    stderr: TextIO | None = None,
) -> int:
    parser = argparse.ArgumentParser(description="Search one exact math statement with Tavily basic search")
    source = parser.add_mutually_exclusive_group(required=True)
    source.add_argument("--statement", help="one-line statement to search")
    source.add_argument("--statement-file", help="UTF-8 file containing one statement")
    args = parser.parse_args(argv)
    output = sys.stdout if stdout is None else stdout
    errors = sys.stderr if stderr is None else stderr
    try:
        statement = args.statement if args.statement is not None else _read_statement_file(args.statement_file)
        result = search_statement(statement, environ=environ, opener=opener)
    except TavilySearchError as exc:
        print(f"mathcase tavily: {exc}", file=errors)
        return 2
    # ASCII escapes keep JSON printable on Windows consoles using legacy encodings.
    print(json.dumps(result, ensure_ascii=True, allow_nan=False, indent=2), file=output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

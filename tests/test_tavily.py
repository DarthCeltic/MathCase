"""Local transport tests; every search uses an injected response stub."""

from __future__ import annotations

import hashlib
import http.server
import io
import json
import threading
import unittest
import urllib.error
import urllib.request

from mathcase import tavily


KEY = "not-a-real-key-for-local-tests"


class Response:
    status = 200

    def __init__(self, data: object) -> None:
        self._raw = io.BytesIO(json.dumps(data).encode("utf-8"))

    def __enter__(self):
        return self

    def __exit__(self, *args):
        self._raw.close()

    def read(self, length: int) -> bytes:
        return self._raw.read(length)


def provider_response(**overrides):
    data = {
        "request_id": "req-123",
        "usage": {"credits": 1},
        "results": [
            {
                "title": "A source",
                "url": "https://example.org/paper",
                "score": 0.8,
                "content": "A short excerpt",
                "raw_content": "must never leave the adapter",
            },
            {"title": "Bad", "url": "javascript:alert(1)", "content": "skip"},
        ],
    }
    data.update(overrides)
    return data


class TavilyTests(unittest.TestCase):
    def test_local_http_stub_receives_one_bounded_post(self):
        observed = []

        class Handler(http.server.BaseHTTPRequestHandler):
            def do_POST(self):
                length = int(self.headers["Content-Length"])
                observed.append((self.path, self.headers["Authorization"], self.rfile.read(length)))
                body = json.dumps(provider_response()).encode("utf-8")
                self.send_response(200)
                self.send_header("Content-Type", "application/json")
                self.send_header("Content-Length", str(len(body)))
                self.end_headers()
                self.wfile.write(body)

            def log_message(self, *args):
                pass

        with http.server.ThreadingHTTPServer(("127.0.0.1", 0), Handler) as server:
            worker = threading.Thread(target=server.serve_forever, daemon=True)
            worker.start()

            def local_opener(request, *, timeout):
                local_request = urllib.request.Request(
                    f"http://127.0.0.1:{server.server_port}/search",
                    data=request.data,
                    headers=dict(request.header_items()),
                    method=request.get_method(),
                )
                return urllib.request.urlopen(local_request, timeout=timeout)

            try:
                result = tavily.search_statement(
                    "Nat.add_assoc", environ={"TAVILY_API_KEY": KEY}, opener=local_opener
                )
            finally:
                server.shutdown()
                worker.join(timeout=2)

        self.assertEqual(len(observed), 1)
        self.assertEqual(observed[0][0], "/search")
        self.assertEqual(observed[0][1], f"Bearer {KEY}")
        self.assertEqual(json.loads(observed[0][2])["query"], "Nat.add_assoc")
        self.assertEqual(result["provider_request_id"], "req-123")

    def test_exact_statement_request_and_bounded_provenance(self):
        statement = "For every n, n + 0 = n."
        calls = []

        def opener(request, *, timeout):
            calls.append((request, timeout))
            return Response(provider_response())

        result = tavily.search_statement(
            statement, environ={"TAVILY_API_KEY": KEY}, opener=opener
        )
        self.assertEqual(len(calls), 1)
        request, timeout = calls[0]
        self.assertEqual(request.full_url, tavily.SEARCH_URL)
        self.assertEqual(request.get_method(), "POST")
        self.assertEqual(request.get_header("Authorization"), f"Bearer {KEY}")
        self.assertEqual(timeout, tavily.TIMEOUT_SECONDS)
        body = json.loads(request.data)
        self.assertEqual(body["query"], statement)
        self.assertEqual(body["search_depth"], "basic")
        self.assertEqual(body["max_results"], 6)
        self.assertEqual(body["include_usage"], True)
        self.assertEqual(body["include_answer"], False)
        self.assertEqual(body["include_raw_content"], False)
        self.assertEqual(body["include_images"], False)
        self.assertNotIn(KEY, request.data.decode("utf-8"))
        self.assertEqual(result["statement_sha256"], hashlib.sha256(statement.encode()).hexdigest())
        self.assertEqual(result["query"], statement)
        self.assertEqual(result["provider_credits_used"], 1)
        self.assertEqual(result["source_urls"], ["https://example.org/paper"])
        self.assertEqual(len(result["results"]), 1)
        self.assertNotIn("raw_content", result["results"][0])
        self.assertNotIn(KEY, json.dumps(result))

    def test_missing_key_and_oversize_statement_never_dispatch(self):
        def forbidden(*args, **kwargs):
            self.fail("a provider request was attempted")

        with self.assertRaisesRegex(tavily.TavilySearchError, "TAVILY_API_KEY"):
            tavily.search_statement("A statement", environ={}, opener=forbidden)
        with self.assertRaisesRegex(tavily.TavilySearchError, "400 characters"):
            tavily.search_statement("x" * 401, environ={"TAVILY_API_KEY": KEY}, opener=forbidden)
        with self.assertRaisesRegex(tavily.TavilySearchError, "single line"):
            tavily.search_statement("one\ntwo", environ={"TAVILY_API_KEY": KEY}, opener=forbidden)

    def test_http_and_transport_errors_do_not_expose_key(self):
        def rejected(*args, **kwargs):
            raise urllib.error.HTTPError(tavily.SEARCH_URL, 401, KEY, {}, io.BytesIO())

        with self.assertRaises(tavily.TavilySearchError) as caught:
            tavily.search_statement("A statement", environ={"TAVILY_API_KEY": KEY}, opener=rejected)
        self.assertIn("rejected", str(caught.exception))
        self.assertNotIn(KEY, str(caught.exception))

        def broken(*args, **kwargs):
            raise RuntimeError(KEY)

        with self.assertRaises(tavily.TavilySearchError) as caught:
            tavily.search_statement("A statement", environ={"TAVILY_API_KEY": KEY}, opener=broken)
        self.assertNotIn(KEY, str(caught.exception))

    def test_key_echoes_are_redacted_and_unsafe_urls_are_dropped(self):
        result = tavily.search_statement(
            "A statement",
            environ={"TAVILY_API_KEY": KEY},
            opener=lambda *args, **kwargs: Response(
                provider_response(
                    request_id=f"req-{KEY}",
                    results=[
                        {"title": f"Found {KEY}", "url": "https://example.org/a", "content": f"excerpt {KEY}"},
                        {"title": "Secret URL", "url": f"https://example.org/{KEY}"},
                        {"title": "Whitespace URL", "url": "https://example.org/a b"},
                    ],
                )
            ),
        )
        self.assertEqual(len(result["results"]), 1)
        self.assertNotIn(KEY, json.dumps(result))

    def test_missing_or_unexpected_usage_is_refused(self):
        for usage in (None, {"credits": True}, {"credits": 2}):
            with self.subTest(usage=usage):
                with self.assertRaisesRegex(tavily.TavilySearchError, "one-credit"):
                    tavily.search_statement(
                        "A statement",
                        environ={"TAVILY_API_KEY": KEY},
                        opener=lambda *args, **kwargs: Response(provider_response(usage=usage)),
                    )

    def test_cli_emits_json_only_on_success(self):
        output, errors = io.StringIO(), io.StringIO()
        status = tavily.main(
            ["--statement", "A statement with α"],
            environ={"TAVILY_API_KEY": KEY},
            opener=lambda *args, **kwargs: Response(provider_response()),
            stdout=output,
            stderr=errors,
        )
        self.assertEqual(status, 0)
        self.assertEqual(errors.getvalue(), "")
        self.assertEqual(json.loads(output.getvalue())["query"], "A statement with α")
        self.assertTrue(output.getvalue().isascii())
        self.assertNotIn(KEY, output.getvalue())


if __name__ == "__main__":
    unittest.main()

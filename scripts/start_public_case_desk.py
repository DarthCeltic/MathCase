#!/usr/bin/env python3
"""Start the saved Case Desk with a minimal environment and no provider keys."""
from __future__ import annotations

import argparse
import os
from pathlib import Path
import subprocess
import sys


def clean_environment(source: dict[str, str]) -> dict[str, str]:
    allowed = {"PATH", "SYSTEMROOT", "WINDIR", "TEMP", "TMP", "HOME", "USERPROFILE",
               "APPDATA", "LOCALAPPDATA", "LANG", "LC_ALL", "SYSTEMDRIVE", "COMSPEC"}
    result = {key: value for key, value in source.items() if key.upper() in allowed}
    result.update(PYTHONIOENCODING="utf-8", PYTHONDONTWRITEBYTECODE="1", PYTHONUTF8="1")
    return result


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--port", type=int, default=55135)
    args = parser.parse_args()
    if not 1024 <= args.port <= 65535:
        parser.error("port must be between 1024 and 65535")
    root = Path(__file__).resolve().parents[1]
    print(f"Open http://127.0.0.1:{args.port}/ui/prototype/index.html", flush=True)
    print("Saved execution only. No API key, model request, search, or Lean compilation is used.", flush=True)
    return subprocess.call([sys.executable, "-B", str(root / "scripts/serve_ui_preview.py"),
                            "--port", str(args.port)], cwd=root, env=clean_environment(dict(os.environ)))


if __name__ == "__main__":
    raise SystemExit(main())

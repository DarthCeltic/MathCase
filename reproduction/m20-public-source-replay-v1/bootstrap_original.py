"""Prepare public pinned MathCase sources and the official Mathlib cache for M20."""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import time

MATHCASE_SHA = "17174a4a6311eb2e32556d9e4fb38255290a36be"
MATHLIB_SHA = "0df444a360eaa60ab8c11dca51a86af692955474"
LEAN_REV = "819816b2e0a3bf405af45ae5c7af2491d8f5bee6"
SPARSE = ("reproduction/m15-m20-r2", "reproduction/m20-source-replay-2026-11-18")
M20_IMPORT = "Mathlib.Data.Nat.Prime.Basic"

def file_hash(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()

def now():
    return datetime.now(timezone.utc).isoformat()

def atomic_json(path, value):
    temp = path.with_suffix(".tmp")
    temp.write_bytes((json.dumps(value, indent=2) + "\n").encode("utf-8"))
    temp.replace(path)

def git(folder, *args, capture=False):
    env = dict(os.environ, GIT_TERMINAL_PROMPT="0")
    return subprocess.run(["git", "-c", "credential.helper=", "-c", "credential.interactive=never",
                           "-c", "core.autocrlf=false", "-C", str(folder), *args],
                          env=env, check=True, text=True, capture_output=capture)

def checkout(folder, url, sha, sparse=()):
    folder.mkdir(parents=True, exist_ok=True)
    if not (folder/".git").is_dir():
        if list(folder.iterdir()):
            raise ValueError(f"Refusing to overwrite nonempty {folder}")
        git(folder, "init", "--quiet")
        git(folder, "remote", "add", "origin", url)
    if git(folder, "remote", "get-url", "origin", capture=True).stdout.strip() != url:
        raise ValueError(f"Unexpected git origin in {folder}")
    git(folder, "config", "core.autocrlf", "false")
    try:
        current = git(folder, "rev-parse", "--verify", "HEAD", capture=True).stdout.strip()
    except subprocess.CalledProcessError:
        current = ""
    if current and current != sha:
        raise ValueError(f"Wrong existing revision in {folder}; use a new workspace")
    if current == sha:
        if git(folder, "status", "--porcelain=v1", "--untracked-files=no", capture=True).stdout.strip():
            raise ValueError(f"Modified tracked files in {folder}; use a fresh workspace")
        return
    if sparse:
        git(folder, "sparse-checkout", "set", *sparse)
    args = ["fetch", "--depth=1", "--no-tags", "--quiet"]
    if sparse:
        args.append("--filter=blob:none")
    git(folder, *args, "origin", sha)
    git(folder, "checkout", "--quiet", "--detach", sha)

def env_for(workspace):
    return dict(os.environ, GIT_TERMINAL_PROMPT="0", MATHLIB_CACHE_DIR=str(workspace/"cache"),
                LEAN_NUM_THREADS="1", ELAN_TOOLCHAIN="leanprover/lean4:v4.33.1")

def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("workspace", type=Path)
    ap.add_argument("--lake", default="lake")
    ap.add_argument("--also-cache", action="append", default=[], metavar="MATHLIB_MODULE",
                    help="Fetch a separate optional public Mathlib dependency")
    args = ap.parse_args()
    root = args.workspace.resolve()
    root.mkdir(parents=True, exist_ok=True)
    started = now()
    start_mono = time.monotonic()
    mathlib = root / "mathlib"
    checkout(root/"source", "https://github.com/DarthCeltic/MathCase.git", MATHCASE_SHA, SPARSE)
    checkout(mathlib, "https://github.com/leanprover-community/mathlib4.git", MATHLIB_SHA)
    manifest = json.loads((mathlib/"lake-manifest.json").read_bytes())
    for item in manifest["packages"]:
        if item["type"] != "git" or item.get("subDir") or not item["url"].startswith("https://github.com/"):
            raise ValueError(f"Unexpected official dependency specification for {item['name']}")
        checkout(mathlib/manifest["packagesDir"]/item["name"], item["url"], item["rev"])
    lake = shutil.which(args.lake)
    if not lake:
        raise ValueError("Install Lean 4.33.1 with Lake or pass --lake PATH")
    env = env_for(root)
    version = subprocess.check_output([lake,"env","lean","--version"],cwd=mathlib,env=env,text=True)
    if "version 4.33.1," not in version or LEAN_REV not in version:
        raise ValueError(f"Unexpected Lean build: {version}")
    lean_path_code = "import shutil; print(shutil.which('lean') or '')"
    lean_path = subprocess.check_output([lake,"env",sys.executable,"-c",lean_path_code],
                                        cwd=mathlib,env=env,text=True).strip()
    if not lean_path or not Path(lean_path).is_file():
        raise ValueError("Could not resolve Lean executable inside the pinned Lake environment")
    cache_stdout = root / "cache-get.stdout"
    cache_stderr = root / "cache-get.stderr"
    with cache_stdout.open("wb") as stdout, cache_stderr.open("wb") as stderr:
        cache_result = subprocess.run([lake,"exe","cache","get",M20_IMPORT,*args.also_cache],
                                      cwd=mathlib,env=env,stdout=stdout,stderr=stderr,check=False)
    if cache_result.returncode != 0:
        raise subprocess.CalledProcessError(cache_result.returncode, [lake,"exe","cache","get",M20_IMPORT,*args.also_cache])
    receipt = {
        "schema": "mathcase-original-m20-bootstrap-v1",
        "status": "PASS",
        "started_utc": started,
        "finished_utc": now(),
        "elapsed_seconds": round(time.monotonic() - start_mono, 3),
        "source_commit": MATHCASE_SHA,
        "mathlib_commit": MATHLIB_SHA,
        "lake_manifest_sha256": file_hash(mathlib / "lake-manifest.json"),
        "lean_version": version.strip(),
        "lean_commit": LEAN_REV,
        "python_version": sys.version.split()[0],
        "python_executable_sha256": file_hash(Path(sys.executable).resolve()),
        "lake_executable_sha256": file_hash(Path(lake).resolve()),
        "lean_executable_sha256": file_hash(Path(lean_path).resolve()),
        "bootstrap_script_sha256": file_hash(Path(__file__).resolve()),
        "cache_modules": [M20_IMPORT, *args.also_cache],
        "cache_exit_code": cache_result.returncode,
        "cache_stdout_sha256": file_hash(cache_stdout),
        "cache_stderr_sha256": file_hash(cache_stderr),
    }
    atomic_json(root / "bootstrap-receipt.json", receipt)
    print("Upstream sources and Mathlib cache ready.", flush=True)

if __name__ == "__main__":
    main()

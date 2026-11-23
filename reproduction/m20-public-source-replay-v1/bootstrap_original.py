"""Prepare public pinned MathCase sources and the official Mathlib cache for M20."""
import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess

MATHCASE_SHA = "17174a4a6311eb2e32556d9e4fb38255290a36be"
MATHLIB_SHA = "0df444a360eaa60ab8c11dca51a86af692955474"
LEAN_REV = "819816b2e0a3bf405af45ae5c7af2491d8f5bee6"
SPARSE = ("reproduction/m15-m20-r2", "reproduction/m20-source-replay-2026-11-18")
M20_IMPORT = "Mathlib.Data.Nat.Prime.Basic"

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
    subprocess.run([lake,"exe","cache","get",M20_IMPORT,*args.also_cache],cwd=mathlib,env=env,check=True)
    print("Upstream sources and Mathlib cache ready.", flush=True)

if __name__ == "__main__":
    main()

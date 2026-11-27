#!/usr/bin/env python3
import argparse
import datetime
import hashlib
import json
import os
import pathlib
import platform
import subprocess
import sys
import time

ROOT = pathlib.Path(__file__).resolve().parent
TRACKED_SOURCES = ["enumerate_split.py", "enumerate_direct.cpp", "verify_screen.py", "reproduce.py"]

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def main():
    parser = argparse.ArgumentParser(description="Reproduce the exploratory 24/15 residue screen in a fresh output folder.")
    parser.add_argument("--output-dir", help="new, empty output directory; default is a unique folder under runs/")
    args = parser.parse_args()
    run_id = datetime.datetime.now(datetime.timezone.utc).strftime("%Y%m%dT%H%M%S.%fZ")
    output = pathlib.Path(args.output_dir).expanduser().resolve() if args.output_dir else ROOT / "runs" / run_id
    output.mkdir(parents=True, exist_ok=False)
    (output / "build").mkdir()
    os.environ["TEMP"] = str(output)
    os.environ["TMP"] = str(output)
    os.environ["TMPDIR"] = str(output)
    observations = []

    def run(label, command, argv, log):
        start = time.perf_counter()
        try:
            proc = subprocess.run(argv, cwd=output, stdout=subprocess.PIPE,
                                  stderr=subprocess.STDOUT, text=True,
                                  encoding="utf-8", errors="replace")
            captured = proc.stdout
            exit_code = proc.returncode
        except OSError as exc:
            captured = f"PROCESS_START_ERROR: {type(exc).__name__}\n"
            exit_code = 127
        elapsed = round(time.perf_counter() - start, 3)
        (output / log).write_text(captured, encoding="utf-8", newline="\n")
        observations.append({"label":label,"command":command,"exit_code":exit_code,
                             "elapsed_seconds":elapsed,"log":log})
        print(f"{label}: exit={exit_code}; elapsed={elapsed:.3f}s")
        if exit_code:
            write_timing("FAIL")
            raise SystemExit(exit_code)

    def write_timing(status):
        (output / "execution-timings.json").write_text(
            json.dumps({"status":status,"steps":observations},indent=2)+"\n",
            encoding="utf-8", newline="\n")

    py = sys.executable
    run("Python split enumeration","python -B enumerate_split.py",
        [py,"-B",str(ROOT/"enumerate_split.py")],"python-run.log")
    exe = output/"build"/"enumerate_direct.exe"
    run("C++17 build","g++ -std=c++17 -O3 -DNDEBUG enumerate_direct.cpp -o build/enumerate_direct.exe",
        ["g++","-std=c++17","-O3","-DNDEBUG",str(ROOT/"enumerate_direct.cpp"),"-o",str(exe)],
        "compile.log")
    run("C++ direct enumeration","build/enumerate_direct.exe",
        [str(exe)],"cpp-run.log")
    last_line=(output/"cpp-run.log").read_bytes().splitlines()[-1]
    (output/"cpp-result.json").write_bytes(last_line+b"\n")
    run("Cross-method verifier","python -B verify_screen.py",
        [py,"-B",str(ROOT/"verify_screen.py")],"verify-run.log")
    write_timing("PASS")
    verification=json.loads((output/"verification.json").read_text(encoding="utf-8"))
    outputs=["python-result.json","cpp-result.json","verification.json","python-run.log",
             "compile.log","cpp-run.log","verify-run.log","execution-timings.json"]
    compiler=subprocess.run(["g++","--version"],stdout=subprocess.PIPE,stderr=subprocess.STDOUT,
                             text=True,encoding="utf-8",errors="replace").stdout.splitlines()[0]
    receipt={
        "run_id":run_id,
        "recorded_at_utc":datetime.datetime.now(datetime.timezone.utc).isoformat(timespec="seconds"),
        "command":"python -B reproduce.py",
        "status":verification["status"],
        "scope":"Finite 24/15 residue screen only; no Lean compilation or M0 review.",
        "total_eligible_residues":verification["total_masks"],
        "independent_methods_agree":verification["independent_methods_agree"],
        "all_fixed_word_slopes_positive":verification["all_fixed_word_slopes_positive"],
        "all_minimum_margins_positive":verification["all_minimum_margins_positive"],
        "damaged_margin_rejected":verification["damaged_margin_rejected"],
        "altered_residue_rejected":verification["altered_residue_rejected"],
        "environment":{"python":platform.python_version(),"compiler":compiler,"standard":"C++17"},
        "source_sha256":{name:sha(ROOT/name) for name in TRACKED_SOURCES},
        "output_sha256":{name:sha(output/name) for name in outputs}
    }
    (output/"run-summary.json").write_text(json.dumps(receipt,indent=2)+"\n",
                                           encoding="utf-8",newline="\n")
    print(json.dumps({"status":verification["status"],"run_id":run_id,
                      "eligible_residues":verification["total_masks"],
                      "output_directory":"runs/"+run_id},separators=(",",":")))

if __name__=="__main__":
    main()

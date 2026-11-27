#!/usr/bin/env python3
import json, os, pathlib, subprocess, sys, time
root = pathlib.Path(__file__).resolve().parent
os.chdir(root)
(root / "build").mkdir(exist_ok=True)
observations = []
def run(label, command, argv, log):
    start = time.perf_counter()
    try:
        p = subprocess.run(argv, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                           text=True, encoding="utf-8", errors="replace")
        text = p.stdout
        code = p.returncode
    except OSError as exc:
        text = f"PROCESS_START_ERROR: {type(exc).__name__}: {exc}\n"
        code = 127
    elapsed = round(time.perf_counter() - start, 3)
    (root / log).write_text(text, encoding="utf-8", newline="\n")
    observations.append({"label":label,"command":command,"exit_code":code,
                         "elapsed_seconds":elapsed,"log":log})
    print(f"{label}: exit={code}; elapsed={elapsed:.3f}s")
    if code:
        (root / "execution-timings.json").write_text(
            json.dumps({"status":"FAIL","steps":observations},indent=2)+"\n",encoding="utf-8",newline="\n")
        raise SystemExit(code)
run("Python split enumeration","python -B enumerate_split.py",
    [sys.executable,"-B","enumerate_split.py"],"python-run.log")
run("C++17 build","g++ -std=c++17 -O3 -DNDEBUG enumerate_direct.cpp -o build/enumerate_direct.exe",
    ["g++","-std=c++17","-O3","-DNDEBUG","enumerate_direct.cpp","-o",str(root/"build"/"enumerate_direct.exe")],
    "compile.log")
run("C++ direct enumeration","build/enumerate_direct.exe",
    [str(root/"build"/"enumerate_direct.exe")],"cpp-run.log")
(root/"cpp-result.json").write_bytes((root/"cpp-run.log").read_bytes().splitlines()[-1]+b"\n")
run("Cross-method verifier","python -B verify_screen.py",
    [sys.executable,"-B","verify_screen.py"],"verify-run.log")
(root/"execution-timings.json").write_text(
    json.dumps({"status":"PASS","steps":observations},indent=2)+"\n",encoding="utf-8",newline="\n")

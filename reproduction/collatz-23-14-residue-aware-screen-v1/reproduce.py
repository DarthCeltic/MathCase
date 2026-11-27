#!/usr/bin/env python3
"""Rebuild and compare the two recorded 23/14 residue-screen computations."""
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import time

ROOT=Path(__file__).resolve().parent

def run(command, cwd, env=None):
    started=time.perf_counter()
    p=subprocess.run(command,cwd=cwd,env=env,capture_output=True,text=True,encoding='utf-8',errors='replace')
    elapsed=round((time.perf_counter()-started)*1000)
    if p.returncode:
        sys.stderr.write(p.stdout)
        sys.stderr.write(p.stderr)
        raise SystemExit(f"FAILED exit={p.returncode}: {' '.join(map(str,command))}")
    return p.stdout,elapsed

def main():
    saved_python=json.loads((ROOT/'residue-aware-python.json').read_text(encoding='utf-8-sig'))
    py_out,py_ms=run([sys.executable,'-B','independent_split_enumeration.py'],ROOT)
    fresh_python=json.loads(py_out)
    if fresh_python!=saved_python:
        raise SystemExit('FAILED: fresh Python result differs from the pinned output')
    with tempfile.TemporaryDirectory(prefix='mathcase-collatz-residue-screen-') as d:
        exe=Path(d)/('screen.exe' if os.name=='nt' else 'screen')
        _,compile_ms=run(['g++','-O3','-std=c++17',str(ROOT/'exhaustive_residue_aware.cpp'),'-o',str(exe)],ROOT)
        cpp_out,cpp_ms=run([str(exe)],ROOT)
    saved_cpp=(ROOT/'residue-aware-cpp.txt').read_text(encoding='utf-8-sig')
    if cpp_out.splitlines()!=saved_cpp.splitlines():
        raise SystemExit('FAILED: fresh C++ output differs from the pinned output')
    val_out,val_ms=run([sys.executable,'-B','verify_experiment.py'],ROOT)
    print(f'PASS Python split enumeration: {py_ms} ms; exit 0; output equals pinned JSON')
    print(f'PASS C++17 compile: {compile_ms} ms; exit 0')
    print(f'PASS C++ direct enumeration: {cpp_ms} ms; exit 0; output equals pinned table')
    print(f'PASS cross-check and negative controls: {val_ms} ms; exit 0')
    print(val_out,end='')
    print('PASS one-command reproduction complete')

if __name__=='__main__':
    main()

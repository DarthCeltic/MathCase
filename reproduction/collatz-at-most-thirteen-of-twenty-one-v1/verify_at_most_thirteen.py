"""Fresh-source Lean replay and exhaustive residue census for the 21-step Collatz result."""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
import time

BASE = Path(__file__).resolve().parent
MODULES = {
    'WordBound': [
        "'MathCase.Collatz.WordBound.twelve_of_twenty' depends on axioms: [propext, Quot.sound]",
        "'MathCase.Collatz.WordBound.scaled_upper' depends on axioms: [propext, Quot.sound]",
        "'MathCase.Collatz.WordBound.twenty_twelve_descent' depends on axioms: [propext, Quot.sound]",
    ],
    'WordResidue': [
        "'MathCase.Collatz.WordBound.lift_residue' depends on axioms: [propext, Quot.sound]",
        "'MathCase.Collatz.WordBound.residue_twelve_of_twenty' depends on axioms: [propext, Quot.sound]",
    ],
    'CountWords': [
        "'MathCase.Collatz.WordBound.residueCount_eq_wordCount' depends on axioms: [propext, Classical.choice, Quot.sound]",
        "'MathCase.Collatz.WordBound.count_twelve_of_twenty' depends on axioms: [propext, Classical.choice, Quot.sound]",
        "'MathCase.Collatz.WordBound.counted_progressions_descend' depends on axioms: [propext, Classical.choice, Quot.sound]",
    ],
    'AtMostThirteen21': [
        "'MathCase.Collatz.WordBound.residue_at_most_thirteen_count' depends on axioms: [propext, Classical.choice, Quot.sound]",
        "'MathCase.Collatz.WordBound.at_most_thirteen_of_twenty_one_descend' depends on axioms: [propext, Quot.sound]",
        "'MathCase.Collatz.WordBound.counted_at_most_thirteen_families' depends on axioms: [propext, Classical.choice, Quot.sound]",
    ],
    'Sharpness21': [
        "'MathCase.Collatz.WordBound.fourteen_odd_family_fails_at_step35' depends on axioms: [propext, Quot.sound]",
    ],
}
LEAN_FILES = [name + '.lean' for name in MODULES]
TIMEOUT = 180
CENSUS_TIMEOUT = 240


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def parse_axiom_reports(output: str) -> list[str]:
    """Join Lean's wrapped `#print axioms` continuation lines into full records."""
    lines = output.splitlines()
    records = []
    index = 0
    while index < len(lines):
        line = lines[index]
        if ' depends on axioms:' not in line:
            index += 1
            continue
        parts = [line.strip()]
        while not parts[-1].endswith(']') and index + 1 < len(lines):
            index += 1
            parts.append(lines[index].strip())
        records.append(re.sub(r'\s+', ' ', ' '.join(parts)))
        index += 1
    return records


def write_report(path: Path | None, report: dict) -> None:
    text = json.dumps(report, indent=2, sort_keys=True) + '\n'
    if path:
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text, encoding='utf-8')
    print(text, end='')


def output_bytes(exc: subprocess.TimeoutExpired) -> bytes:
    parts = []
    for value in (exc.stdout, exc.stderr):
        if value:
            parts.append(value if isinstance(value, bytes) else value.encode('utf-8', 'replace'))
    return b''.join(parts)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--lean', default='lean', help='Lean 4.33.1 executable or command')
    parser.add_argument('--output', type=Path, help='optional JSON receipt destination')
    parser.add_argument('--evidence-dir', type=Path, help='preserve per-module output and census receipt')
    parser.add_argument('--module-timeout', type=int, default=TIMEOUT)
    parser.add_argument('--census-timeout', type=int, default=CENSUS_TIMEOUT)
    args = parser.parse_args()
    if args.module_timeout < 1 or args.census_timeout < 1:
        parser.error('timeouts must be positive')
    executable = shutil.which(args.lean)
    report = {
        'schema': 'mathcase-collatz-at-most-13-of-21-clean-replay-v1',
        'status': 'FAIL', 'external_spend_usd': 0, 'network_used': False,
        'lean_stages': [], 'source_sha256': {},
        'limits': {'module_seconds': args.module_timeout, 'census_seconds': args.census_timeout},
    }
    evidence_dir = args.evidence_dir
    if evidence_dir:
        evidence_dir.mkdir(parents=True, exist_ok=True)
    if not executable:
        report['failure'] = 'Lean was not found. Supply --lean with a Lean 4.33.1 executable.'
        write_report(args.output, report)
        return 2
    executable = str(Path(executable).resolve())
    env_base = {**os.environ, 'ELAN_TOOLCHAIN': 'leanprover/lean4:v4.33.1'}
    try:
        version = subprocess.run([executable, '--version'], capture_output=True, text=True,
                                 encoding='utf-8', errors='replace', env=env_base, timeout=15)
    except subprocess.TimeoutExpired as exc:
        report['status'] = 'TIMEOUT'
        report['failure'] = 'Lean version probe timed out'
        report['version_timeout_seconds'] = 15
        report['version_output_sha256'] = sha256(output_bytes(exc))
        write_report(args.output, report)
        return 124
    report['lean_version'] = version.stdout.strip()
    if version.returncode or not re.search(r'\bversion 4\.33\.1\b', version.stdout):
        report['failure'] = 'Lean 4.33.1 is required'
        report['version_exit_code'] = version.returncode
        report['version_output'] = (version.stdout + version.stderr)[-4000:]
        write_report(args.output, report)
        return 2
    source_names = LEAN_FILES + ['residue-census.py']
    source_bytes = {}
    for name in source_names:
        path = BASE / name
        if not path.is_file():
            report['failure'] = f'missing source: {name}'
            write_report(args.output, report)
            return 2
        data = path.read_bytes()
        source_bytes[name] = data
        report['source_sha256'][name] = sha256(data)
        if name.endswith('.lean') and re.search(rb'\b(sorry|admit|native_decide)\b', data):
            report['failure'] = f'disallowed proof marker in {name}'
            write_report(args.output, report)
            return 2
    try:
        with tempfile.TemporaryDirectory(prefix='mathcase-collatz21-public-') as temp:
            work = Path(temp)
            for name, data in source_bytes.items():
                (work / name).write_bytes(data)
            env = {**env_base, 'LEAN_PATH': str(work)}
            for module, expected in MODULES.items():
                name = module + '.lean'
                command = [executable, '-j', '1', '-o', module + '.olean', name]
                started = time.monotonic()
                try:
                    result = subprocess.run(command, cwd=work, env=env, capture_output=True,
                                            text=True, encoding='utf-8', errors='replace',
                                            timeout=args.module_timeout)
                except subprocess.TimeoutExpired as exc:
                    raw = output_bytes(exc)
                    if evidence_dir:
                        (evidence_dir / f'{module}.timeout-output.txt').write_bytes(raw)
                    report['status'] = 'TIMEOUT'
                    report['failure'] = f'Lean module timeout: {module}'
                    report['timeout_seconds'] = args.module_timeout
                    report['failed_module'] = module
                    report['partial_output_sha256'] = sha256(raw)
                    write_report(args.output, report)
                    return 124
                raw = (result.stdout + result.stderr).encode('utf-8')
                output_text = raw.decode('utf-8', 'replace')
                if evidence_dir:
                    (evidence_dir / f'{module}.stdout.txt').write_bytes(raw)
                actual = parse_axiom_reports(output_text)
                stage = {
                    'module': module, 'command': ['lean', '-j', '1', '-o', module + '.olean', name],
                    'exit_code': result.returncode,
                    'elapsed_seconds': round(time.monotonic() - started, 3),
                    'source_sha256': report['source_sha256'][name],
                    'output_sha256': sha256(raw), 'axiom_reports': actual,
                    'expected_axiom_reports': expected,
                }
                olean = work / (module + '.olean')
                if olean.is_file():
                    stage['olean_sha256'] = sha256(olean.read_bytes())
                report['lean_stages'].append(stage)
                if (result.returncode or sorted(actual) != sorted(expected)
                        or 'sorryAx' in output_text):
                    report['failure'] = f'proof or axiom audit failed: {module}'
                    stage['output_tail'] = output_text[-12000:]
                    write_report(args.output, report)
                    return 1
            census_path = work / 'census-receipt.json'
            command = [sys.executable, '-B', str(work / 'residue-census.py'),
                       '--output', str(census_path)]
            started = time.monotonic()
            try:
                census = subprocess.run(command, cwd=work, env=env, capture_output=True,
                                        text=True, encoding='utf-8', errors='replace',
                                        timeout=args.census_timeout)
            except subprocess.TimeoutExpired as exc:
                raw = output_bytes(exc)
                if evidence_dir:
                    (evidence_dir / 'census.timeout-output.txt').write_bytes(raw)
                report['status'] = 'TIMEOUT'
                report['failure'] = 'residue census timed out'
                report['timeout_seconds'] = args.census_timeout
                report['census_partial_output_sha256'] = sha256(raw)
                write_report(args.output, report)
                return 124
            raw = (census.stdout + census.stderr).encode('utf-8')
            if evidence_dir:
                (evidence_dir / 'census.stdout.txt').write_bytes(raw)
            if census.returncode or not census_path.is_file():
                report['failure'] = 'finite 21-bit residue census failed'
                report['census_output_sha256'] = sha256(raw)
                report['census_output_tail'] = raw.decode('utf-8', 'replace')[-12000:]
                write_report(args.output, report)
                return 1
            census_bytes = census_path.read_bytes()
            census_report = json.loads(census_bytes)
            if evidence_dir:
                (evidence_dir / 'census-receipt.json').write_bytes(census_bytes)
            report['census_sha256'] = sha256(census_bytes)
            report['census'] = {
                key: census_report[key] for key in (
                    'status', 'modulus', 'qualifying_residue_count',
                    'qualifying_percent', 'positive_base_residues_at_least_3_checked',
                    'ordinary_vs_accelerated_endpoint_mismatches',
                    'non_descent_count_for_qualifying_residues_at_least_3',
                    'all_residue_stream_sha256', 'exactly_14_odd_residue_count',
                    'k1_step35_descent_count_for_14_odd_families',
                    'weight14_representative_stream_sha256', 'elapsed_seconds')
            }
            if census_report.get('status') != 'PASS':
                report['failure'] = 'finite residue census did not pass all checks'
                write_report(args.output, report)
                return 1
    except subprocess.TimeoutExpired as exc:
        raw = output_bytes(exc)
        report['status'] = 'TIMEOUT'
        report['failure'] = 'Lean version probe timed out'
        report['version_timeout_seconds'] = 15
        report['version_output_sha256'] = sha256(raw)
        write_report(args.output, report)
        return 124
    report['status'] = 'PASS'
    report['scope'] = ('At most 13 odd inputs among 21 accelerated steps; ordinary endpoint 21+h; '
                       'all n>=3 satisfying the condition; 1,898,712 residue classes modulo 2^21.')
    report['axiom_parser'] = 'Wrapped #print axioms continuation lines are joined before exact comparison.'
    write_report(args.output, report)
    return 0


if __name__ == '__main__':
    raise SystemExit(main())

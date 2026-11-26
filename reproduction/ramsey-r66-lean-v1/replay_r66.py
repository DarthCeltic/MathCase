from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent
EXPECTED = {
    'source-manifest.json': 'b8c9eefb0813b3da44618add183088b53b0cb889e55cbf38a364f9f2c8c58a1e',
    'lake-manifest.json': '958b34400c85f0e6e9e1a3ec9c2c67e3df25fcfed9195c53d50302af588f3c0f',
    'lakefile.toml': '4feaaa441879090046cf724545ad6e6424b76496ae1d10e95f690a5de59c912c',
    'Audit.lean': '0e2a380ae8d0a565605e1165131be33463832f1de4f64491c13226ef27b4a0fd',
    'verification/axiom-audit.txt': 'da65d5ce131035e869af692697a2d5fd84133424eace77664d93ef359758766a',
}
EXPECTED_AUDIT = (
    "'MathCase.RamseyR66V2.ramsey_number_six_six_lower_bound_candidate' "
    'depends on axioms: [propext,\n Classical.choice,\n Quot.sound]\n'
)

def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def verify_inputs() -> dict:
    for rel, expected in EXPECTED.items():
        path = ROOT / rel
        if not path.is_file():
            raise RuntimeError(f'MISSING_INPUT: {rel}')
        actual = digest(path.read_bytes())
        if actual != expected:
            raise RuntimeError(f'INPUT_HASH_MISMATCH: {rel}: {actual}')
    manifest = json.loads((ROOT / 'source-manifest.json').read_text(encoding='utf-8'))
    records = [manifest['lean_toolchain'], *manifest['mathcase_sources']]
    for rec in records:
        path = ROOT / rec['path']
        raw = path.read_bytes()
        if len(raw) != rec['bytes'] or digest(raw) != rec['sha256']:
            raise RuntimeError(f'SOURCE_MANIFEST_MISMATCH: {rec["path"]}')
    lock = json.loads((ROOT / 'lake-manifest.json').read_text(encoding='utf-8'))
    mathlib = [p for p in lock.get('packages', []) if p.get('name') == 'mathlib']
    if len(mathlib) != 1 or mathlib[0].get('rev') != '0df444a360eaa60ab8c11dca51a86af692955474':
        raise RuntimeError('MATHLIB_LOCK_MISMATCH')
    recorded = (ROOT / 'verification/axiom-audit.txt').read_text(encoding='utf-8').replace('\r\n', '\n')
    if recorded != EXPECTED_AUDIT:
        raise RuntimeError('RECORDED_AUDIT_TEXT_MISMATCH')
    return {'source_manifest_sha256': EXPECTED['source-manifest.json'],
            'mathlib_commit': mathlib[0]['rev'],
            'mathcase_source_count': len(manifest['mathcase_sources'])}

def find_preexisting_mathcase_oleans(root: Path) -> list[str]:
    """Return pinned MathCase modules whose OLEANs already exist in this Lake build tree."""
    manifest_path = root / 'source-manifest.json'
    manifest = json.loads(manifest_path.read_text(encoding='utf-8'))
    build = root / '.lake' / 'build' / 'lib' / 'lean'
    found = []
    for record in manifest.get('mathcase_sources', []):
        source = Path(record['path'])
        if source.suffix != '.lean':
            raise RuntimeError(f'INVALID_SOURCE_MANIFEST_PATH: {record["path"]}')
        output = build / source.with_suffix('.olean')
        if output.is_file():
            found.append(output.relative_to(root).as_posix())
    root_output = build / 'MathCase.olean'
    if root_output.is_file():
        found.append(root_output.relative_to(root).as_posix())
    return sorted(set(found))

def require_fresh_mathcase_outputs(root: Path = ROOT) -> list[str]:
    found = find_preexisting_mathcase_oleans(root)
    if found:
        raise RuntimeError('PREEXISTING_MATHCASE_OLEAN: ' + ', '.join(found) +
                           '; use a fresh checkout or package directory; this runner will not delete or reuse these files')
    return found

def choose_receipt() -> Path:
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    base = ROOT / 'verification' / f'r66-replay-{stamp}.json'
    candidate = base; suffix = 1
    while candidate.exists():
        candidate = base.with_name(f'{base.stem}-{suffix}{base.suffix}'); suffix += 1
    return candidate

def configure_utf8_console() -> None:
    """Print captured Lean output safely on Windows consoles with legacy code pages."""
    for stream in (sys.stdout, sys.stderr):
        reconfigure = getattr(stream, 'reconfigure', None)
        if callable(reconfigure):
            reconfigure(encoding='utf-8', errors='replace')


def sha256_file(path: Path) -> str:
    return digest(path.read_bytes())


def _manifest_file(manifest: dict, key: str) -> tuple[Path, str]:
    record = manifest.get('files', {}).get(key)
    if not isinstance(record, dict) or not isinstance(record.get('path'), str) or not isinstance(record.get('sha256'), str):
        raise RuntimeError(f'CURRENT_RECEIPT_MANIFEST_INVALID: {key}')
    path = (ROOT / record['path']).resolve()
    try:
        path.relative_to(ROOT.resolve())
    except ValueError as exc:
        raise RuntimeError(f'CURRENT_RECEIPT_PATH_OUTSIDE_PACKAGE: {key}') from exc
    return path, record['sha256']


def verify_current_recorded() -> None:
    manifest_path = ROOT / 'verification' / 'current-lock-replay-manifest.json'
    manifest = json.loads(manifest_path.read_text(encoding='utf-8'))
    if manifest.get('schema') != 'mathcase-r66-current-lock-replay-manifest-v1':
        raise RuntimeError('CURRENT_RECEIPT_MANIFEST_SCHEMA_MISMATCH')
    if manifest.get('lake_manifest_sha256') != EXPECTED['lake-manifest.json']:
        raise RuntimeError('CURRENT_RECEIPT_LOCK_PIN_MISMATCH')
    if manifest.get('source_manifest_sha256') != EXPECTED['source-manifest.json']:
        raise RuntimeError('CURRENT_RECEIPT_SOURCE_PIN_MISMATCH')
    if manifest.get('mathlib_commit') != '0df444a360eaa60ab8c11dca51a86af692955474':
        raise RuntimeError('CURRENT_RECEIPT_MATHLIB_PIN_MISMATCH')
    for key in ('pass_receipt', 'execution_receipt', 'audit_output', 'first_run_failure_summary', 'historical_receipt'):
        path, expected = _manifest_file(manifest, key)
        if not path.is_file() or sha256_file(path) != expected:
            raise RuntimeError(f'CURRENT_RECEIPT_FILE_HASH_MISMATCH: {key}')
    run_path, _ = _manifest_file(manifest, 'pass_receipt')
    run = json.loads(run_path.read_text(encoding='utf-8'))
    execution_path, _ = _manifest_file(manifest, 'execution_receipt')
    execution = json.loads(execution_path.read_text(encoding='utf-8'))
    if run.get('status') != 'PASS' or run.get('sorryAx') is not False:
        raise RuntimeError('CURRENT_REPLAY_NOT_A_PASS')
    if run.get('source_manifest_sha256') != EXPECTED['source-manifest.json']:
        raise RuntimeError('CURRENT_REPLAY_SOURCE_MANIFEST_MISMATCH')
    if run.get('mathlib_commit') != manifest.get('mathlib_commit'):
        raise RuntimeError('CURRENT_REPLAY_MATHLIB_COMMIT_MISMATCH')
    if run.get('lean_version') != manifest.get('lean_version'):
        raise RuntimeError('CURRENT_REPLAY_LEAN_VERSION_MISMATCH')
    audit_path, audit_sha = _manifest_file(manifest, 'audit_output')
    if (audit_sha != '5dc2619cfc1323829e85eaab6fce425c194a29bfdb4a81a4fb514b8491d11ffc'
            or sha256_file(audit_path) != audit_sha
            or audit_path.read_text(encoding='utf-8') != EXPECTED_AUDIT):
        raise RuntimeError('CURRENT_AUDIT_OUTPUT_MISMATCH')
    if (manifest.get('fresh_audit_output_sha256') != audit_sha
            or run.get('fresh_audit_output_sha256') != audit_sha):
        raise RuntimeError('CURRENT_REPLAY_AUDIT_HASH_MISMATCH')
    if run.get('axioms') != ['propext', 'Classical.choice', 'Quot.sound']:
        raise RuntimeError('CURRENT_REPLAY_AXIOM_SET_MISMATCH')
    if '4.33.1' not in run.get('lean_version', ''):
        raise RuntimeError('CURRENT_REPLAY_LEAN_VERSION_MISMATCH')
    if execution.get('process_exit') != 0 or execution.get('project_outputs_initially_absent') is not True:
        raise RuntimeError('CURRENT_EXECUTION_RECORD_MISMATCH')
    if execution.get('lake_lock_sha256') != EXPECTED['lake-manifest.json']:
        raise RuntimeError('CURRENT_EXECUTION_LOCK_MISMATCH')
    if not manifest.get('pass_receipt_is_raw_execution_json'):
        raise RuntimeError('CURRENT_RECEIPT_IS_NOT_RAW_EXECUTION_JSON')
    if execution.get('replay_receipt_sha256') != sha256_file(run_path):
        raise RuntimeError('CURRENT_EXECUTION_RECEIPT_HASH_MISMATCH')
    if run.get('replay_driver_sha256') != manifest.get('replay_driver_sha256_at_run'):
        raise RuntimeError('CURRENT_REPLAY_DRIVER_HASH_MISMATCH')
    failure_path, _ = _manifest_file(manifest, 'first_run_failure_summary')
    failure = json.loads(failure_path.read_text(encoding='utf-8'))
    if failure.get('original_receipt_sha256') != 'dbbb91872b2c84aad8e81a5d8aeab34b0a2f3e9b8c0ce41f3d336241471e6eaa':
        raise RuntimeError('FIRST_RUN_FAILURE_PROVENANCE_MISMATCH')
    if execution.get('python_output_encoding') != 'UTF-8':
        raise RuntimeError('CURRENT_EXECUTION_ENCODING_MISMATCH')
    if execution.get('source_commit') != manifest.get('source_commit'):
        raise RuntimeError('CURRENT_EXECUTION_SOURCE_COMMIT_MISMATCH')
    commands = run.get('commands', [])
    build_ok = any(c.get('argv') == ['lake', 'build', '-Kjobs=1', 'MathCase'] and c.get('exit_code') == 0 for c in commands)
    audit_ok = any(c.get('argv') == ['lake', 'env', 'lean', 'Audit.lean'] and c.get('exit_code') == 0 for c in commands)
    if not build_ok or not audit_ok or run.get('clean_source_preflight') != 'PASS':
        raise RuntimeError('CURRENT_REPLAY_COMMAND_RECORD_MISMATCH')


def verify_historical_receipt() -> None:
    manifest = json.loads((ROOT / 'verification' / 'current-lock-replay-manifest.json').read_text(encoding='utf-8'))
    path, expected = _manifest_file(manifest, 'historical_receipt')
    prior = json.loads(path.read_text(encoding='utf-8'))
    historical_lock = prior.get('toolchain', {}).get('lake_manifest_sha256')
    current_lock = digest((ROOT / 'lake-manifest.json').read_bytes())
    if sha256_file(path) != expected or prior.get('status') != 'PASS':
        raise RuntimeError('HISTORICAL_RECEIPT_NOT_PRESERVED')
    if historical_lock != manifest.get('historical_lock_sha256') or historical_lock == current_lock:
        raise RuntimeError('HISTORICAL_RECEIPT_BINDING_MISMATCH')
    if prior.get('axiom_audit', {}).get('output', {}).get('sha256') != EXPECTED['verification/axiom-audit.txt']:
        raise RuntimeError('HISTORICAL_RECEIPT_AUDIT_BINDING_MISMATCH')


def main() -> int:
    configure_utf8_console()
    parser = argparse.ArgumentParser(description='Rebuild and audit the pinned R(6,6) >= 102 Lean witness.')
    parser.add_argument('--verify-inputs', action='store_true', help='check package input hashes without invoking Lean or Lake')
    parser.add_argument('--verify-recorded', action='store_true', help='verify the fresh replay receipt for the current Lake lock')
    parser.add_argument('--verify-historical', action='store_true', help='verify the preserved older receipt and its historical lock mismatch')
    parser.add_argument('--receipt', type=Path, help='write a run receipt at this path; default is a unique timestamped file')
    parser.add_argument('--check-clean-build', action='store_true', help='check that no pinned MathCase OLEANs pre-exist; does not invoke Lean or Lake')
    args = parser.parse_args()
    verify_modes = [args.verify_inputs, args.verify_recorded, args.verify_historical]
    if args.check_clean_build and (any(verify_modes) or args.receipt):
        parser.error('--check-clean-build is a standalone preflight mode')
    if args.receipt and any(verify_modes):
        parser.error('--receipt cannot be used with a saved-file verification mode')
    if sum(bool(mode) for mode in verify_modes) > 1:
        parser.error('choose only one verification mode')
    if args.check_clean_build:
        try:
            bound = verify_inputs()
            require_fresh_mathcase_outputs()
            print('PASS: package inputs are pinned and no MathCase OLEANs pre-exist.')
            print('No Lean or Lake command was run.')
            return 0
        except Exception as exc:
            print(f'FAIL: {exc}', file=sys.stderr)
            return 1

    if args.verify_inputs or args.verify_recorded or args.verify_historical:
        try:
            bound = verify_inputs()
            if args.verify_recorded:
                verify_current_recorded()
                print('PASS: the fresh replay receipt, execution record, captured audit output, and current Lake lock match their hashes.')
            elif args.verify_historical:
                verify_historical_receipt()
                print('PASS: the original historical receipt is unchanged and explicitly binds the older lock; it is not a replay of the current lock.')
            else:
                print('PASS: current package input hashes and recorded audit text match their pins.')
            print('No Lean or Lake command was run; these modes verify saved files only.')
            print(f"Mathlib: {bound['mathlib_commit']}; MathCase modules in manifest: {bound['mathcase_source_count']}.")
            print(f"Current lake-manifest SHA-256: {EXPECTED['lake-manifest.json']}.")
            return 0
        except Exception as exc:
            print(f'FAIL: {exc}', file=sys.stderr)
            return 1

    receipt_path = args.receipt or choose_receipt()
    if not receipt_path.is_absolute():
        receipt_path = ROOT / receipt_path
    commands = []
    result = {'schema': 'mathcase-r66-single-command-replay-v1',
              'replay_driver_sha256': digest(Path(__file__).read_bytes()),
              'started_utc': datetime.now(timezone.utc).isoformat(),
              'status': 'RUNNING', 'commands': commands,
              'claim_scope': 'Known R(6,6) lower bound from a 101-vertex witness; not a new or exact value.'}
    started = time.monotonic()
    def run(argv: list[str]) -> str:
        entry = {'argv': argv, 'exit_code': None, 'elapsed_seconds': None, 'stdout': '', 'stderr': ''}
        commands.append(entry)
        before = time.monotonic()
        cp = subprocess.run(argv, cwd=ROOT, text=True, encoding='utf-8', errors='replace', capture_output=True)
        entry.update(exit_code=cp.returncode, elapsed_seconds=round(time.monotonic()-before, 3), stdout=cp.stdout, stderr=cp.stderr)
        if cp.stdout:
            print(cp.stdout, end='' if cp.stdout.endswith('\n') else '\n')
        if cp.stderr:
            print(cp.stderr, end='' if cp.stderr.endswith('\n') else '\n', file=sys.stderr)
        if cp.returncode:
            raise RuntimeError(f'COMMAND_FAILED: {" ".join(argv)} (exit {cp.returncode})')
        return cp.stdout
    try:
        bound = verify_inputs()
        result.update(bound)
        require_fresh_mathcase_outputs()
        result['clean_source_preflight'] = 'PASS'
        packages = ROOT / '.lake' / 'packages'
        if not (packages / 'mathlib').is_dir():
            run(['lake', 'update'])
            if digest((ROOT / 'lake-manifest.json').read_bytes()) != EXPECTED['lake-manifest.json']:
                raise RuntimeError('LOCKFILE_CHANGED_AFTER_LAKE_UPDATE')
        run(['lake', 'exe', 'cache', 'get'])
        lean_version = run(['lake', 'env', 'lean', '--version']).strip()
        if '4.33.1' not in lean_version:
            raise RuntimeError(f'LEAN_VERSION_MISMATCH: {lean_version}')
        run(['lake', 'build', '-Kjobs=1', 'MathCase'])
        audit = run(['lake', 'env', 'lean', 'Audit.lean']).replace('\r\n', '\n')
        audit_bytes = audit.encode('utf-8')
        if audit != EXPECTED_AUDIT:
            raise RuntimeError('FRESH_AUDIT_TEXT_MISMATCH')
        result.update(status='PASS', lean_version=lean_version,
                      fresh_audit_output_sha256=hashlib.sha256(audit_bytes).hexdigest(),
                      axioms=['propext', 'Classical.choice', 'Quot.sound'],
                      sorryAx=False)
    except Exception as exc:
        result.update(status='FAIL', failure=str(exc))
    finally:
        result['elapsed_seconds'] = round(time.monotonic()-started, 3)
        result['completed_utc'] = datetime.now(timezone.utc).isoformat()
        result['source_manifest_sha256'] = EXPECTED['source-manifest.json']
        receipt_path.parent.mkdir(parents=True, exist_ok=True)
        receipt_path.write_text(json.dumps(result, indent=2)+'\n', encoding='utf-8')
    print(f"Replay status: {result['status']}")
    print(f"Receipt: {receipt_path.relative_to(ROOT) if receipt_path.is_relative_to(ROOT) else receipt_path}")
    if result['status'] == 'PASS':
        print('Axioms: [propext, Classical.choice, Quot.sound]; sorryAx: absent.')
        return 0
    print(f"Failure: {result.get('failure', 'unknown')}", file=sys.stderr)
    return 1

if __name__ == '__main__':
    raise SystemExit(main())

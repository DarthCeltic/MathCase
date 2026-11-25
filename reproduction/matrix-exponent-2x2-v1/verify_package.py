from __future__ import annotations
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
MANIFEST = ROOT / 'package-manifest.json'
FORBIDDEN = (chr(67) + ':' + chr(92), chr(84) + ':' + chr(92), chr(47) + 'Users' + chr(47), chr(47) + 'home' + chr(47))

def main():
    data = json.loads(MANIFEST.read_text(encoding='utf-8'))
    declared = data.get('files', {})
    actual = {p.name for p in ROOT.iterdir() if p.is_file() and p.name != MANIFEST.name}
    if actual != set(declared):
        print('FAIL package file set differs from manifest')
        return 1
    for name, entry in declared.items():
        p = ROOT / name
        raw = p.read_bytes()
        if len(raw) != entry.get('bytes') or hashlib.sha256(raw).hexdigest().upper() != entry.get('sha256'):
            print(f'FAIL package hash: {name}')
            return 1
        text = raw.decode('utf-8')
        if any(token.lower() in text.lower() for token in FORBIDDEN):
            print(f'FAIL private absolute path in {name}')
            return 1
    print(f'PASS package manifest: {len(declared)} files; hashes match; no private absolute paths')
    return 0

if __name__ == '__main__':
    raise SystemExit(main())

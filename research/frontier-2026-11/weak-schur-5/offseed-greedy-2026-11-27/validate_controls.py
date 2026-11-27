import json
from pathlib import Path
from search import direct_check
from sys import path
path.insert(0, str(Path(__file__).parents[2] / 'mathcase-human-link-fix-20261126' / 'research' / 'frontier-2026-11' / 'weak-schur-5' / 'class-extensions'))
from verify_weak_schur import source, verify

root=Path(__file__).parent
seed=source('rowley', root/'inputs') if (root/'inputs').exists() else None
if seed is None:
    raise SystemExit('copy the hash-pinned Rowley input to inputs/rowley before running')
broken=seed[:]; broken[1]=((broken[1])%5)+1
report={"known_207":{"direct_conflicts":len(direct_check(seed)),"formal_check":verify(seed)},"broken_207":{"direct_conflicts":len(direct_check(broken)),"formal_check":verify(broken)}}
(root/'controls.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))

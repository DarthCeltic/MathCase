from __future__ import annotations
import hashlib
import json
from pathlib import Path
from prepare_query import build_query

ROOT = Path(__file__).resolve().parent

def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def direct(colors: list[int]) -> list[list[int]]:
    out=[]
    for a in range(1,209):
        for b in range(a+1,208-a+1):
            c=a+b
            if colors[a-1] == colors[b-1] == colors[c-1]:
                out.append([a,b,c,colors[a-1]])
    return out

def by_color_sets(colors: list[int]) -> list[list[int]]:
    out=[]
    classes={color:{i+1 for i,value in enumerate(colors) if value==color} for color in range(1,6)}
    for color, values in classes.items():
        for a in values:
            for b in values:
                if b <= a:
                    continue
                c=a+b
                if c <= 208 and c in values:
                    out.append([a,b,c,color])
    return sorted(out)

def main() -> None:
    candidate_raw=(ROOT/'candidate.json').read_bytes()
    candidate=json.loads(candidate_raw.decode('utf-8'))
    colors=candidate['colors_1_to_208']
    assert len(colors)==208 and all(type(c) is int and 1<=c<=5 for c in colors)
    found=direct(colors); second=by_color_sets(colors)
    assert found==second==[[4,8,12,3]]
    assert candidate['exact_violations']==[[4,8,12,3]]
    formula=(ROOT/'check-at-most-three.smt2').read_bytes()
    assert formula==build_query(colors)
    result=json.loads((ROOT/'solver-result.json').read_text(encoding='utf-8'))
    stdout=(ROOT/'solver-stdout.txt').read_bytes(); stderr=(ROOT/'solver-stderr.txt').read_bytes()
    assert stdout==b'unsat\n' and not stderr
    assert result['solver_status']=='unsat' and result['exit_code']==0
    assert sha(candidate_raw)==result['candidate_file_sha256']
    assert sha(formula)==result['formula_sha256']
    assert sha(stdout)==result['stdout_sha256'] and sha(stderr)==result['stderr_sha256']
    assert result['distance_limit']==3 and result['constraints']==10712
    assert result['local_raw_receipt_sha256']=='663f452c2e3cb6bfdc8b48413b516287578ee195365d3c9fc406eb5a0a077c4f'
    damaged=colors.copy(); damaged[0]=damaged[1]=damaged[2]=1
    assert [1,2,3,1] in direct(damaged) and [1,2,3,1] in by_color_sets(damaged)
    origin=json.loads((ROOT/'candidate-origin.json').read_text(encoding='utf-8'))
    formula_audit=json.loads((ROOT/'local-formula-audit.json').read_text(encoding='utf-8'))
    assert origin['public_candidate_json_sha256']==sha(candidate_raw)
    assert origin['source_candidate_json_sha256']==result['source_candidate_file_sha256']==formula_audit['candidate_file_sha256']
    assert origin['remaining_conflict']==[4,8,12,3] and origin['best_conflict_count']==1
    exhaustive=json.loads((ROOT/'exhaustive-radius3-result.json').read_text(encoding='utf-8'))
    exhaustive_source=(ROOT/'exhaustive_radius3.py').read_bytes()
    assert exhaustive['status']=='NO_REPAIR_WITHIN_RADIUS_3_EXHAUSTIVE' and exhaustive['witness'] is None
    assert exhaustive['input_candidate_file_sha256']==sha(candidate_raw)
    assert exhaustive['source_candidate_json_sha256']==origin['source_candidate_json_sha256']
    assert exhaustive['script_sha256']==sha(exhaustive_source)
    assert exhaustive['all_constraints']==10712 and exhaustive['distance_limit']==3
    assert exhaustive['candidate_assignments_by_distance']=={'1':12,'2':9888,'3':4054144}
    assert exhaustive['candidate_assignments_checked']==4064044
    assert exhaustive['minimum_conflict_count_by_distance']=={'1':9,'2':8,'3':7}
    assert exhaustive['delta_formula_sample_checks']==300 and exhaustive['structured_delta_crosschecks']==384
    package_manifest=json.loads((ROOT/'public-manifest.json').read_text(encoding='utf-8'))
    for name, entry in package_manifest['payload_files'].items():
        raw=(ROOT/name).read_bytes()
        assert len(raw)==entry['bytes'] and sha(raw)==entry['sha256'], name
    assert package_manifest['private_solver_receipt_sha256']==result['local_raw_receipt_sha256']
    print(json.dumps({'status':'PASS','candidate_file_sha256':sha(candidate_raw),'candidate_conflicts':found,'independent_checkers_agree':True,'planted_error_control':'REJECTED','formula_sha256':sha(formula),'formula_exactly_reconstructed':True,'solver_result_bound_and_hashed':True,'exhaustive_replay_receipt_bound':True,'package_manifest_matches':True},indent=2))

if __name__=='__main__': main()

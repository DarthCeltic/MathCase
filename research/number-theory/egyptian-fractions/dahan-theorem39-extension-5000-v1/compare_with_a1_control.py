"""Compare the published Theorem 3.9 rows with the matched a=1 control."""
import argparse, json
from pathlib import Path

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--full', default='result.json')
    ap.add_argument('--control', required=True)
    ap.add_argument('--output', required=True)
    args=ap.parse_args()
    full=json.loads(Path(args.full).read_text())['records']
    control={r['n']:r for r in json.loads(Path(args.control).read_text())['records']}
    rows=[]
    for r in full:
        q=control[r['n']]
        rows.append({'n':r['n'],'full_a':r.get('a'),'full_u':r.get('u'),'a1_u':q.get('u')})
    out={
        'full_rows':len(rows),
        'full_minimal_a_gt_1':sum(r['full_a'] > 1 for r in rows),
        'full_minimal_a_eq_1':sum(r['full_a'] == 1 for r in rows),
        'a1_control_misses':sum(r['a1_u'] is None for r in rows),
        'a1_control_misses_recovered_by_full':sum(r['a1_u'] is None and r['full_a'] is not None for r in rows),
        'same_u_when_full_a1':sum(r['full_a'] == 1 and r['full_u'] == r['a1_u'] for r in rows),
        'full_max_u':max(r['full_u'] for r in rows),
        'a1_control_max_u':max(r['a1_u'] for r in rows if r['a1_u'] is not None),
        'interpretation':'Finite comparison of the two published tables; not an asymptotic or novelty claim.',
    }
    Path(args.output).write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print(json.dumps(out,indent=2,sort_keys=True))
if __name__=='__main__':main()

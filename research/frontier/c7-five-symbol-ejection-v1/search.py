import argparse, json, random, time
from pathlib import Path

N = 7 ** 5

def digits(x):
    return tuple((x // (7 ** j)) % 7 for j in range(5))

def conflict(a, b):
    return all((x - y) % 7 in (0, 1, 6) for x, y in zip(digits(a), digits(b)))

def conflicts_with(v, chosen):
    return [u for u in chosen if conflict(v, u)]

def refill(chosen, rng, candidates, rounds=2):
    chosen = set(chosen)
    for _ in range(rounds):
        # A bounded sample keeps refill from consuming the whole cap on one
        # full-graph scan; the search remains heuristic and non-exhaustive.
        order = rng.sample(candidates, min(800, len(candidates)))
        for v in order:
            if v not in chosen and not conflicts_with(v, chosen):
                chosen.add(v)
    return chosen

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--base', type=Path, required=True)
    ap.add_argument('--seconds', type=float, default=45)
    ap.add_argument('--seed', type=int, default=281129)
    ap.add_argument('--out', type=Path, required=True)
    args = ap.parse_args()
    base = json.loads(args.base.read_text(encoding='utf-8'))
    seed = set(base['I0'])
    all_words = list(range(N))
    rng = random.Random(args.seed)
    best = set(seed)
    best_trace = []
    starts = 0
    moves = 0
    deadline = time.monotonic() + args.seconds
    while time.monotonic() < deadline:
        starts += 1
        current = set(seed)
        # A chain removes the conflicts of a random outsider, then refills.
        for _ in range(80):
            if time.monotonic() >= deadline:
                break
            v = rng.choice(all_words)
            if v in current:
                continue
            bad = conflicts_with(v, current)
            if not bad:
                current.add(v)
            else:
                trial = current.difference(bad)
                trial.add(v)
                # Permit temporary losses, but keep chains from drifting far.
                if len(trial) >= len(current) - 4 or rng.random() < 0.03:
                    current = refill(trial, rng, all_words, rounds=1)
            moves += 1
            if len(current) > len(best):
                best = set(current)
                best_trace.append({'move': moves, 'size': len(best)})
                if len(best) >= 368:
                    break
        if len(best) >= 368:
            break
    result = {
        'schema': 'c7-ejection-chain-v1',
        'status': 'FOUND_368_CANDIDATE' if len(best) >= 368 else 'NO_368_FOUND_UNKNOWN',
        'objective': 'search for an independent set of 368 vertices in the fivefold C7 graph',
        'method': 'random ejection chains from published 367 seed with conflict removal and greedy refill',
        'seed': args.seed, 'time_cap_seconds': args.seconds,
        'starts': starts, 'moves': moves, 'best_size': len(best),
        'best_codes': sorted(best), 'improvements': best_trace,
        'base_sha256': None,
    }
    import hashlib
    result['base_sha256'] = hashlib.sha256(args.base.read_bytes()).hexdigest()
    args.out.mkdir(parents=True, exist_ok=True)
    (args.out / 'search-result.json').write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
    (args.out / 'run-record.json').write_text(json.dumps({
        'command': f'python -u search.py --base <base_c7.json> --seconds {args.seconds:g} --seed {args.seed} --out .',
        'python': __import__('sys').version.split()[0], 'status': result['status'],
        'best_size': len(best), 'starts': starts, 'moves': moves,
        'elapsed_seconds': round(args.seconds - max(0, deadline-time.monotonic()), 6),
        'base_sha256': result['base_sha256'], 'no_external_calls': True,
    }, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({k: result[k] for k in ('status','best_size','starts','moves','seed')}, indent=2))

if __name__ == '__main__':
    main()

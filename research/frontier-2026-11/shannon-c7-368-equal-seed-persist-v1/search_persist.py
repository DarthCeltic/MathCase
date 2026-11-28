import argparse, hashlib, json, random, time
from pathlib import Path

N = 7 ** 5

def digits(x):
    return tuple((x // (7 ** j)) % 7 for j in range(5))

def conflict(a, b):
    return all((x - y) % 7 in (0, 1, 6) for x, y in zip(digits(a), digits(b)))

def valid(code):
    values = sorted(code)
    return all(not conflict(a, b) for i, a in enumerate(values) for b in values[i + 1:])

def conflicts_with(v, chosen):
    return [u for u in chosen if conflict(v, u)]

def refill(chosen, rng, candidates):
    chosen = set(chosen)
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
    seed_code = set(base['I0'])
    all_words = list(range(N))
    rng = random.Random(args.seed)
    deadline = time.monotonic() + args.seconds
    best = set(seed_code)
    retained = {}
    starts = 0
    moves = 0
    while time.monotonic() < deadline:
        starts += 1
        if retained and rng.random() < 0.7:
            current = set(rng.choice(list(retained.values())))
        else:
            current = set(seed_code)
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
                if len(trial) >= len(current) - 4 or rng.random() < 0.03:
                    current = refill(trial, rng, all_words)
            moves += 1
            if len(current) > len(best):
                best = set(current)
            if len(current) >= 368:
                break
            if len(current) == len(seed_code) and current != seed_code and valid(current):
                digest = hashlib.sha256(','.join(map(str, sorted(current))).encode()).hexdigest()
                retained.setdefault(digest, sorted(current))
            if len(retained) >= 100:
                break
        if len(best) >= 368:
            break
    args.out.mkdir(parents=True, exist_ok=True)
    result = {
        'schema': 'c7-ejection-persist-equal-v1',
        'status': 'FOUND_368_CANDIDATE' if len(best) >= 368 else 'NO_368_FOUND_UNKNOWN',
        'method': 'random ejection chains that persist and reseed from distinct valid 367-sized codes',
        'seed': args.seed, 'time_cap_seconds': args.seconds,
        'starts': starts, 'moves': moves, 'best_size': len(best),
        'retained_equal_size_codes': len(retained),
        'retained_equal_size_hashes': sorted(retained),
        'best_codes': sorted(best),
        'base_sha256': hashlib.sha256(args.base.read_bytes()).hexdigest(),
    }
    (args.out / 'search-result.json').write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
    (args.out / 'equal-size-seeds.json').write_text(json.dumps(retained, indent=2) + '\n', encoding='utf-8')
    (args.out / 'run-record.json').write_text(json.dumps({
        'command': f'python -B search_persist.py --base <base_c7.json> --seconds {args.seconds:g} --seed {args.seed} --out .',
        'status': result['status'], 'best_size': len(best), 'starts': starts, 'moves': moves,
        'retained_equal_size_codes': len(retained), 'no_external_calls': True,
    }, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({k: result[k] for k in ('status', 'best_size', 'starts', 'moves', 'retained_equal_size_codes')}, indent=2))

if __name__ == '__main__':
    main()

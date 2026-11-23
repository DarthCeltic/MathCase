from __future__ import annotations
import argparse
import hashlib
import json
import math
import pathlib
import time

STEPS = 21
CUTOFF = 13
MODULUS = 1 << STEPS
EXPECTED_QUALIFYING = 1_898_712
EXPECTED_WEIGHT_14 = math.comb(STEPS, 14)


def accelerated_step(n: int) -> int:
    return n // 2 if n % 2 == 0 else (3 * n + 1) // 2


def ordinary_step(n: int) -> int:
    return n // 2 if n % 2 == 0 else 3 * n + 1


def run() -> dict:
    started = time.monotonic()
    weights = [0] * (STEPS + 1)
    eligible = positive_eligible = endpoint_mismatches = non_descents = 0
    weight14 = weight14_descents = 0
    examples = []
    stream = hashlib.sha256()
    boundary_stream = hashlib.sha256()
    for residue in range(MODULUS):
        x = residue
        odd_count = 0
        for _ in range(STEPS):
            odd_count += x & 1
            x = accelerated_step(x)
        weights[odd_count] += 1
        ordinary = residue
        for _ in range(STEPS + odd_count):
            ordinary = ordinary_step(ordinary)
        stream.update(f"{residue},{odd_count},{x},{ordinary}\n".encode('ascii'))
        endpoint_mismatches += ordinary != x
        if odd_count <= CUTOFF:
            eligible += 1
            if residue >= 3:
                positive_eligible += 1
                if ordinary >= residue:
                    non_descents += 1
                    if len(examples) < 10:
                        examples.append({'residue': residue, 'odd_count': odd_count,
                                         'endpoint': ordinary})
        if odd_count == 14:
            weight14 += 1
            start = MODULUS + residue
            endpoint = start
            for _ in range(STEPS + 14):
                endpoint = ordinary_step(endpoint)
            boundary_stream.update(f"{residue},{start},{endpoint}\n".encode('ascii'))
            if endpoint < start:
                weight14_descents += 1
    expected_weights = [math.comb(STEPS, h) for h in range(STEPS + 1)]
    result = {
        'schema': 'mathcase-collatz-at-most-13-of-21-finite-census-v1',
        'status': 'UNSET',
        'modulus': MODULUS,
        'accelerated_steps': STEPS,
        'odd_input_cutoff': CUTOFF,
        'ordinary_endpoint': '21 + h, where h is the number of odd accelerated inputs',
        'weight_counts_match_binomial': weights == expected_weights,
        'weight_counts': weights,
        'expected_weight_counts': expected_weights,
        'qualifying_residue_count': eligible,
        'expected_qualifying_residue_count': EXPECTED_QUALIFYING,
        'qualifying_fraction': f'{eligible}/{MODULUS}',
        'qualifying_percent': 100 * eligible / MODULUS,
        'positive_base_residues_at_least_3_checked': positive_eligible,
        'ordinary_vs_accelerated_endpoint_mismatches': endpoint_mismatches,
        'non_descent_count_for_qualifying_residues_at_least_3': non_descents,
        'non_descent_examples': examples,
        'all_residue_stream_sha256': stream.hexdigest(),
        'exactly_14_odd_residue_count': weight14,
        'expected_exactly_14_odd_residue_count': EXPECTED_WEIGHT_14,
        'k1_step35_descent_count_for_14_odd_families': weight14_descents,
        'expected_k1_step35_descent_count_for_14_odd_families': 0,
        'weight14_representative_stream_sha256': boundary_stream.hexdigest(),
        'elapsed_seconds': round(time.monotonic() - started, 3),
        'external_spend_usd': 0,
        'network_used': False,
    }
    result['status'] = 'PASS' if (
        result['weight_counts_match_binomial']
        and eligible == EXPECTED_QUALIFYING
        and endpoint_mismatches == 0
        and non_descents == 0
        and weight14 == EXPECTED_WEIGHT_14
        and weight14_descents == 0
    ) else 'FAIL'
    return result


def main() -> int:
    parser = argparse.ArgumentParser(description='Exhaustively check all 21-bit Collatz parity residues and the 14-odd boundary representatives.')
    parser.add_argument('--output', type=pathlib.Path, help='optional JSON receipt path')
    args = parser.parse_args()
    result = run()
    text = json.dumps(result, indent=2, sort_keys=True) + '\n'
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(text, encoding='utf-8')
    print(text, end='')
    return 0 if result['status'] == 'PASS' else 1


if __name__ == '__main__':
    raise SystemExit(main())

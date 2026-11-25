from __future__ import annotations
import argparse
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent

class Counts:
    def __init__(self):
        self.multiplications = 0
        self.additions_subtractions = 0
    def mul(self, x, y):
        self.multiplications += 1
        return x * y
    def add(self, x, y):
        self.additions_subtractions += 1
        return x + y
    def sub(self, x, y):
        self.additions_subtractions += 1
        return x - y

def ordinary(a, b):
    c = Counts()
    out = [
        [c.add(c.mul(a[0][0], b[0][0]), c.mul(a[0][1], b[1][0])),
         c.add(c.mul(a[0][0], b[0][1]), c.mul(a[0][1], b[1][1]))],
        [c.add(c.mul(a[1][0], b[0][0]), c.mul(a[1][1], b[1][0])),
         c.add(c.mul(a[1][0], b[0][1]), c.mul(a[1][1], b[1][1]))],
    ]
    return out, c

def strassen(a, b):
    c = Counts()
    aa, ab, ac, ad = a[0][0], a[0][1], a[1][0], a[1][1]
    be, bf, bg, bh = b[0][0], b[0][1], b[1][0], b[1][1]
    p1 = c.mul(aa, c.sub(bf, bh))
    p2 = c.mul(c.add(aa, ab), bh)
    p3 = c.mul(c.add(ac, ad), be)
    p4 = c.mul(ad, c.sub(bg, be))
    p5 = c.mul(c.add(aa, ad), c.add(be, bh))
    p6 = c.mul(c.sub(ab, ad), c.add(bg, bh))
    p7 = c.mul(c.sub(aa, ac), c.add(be, bf))
    out = [
        [c.add(c.sub(c.add(p5, p4), p2), p6), c.add(p1, p2)],
        [c.add(p3, p4), c.sub(c.sub(c.add(p1, p5), p3), p7)],
    ]
    return out, c, [p1, p2, p3, p4, p5, p6, p7]

def main():
    parser = argparse.ArgumentParser(description='Check one integer 2x2 matrix multiplication example.')
    parser.add_argument('--wrong-control', action='store_true', help='deliberately change the expected product; should fail')
    args = parser.parse_args()
    example = json.loads((ROOT / 'worked-example.json').read_text(encoding='utf-8'))
    a, b = example['a'], example['b']
    ordinary_out, ordinary_count = ordinary(a, b)
    strassen_out, strassen_count, products = strassen(a, b)
    expected = example['expected_product']
    if args.wrong_control:
        expected = [[expected[0][0] + 1, expected[0][1]], expected[1][:]]
    if ordinary_out != expected or strassen_out != expected or ordinary_out != strassen_out:
        print('FAIL: ordinary and Strassen outputs do not match the expected product')
        return 1
    if (ordinary_count.multiplications, ordinary_count.additions_subtractions) != (8, 4):
        print('FAIL: ordinary operation count')
        return 1
    if (strassen_count.multiplications, strassen_count.additions_subtractions) != (7, 18):
        print('FAIL: Strassen operation count')
        return 1
    print('PASS: both methods give [[19, 22], [43, 50]]')
    print('Ordinary: 8 scalar multiplications, 4 additions')
    print(f'Strassen: 7 scalar multiplications, 18 additions/subtractions; products={products}')
    print('Scope: this is one arithmetic example, not an asymptotic theorem check.')
    return 0

if __name__ == '__main__':
    raise SystemExit(main())

from fractions import Fraction as F
import json


def add(p, q):
    return (p[0] + q[0], p[1] + q[1])


def sub(p, q):
    return (p[0] - q[0], p[1] - q[1])


def midpoint(b, c):
    return ((b[0] + c[0]) / 2, (b[1] + c[1]) / 2)


def dot(p, q):
    return p[0] * q[0] + p[1] * q[1]


def squared_distance(p, q):
    d = sub(p, q)
    return d[0] ** 2 + d[1] ** 2


def check(a, b, c):
    u, v = sub(b, a), sub(c, a)
    m = midpoint(b, c)
    return {
        "dot_product": str(dot(u, v)),
        "squared_distances": [str(squared_distance(m, p)) for p in (a, b, c)],
    }


cases = {
    "axis_aligned_right_triangle": check((F(0), F(0)), (F(6), F(0)), (F(0), F(8))),
    "oblique_right_triangle": check((F(1), F(-2)), (F(4), F(2)), (F(-3), F(1))),
    "changed_condition_control": check((F(1), F(-2)), (F(4), F(2)), (F(-3), F(2))),
}
expected = {
    "axis_aligned_right_triangle": {"dot_product": "0", "squared_distances": ["25", "25", "25"]},
    "oblique_right_triangle": {"dot_product": "0", "squared_distances": ["25/2", "25/2", "25/2"]},
    "changed_condition_control": {"dot_product": "4", "squared_distances": ["65/4", "49/4", "49/4"]},
}
if cases != expected:
    raise SystemExit(json.dumps({"status": "FAIL", "actual": cases, "expected": expected}, indent=2))
print(json.dumps({"status": "PASS", "cases": cases}, indent=2))
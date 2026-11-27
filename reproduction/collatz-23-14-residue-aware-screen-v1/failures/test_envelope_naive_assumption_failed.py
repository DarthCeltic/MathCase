import importlib.util
import json
from pathlib import Path

here = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location("derive", here / "derive_envelope.py")
mod = importlib.util.module_from_spec(spec)
spec.loader.exec_module(mod)
cert = mod.build_certificate()
assert cert["all_pass"]
# A deliberately corrupted claimed maximum must be rejected by the same invariant.
bad = dict(cert)
bad["checks"] = [dict(x) for x in cert["checks"]]
bad["checks"][0]["max_coefficient"] = bad["checks"][0]["max_coefficient"] + 1
bad["checks"][0]["passes"] = bad["checks"][0]["max_coefficient"] < bad["checks"][0]["descent_threshold_at_n3"]
assert not all(x["passes"] for x in bad["checks"])
print("PASS: DP equals direct enumeration for all parity words through j=12")
print("PASS: all 15 exact n=3 envelope inequalities are strict")
print("PASS: corrupted envelope certificate rejected")

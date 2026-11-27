#!/usr/bin/env python3
"""Run both exact methods, controls, and write path-free replay receipts."""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
import math
import platform
import re
from pathlib import Path

import independent_minors
import integer_homology
import verify_hashes
from homology import SURFACES

ROOT = Path(__file__).resolve().parent
PARENT = ROOT.parent
REPOSITORY_ROOT = ROOT.parents[2]


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def write_json(path: Path, value: object) -> None:
    with path.open("w", encoding="utf-8", newline="\n") as stream:
        stream.write(json.dumps(value, indent=2, sort_keys=True) + "\n")


def check_saved_cw_model() -> dict:
    cw_root = PARENT / "integer-cw-v1"
    manifest_path = cw_root / "SHA256SUMS"
    verified_hashes = {}
    for line_number, line in enumerate(manifest_path.read_text(encoding="utf-8").splitlines(), start=1):
        if not line or line.startswith("#"):
            continue
        match = re.fullmatch(r"([0-9a-f]{64})  ([^\r\n]+)", line)
        if not match:
            raise AssertionError(f"CW manifest has invalid line {line_number}")
        expected_hash, relative = match.groups()
        target = (cw_root / relative).resolve()
        if not target.is_relative_to(REPOSITORY_ROOT) or not target.is_file():
            raise AssertionError(f"CW manifest target is missing or outside the repository: {relative}")
        if sha256(target) != expected_hash:
            raise AssertionError(f"CW evidence hash mismatch: {relative}")
        verified_hashes[relative] = expected_hash
    if not verified_hashes:
        raise AssertionError("CW manifest is empty")

    primary_path = cw_root / "evidence" / "primary-run.json"
    independent_path = cw_root / "evidence" / "independent-run.json"
    fresh_replay_path = ROOT / "evidence" / "cw-model-crosscheck.json"
    primary = json.loads(primary_path.read_text(encoding="utf-8"))
    independent = json.loads(independent_path.read_text(encoding="utf-8"))
    fresh_replay = json.loads(fresh_replay_path.read_text(encoding="utf-8"))
    expected = {"H0": "Z", "H1_free_rank": 1, "H1_torsion_orders": [2], "H2_free_rank": 0}
    for label, record in (("primary", primary), ("independent", independent)):
        if record.get("status") != "PASS":
            raise AssertionError(f"CW {label} record is not PASS")
        group = record.get("results", {}).get("klein_bottle", {}).get("homology", {})
        if group != expected:
            raise AssertionError(f"CW {label} Klein homology does not match the triangulated result")
    if fresh_replay.get("status") != "PASS" or fresh_replay.get("klein_homology") != expected:
        raise AssertionError("fresh CW source replay projection is missing or disagrees")
    if not re.fullmatch(r"[0-9a-f]{40}", fresh_replay.get("source_checkout_commit", "")):
        raise AssertionError("fresh CW source replay does not name a full public commit")
    runs = fresh_replay.get("runs", {})
    run_pins = {
        "primary": "verify_integer_cw.py",
        "independent": "independent_check.py",
    }
    model_hash = verified_hashes.get("models.json")
    if model_hash is None:
        raise AssertionError("CW manifest does not pin its model input")
    for label, source_name in run_pins.items():
        run = runs.get(label, {})
        if run.get("exit_code") != 0:
            raise AssertionError(f"fresh CW {label} replay did not exit successfully")
        if run.get("models_sha256") != model_hash:
            raise AssertionError(f"fresh CW {label} replay used different model bytes")
        if run.get("source_sha256") != verified_hashes.get(source_name):
            raise AssertionError(f"fresh CW {label} replay used different source bytes")
        checks_passed = run.get("checks_passed")
        checks_total = run.get("checks_total")
        if not isinstance(checks_passed, int) or not isinstance(checks_total, int) or checks_total <= 0 or checks_passed != checks_total:
            raise AssertionError(f"fresh CW {label} replay has incomplete checks")
        controls_passed = run.get("controls_passed")
        controls_total = run.get("controls_total")
        if not isinstance(controls_passed, int) or not isinstance(controls_total, int) or controls_total <= 0 or controls_passed != controls_total:
            raise AssertionError(f"fresh CW {label} replay has incomplete negative controls")
        if not re.fullmatch(r"[0-9a-f]{64}", run.get("raw_receipt_sha256", "")):
            raise AssertionError(f"fresh CW {label} replay does not bind its raw receipt hash")
    focused = runs.get("focused_tests", {})
    if focused.get("exit_code") != 0 or focused.get("tests_passed") != 5:
        raise AssertionError("fresh CW focused tests did not pass all five cases")
    for label, record in (("primary", primary), ("independent", independent)):
        if record.get("models_sha256") != model_hash:
            raise AssertionError(f"saved CW {label} receipt uses different model bytes")
        source_name = run_pins[label]
        if record.get("source_sha256") != verified_hashes.get(source_name):
            raise AssertionError(f"saved CW {label} receipt uses different source bytes")
    return {
        "status": "PASS",
        "method": "Compare the triangulated result with two separately implemented, SHA256SUMS-verified CW receipts and a fresh public-source replay projection.",
        "sha256_manifest_entries_verified": len(verified_hashes),
        "primary_receipt_sha256": sha256(primary_path),
        "independent_receipt_sha256": sha256(independent_path),
        "fresh_CW_source_replay_projection_sha256": sha256(fresh_replay_path),
        "klein_homology": expected,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    out = args.out
    if out.resolve() == (ROOT / "evidence").resolve():
        raise SystemExit("ARCHIVED_EVIDENCE_IS_READ_ONLY: choose a fresh output directory")
    verified_package_entries = verify_hashes.verify_manifest(ROOT / "SHA256SUMS")

    primary = integer_homology.compute()
    independent = independent_minors.compute()
    cw_cross_check = check_saved_cw_model()
    for name, first in primary["surfaces"].items():
        second = independent["surfaces"][name]
        smith = first["smith_factors"]
        if len(smith) != second["rank_over_Q"]:
            raise AssertionError(f"{name}: exact rank disagreement")
        if math.prod(smith) != second["torsion_order_from_determinantal_divisor"]:
            raise AssertionError(f"{name}: torsion-order disagreement")
        if first["homology_over_Z"]["H1"]["free_rank"] != second["homology_over_Z"]["H1_free_rank"]:
            raise AssertionError(f"{name}: H1 free-rank disagreement")
        if first["homology_over_Z"]["H2"]["free_rank"] != second["homology_over_Z"]["H2_free_rank"]:
            raise AssertionError(f"{name}: H2 rank disagreement")

    n_vertices, faces, expected_f2, _ = SURFACES["projective_plane_six_vertex"]
    negative_controls = {}
    for label, checker in (("primary_missing_face", integer_homology.analyze),
                           ("independent_missing_face", independent_minors.analyze)):
        try:
            checker("damaged-projective-plane", n_vertices, faces[:-1], expected_f2)
        except AssertionError as error:
            negative_controls[label] = {"status": "REJECTED", "reason": str(error)}
        else:
            raise AssertionError(f"{label}: damaged mesh was accepted")
    sphere_vertices, sphere_faces, sphere_f2, _ = SURFACES["sphere_tetrahedron"]
    disconnected_faces = sphere_faces + [
        tuple(vertex + sphere_vertices for vertex in face) for face in sphere_faces
    ]
    for label, checker in (("primary_disconnected_mesh", integer_homology.analyze),
                           ("independent_disconnected_mesh", independent_minors.analyze)):
        try:
            checker("two-disjoint-spheres", 2 * sphere_vertices, disconnected_faces, sphere_f2)
        except AssertionError as error:
            negative_controls[label] = {"status": "REJECTED", "reason": str(error)}
        else:
            raise AssertionError(f"{label}: disconnected mesh was accepted")
    wedged_faces = sphere_faces + [
        tuple(0 if vertex == 0 else vertex + sphere_vertices - 1 for vertex in face)
        for face in sphere_faces
    ]
    for label, checker in (("primary_vertex_wedge", integer_homology.analyze),
                           ("independent_vertex_wedge", independent_minors.analyze)):
        try:
            checker("two-spheres-wedged-at-one-vertex", 2 * sphere_vertices - 1, wedged_faces, sphere_f2)
        except AssertionError as error:
            negative_controls[label] = {"status": "REJECTED", "reason": str(error)}
        else:
            raise AssertionError(f"{label}: invalid vertex link was accepted")
    _f, _e, _b, _counts, bad_composition = independent_minors.build_boundary(
        sphere_vertices, sphere_faces, middle_sign=1
    )
    if not any(value for row in bad_composition for value in row):
        raise AssertionError("wrong-sign boundary control was not detected")
    negative_controls["wrong_face_boundary_sign"] = {"status": "REJECTED", "reason": "∂1∂2 was nonzero"}
    for matrix, expected in (([[2, 0], [0, 4]], [2, 4]), ([[2, 4], [6, 8]], [2, 4])):
        actual = integer_homology.smith_diagonal(matrix)
        if actual != expected:
            raise AssertionError(f"Smith control mismatch: {actual} != {expected}")

    out.mkdir(parents=True, exist_ok=True)
    integer_homology.write_receipt(out, primary)
    independent_result_path = out / "independent-minors-result.json"
    write_json(independent_result_path, independent)
    independent_receipt = {
        "format": "mathcase.integer-simplicial-surface-homology-independent-receipt.v1",
        "status": "PASS",
        "python_version": platform.python_version(),
        "source_sha256": {
            "independent_minors.py": sha256(ROOT / "independent_minors.py"),
            "mesh_source_homology.py": sha256(PARENT / "homology.py"),
        },
        "result_sha256": sha256(independent_result_path),
        "result": independent,
    }
    write_json(out / "independent-minors-receipt.json", independent_receipt)

    summary = {
        "format": "mathcase.integer-simplicial-surface-homology-verification.v1",
        "status": "PASS",
        "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "python_version": platform.python_version(),
        "sources": {
            "integer_homology.py": sha256(ROOT / "integer_homology.py"),
            "independent_minors.py": sha256(ROOT / "independent_minors.py"),
            "test_integer_homology.py": sha256(ROOT / "test_integer_homology.py"),
            "verify_package.py": sha256(Path(__file__).resolve()),
            "verify_hashes.py": sha256(ROOT / "verify_hashes.py"),
            "parent_mesh_source": sha256(PARENT / "homology.py"),
        },
        "outputs": {
            "integer_homology_receipt_sha256": sha256(out / "integer-homology-receipt.json"),
            "integer_homology_result_sha256": sha256(out / "integer-homology-result.json"),
            "independent_receipt_sha256": sha256(out / "independent-minors-receipt.json"),
            "independent_result_sha256": sha256(independent_result_path),
        },
        "archived_package_manifest_entries_verified": verified_package_entries,
        "agreement": "PASS: exact ranks, H1 free ranks, H2 ranks, and torsion orders agree for all four models.",
        "negative_controls": negative_controls,
        "saved_CW_model_cross_check": cw_cross_check,
        "scope": "Three explicit triangulated meshes and one explicit twisted-grid quotient only; exact Python arithmetic, not Lean and not a general topology prover.",
    }
    summary_path = out / "verification.json"
    write_json(summary_path, summary)
    print("PASS: primary Smith reduction and independent rational-rank/minor checks agree")
    print("PASS: missing-face, disconnected-mesh, vertex-link, and wrong-sign controls rejected")
    print(f"PASS: {len(primary['surfaces'])} models; {sum(v['number_of_maximal_minors_checked'] for v in independent['surfaces'].values())} maximal minors checked")
    print(f"verification receipt SHA-256: {sha256(summary_path)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

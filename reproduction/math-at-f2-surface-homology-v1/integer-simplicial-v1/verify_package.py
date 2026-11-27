#!/usr/bin/env python3
"""Run both exact methods, controls, and write path-free replay receipts."""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
import math
import platform
from pathlib import Path

import independent_minors
import integer_homology
from homology import SURFACES

ROOT = Path(__file__).resolve().parent
PARENT = ROOT.parent


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def write_json(path: Path, value: object) -> None:
    with path.open("w", encoding="utf-8", newline="\n") as stream:
        stream.write(json.dumps(value, indent=2, sort_keys=True) + "\n")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--out", type=Path, default=ROOT / "evidence")
    args = parser.parse_args()
    out = args.out

    primary = integer_homology.compute()
    independent = independent_minors.compute()
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
        "agreement": "PASS: exact ranks, H1 free ranks, H2 ranks, and torsion orders agree for all three meshes.",
        "negative_controls": negative_controls,
        "scope": "Three explicit triangulated meshes only; exact Python arithmetic, not Lean and not a general topology prover.",
    }
    summary_path = out / "verification.json"
    write_json(summary_path, summary)
    print("PASS: primary Smith reduction and independent rational-rank/minor checks agree")
    print("PASS: missing-face, disconnected-mesh, vertex-link, and wrong-sign controls rejected")
    print(f"PASS: 3 models; {sum(v['number_of_maximal_minors_checked'] for v in independent['surfaces'].values())} maximal minors checked")
    print(f"verification receipt SHA-256: {sha256(summary_path)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

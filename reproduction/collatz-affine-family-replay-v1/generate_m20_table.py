"""Generate the table theorem from the SHA256-pinned public M20 coefficient audit."""
import argparse
import csv
import hashlib
import io
from pathlib import Path

TABLE_SHA256 = "30f06904507a35d180fab9d0d9195759047d13edfd857c04e2ef483eaf75194a"

def generate(path, chunk_size=32):
    raw = path.read_bytes()
    if hashlib.sha256(raw).hexdigest() != TABLE_SHA256:
        raise ValueError("The input differs from the public coefficient audit.")
    records = list(csv.DictReader(io.StringIO(raw.decode("utf-8")), delimiter="\t"))
    rows = [(int(record["r"]), int(record["q"])) for record in records]
    if len(rows) != 2652 or len(set(rows)) != len(rows):
        raise ValueError("Expected 2,652 distinct pairs.")
    return render(rows, "M20Table", chunk_size)

def render(rows, namespace, chunk_size=32):
    lines = [
        "import SymbolicFamilies",
        "",
        f"namespace MathCase.{namespace}",
        "open CollatzAffineTrace (familyEndpoint m20Family_descent m20Iterate)",
        "",
        "/-- Test the expected endpoint of the entire progression, then its intercept gap. -/",
        "def accepted (row : Nat × Nat) : Bool :=",
        "  decide (familyEndpoint 32 1048576 row.1 = some (531441,row.2) ∧ row.2 < row.1)",
        "",
    ]
    names = []
    for index, offset in enumerate(range(0, len(rows), chunk_size)):
        name = f"rows{index:03d}"
        names.append(name)
        chunk = rows[offset:offset + chunk_size]
        encoded = ",\n   ".join(f"({r}, {q})" for r, q in chunk)
        lines.extend([
            f"def {name} : List (Nat × Nat) :=\n  [{encoded}]",
            f"theorem {name}_ok : {name}.all accepted = true := by decide",
            "",
        ])
    lines.extend([
        "def batches : List (List (Nat × Nat)) :=",
        "  [" + ", ".join(names) + "]",
        "",
        "theorem batches_ok : batches.all (fun block => block.all accepted) = true := by",
        "  simp only [batches, List.all_cons, List.all_nil]",
    ])
    lines += [f"  apply Bool.and_eq_true_iff.mpr\n  refine ⟨{name}_ok, ?_⟩" for name in names]
    lines.extend([
        "  rfl",
        "",
        "def originalRows : List (Nat × Nat) := batches.flatten",
        "",
        "/-- Quantified M20 conclusion, using only the listed pairs and a single symbolic proof. -/",
        "theorem all_rows (r q : Nat) (listed : (r,q) ∈ originalRows) (k : Nat) :",
        "    m20Iterate (1048576*k+r) 32 = 531441*k+q ∧ 531441*k+q < 1048576*k+r := by",
        "  obtain ⟨block, hBlock, hRow⟩ := List.mem_flatten.mp listed",
        "  have hb := List.all_eq_true.mp batches_ok block hBlock",
        "  have hr : accepted (r,q) = true := List.all_eq_true.mp hb (r,q) hRow",
        "  have cert : familyEndpoint 32 1048576 r = some (531441,q) ∧ q < r :=",
        "    of_decide_eq_true hr",
        "  exact m20Family_descent cert.1 (by decide) cert.2 k",
        "",
        "#print axioms all_rows",
        f"end MathCase.{namespace}",
        "",
    ])
    return "\n".join(lines)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("pairs", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    args.output.write_bytes(generate(args.pairs).encode("utf-8"))

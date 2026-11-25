#!/bin/sh
set -u
BASE=/evidence
OUT="$BASE/outputs"
LOG="$BASE/logs"
MC=/mathcase/project/.lake/packages/mathlib
PKG_ROOT="$MC/.lake/build/lib/lean"
SRC="$BASE/inputs/MathCase/R66"
mkdir -p "$OUT/MathCase/R66/Rows" "$LOG/dependency" /tmp/r66-source-to-kernel-r3b
cd /tmp/r66-source-to-kernel-r3b
PKG_PATHS=$(find /mathcase/project/.lake/packages -type d -path '*/.lake/build/lib/lean' | paste -sd: -)
export NO_COLOR=1
lean --version > "$LOG/lean-version.txt" 2>&1
git -C "$MC" rev-parse HEAD > "$LOG/mathlib-commit.txt"
printf '%s\n' "$PKG_PATHS" > "$LOG/pinned-package-paths.txt"
sha256sum "$BASE/manifest.json" > "$LOG/manifest.sha256"
sha256sum "$BASE/inputs/lean-toolchain" "$BASE/inputs/MathCase/R66/Foundation.lean" "$BASE/inputs/MathCase/R66/Rows/Representative.lean" "$BASE/inputs/MathCase/R66/Composition.lean" > "$LOG/input-sources.sha256"
if grep -R -n -E '(^|[^[:alpha:]_])(sorry|admit|native_decide)([^[:alpha:]_]|$)' "$BASE/inputs/MathCase" > "$LOG/placeholder-scan.txt"; then
  printf 'FAIL_PLACEHOLDER_SCAN\n' >> "$LOG/placeholder-scan.txt"
  exit 91
else
  printf 'PASS_NO_SORRY_ADMIT_NATIVE_DECIDE\n' > "$LOG/placeholder-scan.txt"
fi
run_dependency() {
  source="$MC/Mathlib/Algebra/Field/ZMod.lean"
  out="$PKG_ROOT/Mathlib/Algebra/Field/ZMod.olean"
  mkdir -p "$(dirname "$out")"
  start=$(date +%s%N)
  LEAN_PATH="$PKG_PATHS" timeout -k 5s 420s lean --root="$MC" -o "$out" "$source" > "$LOG/field_zmod.stdout" 2> "$LOG/field_zmod.stderr"
  rc=$?
  end=$(date +%s%N)
  printf '%s\n' "$rc" > "$LOG/field_zmod.exit"
  printf '%s\n' "$(( (end - start) / 1000000 ))" > "$LOG/field_zmod.elapsed_ms"
  sha256sum "$source" > "$LOG/field_zmod.source.sha256"
  if [ "$rc" -eq 0 ]; then
    sha256sum "$out" > "$LOG/field_zmod.olean.sha256"
    cp "$out" "$LOG/dependency/Mathlib.Algebra.Field.ZMod.olean"
  fi
  return "$rc"
}
run_module() {
  name="$1"; rel="$2"; out="$OUT/MathCase/R66/${rel%.lean}.olean"
  mkdir -p "$(dirname "$out")"
  start=$(date +%s%N)
  timeout -k 5s 420s lean --root="$BASE/inputs" -o "$out" "$SRC/$rel" > "$LOG/$name.stdout" 2> "$LOG/$name.stderr"
  rc=$?
  end=$(date +%s%N)
  printf '%s\n' "$rc" > "$LOG/$name.exit"
  printf '%s\n' "$(( (end - start) / 1000000 ))" > "$LOG/$name.elapsed_ms"
  sha256sum "$SRC/$rel" > "$LOG/$name.source.sha256"
  if [ "$rc" -eq 0 ]; then sha256sum "$out" > "$LOG/$name.olean.sha256"; fi
  return "$rc"
}
run_dependency || exit $?
export LEAN_PATH="$OUT:$PKG_PATHS"
run_module foundation Foundation.lean || exit $?
run_module representative Rows/Representative.lean || exit $?
run_module composition Composition.lean || exit $?
if grep -q 'sorryAx' "$LOG/composition.stdout"; then
  printf 'FAIL_SORRY_AXIOM_AUDIT\n' > "$LOG/axiom-audit.txt"
  exit 92
fi
if grep -q 'native_decide' "$LOG/input-sources.sha256"; then
  printf 'FAIL_NATIVE_DECIDE_SOURCE_AUDIT\n' > "$LOG/source-audit.txt"
  exit 93
fi
printf 'PASS_NO_SORRYAX\n' > "$LOG/axiom-audit.txt"
printf 'PASS_ALL_SOURCE_MODULES\n' > "$LOG/status.txt"
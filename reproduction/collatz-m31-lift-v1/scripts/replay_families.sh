#!/bin/sh
set -u

ROOT=${1:-$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)}
EVIDENCE="$ROOT/evidence/lean-replay"
BUILD=${MATHCASE_LEAN_BUILD_DIR:-"$ROOT/.lean-build"}
CAP=${MATHCASE_LEAN_WALL_CAP_SECONDS:-180}
CORE_CAP=${MATHCASE_LEAN_CORE_WALL_CAP_SECONDS:-180}
MODE=${2:-fresh}
mkdir -p "$EVIDENCE" "$BUILD"

started_utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)
started_epoch=$(date +%s)
lean_version=$(lean --version | tr '\n' ' ')
core_hash=$(sha256sum "$ROOT/CollatzLift.lean" | awk '{print $1}')
families_hash=$(sha256sum "$ROOT/LiftedFamilies.lean" | awk '{print $1}')

core_reused=false
core_elapsed=0
if [ "$MODE" = reuse-core ]; then
  expected_core_source=${3:-}
  expected_core_olean=${4:-}
  actual_core_olean=$(sha256sum "$BUILD/CollatzLift.olean" 2>/dev/null | awk '{print $1}')
  if [ "$core_hash" != "$expected_core_source" ] || [ "$actual_core_olean" != "$expected_core_olean" ]; then
    printf '%s\n' 'Refusing cached core OLEAN: source or output hash mismatch.' > "$EVIDENCE/core.stdout"
    core_rc=1
  else
    printf 'Reused prior source-compiled core OLEAN %s\n' "$actual_core_olean" > "$EVIDENCE/core.stdout"
    core_rc=0
    core_reused=true
  fi
else
  core_started_epoch=$(date +%s)
  set +e
  timeout "$CORE_CAP" lean --root="$ROOT" -o "$BUILD/CollatzLift.olean" "$ROOT/CollatzLift.lean" > "$EVIDENCE/core.stdout" 2>&1
  core_rc=$?
  set -e
  core_finished_epoch=$(date +%s)
  core_elapsed=$((core_finished_epoch - core_started_epoch))
fi

set +e
if [ "$core_rc" -eq 0 ]; then
  LEAN_PATH="$BUILD" timeout "$CAP" lean --root="$ROOT" -o "$BUILD/LiftedFamilies.olean" "$ROOT/LiftedFamilies.lean" > "$EVIDENCE/families.stdout" 2>&1
  families_rc=$?
else
  families_rc=125
  printf '%s\n' 'Skipped because CollatzLift.lean did not compile.' > "$EVIDENCE/families.stdout"
fi
set -e

finished_utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)
finished_epoch=$(date +%s)
elapsed=$((finished_epoch - started_epoch))
core_output_hash=$(sha256sum "$EVIDENCE/core.stdout" | awk '{print $1}')
families_output_hash=$(sha256sum "$EVIDENCE/families.stdout" | awk '{print $1}')
core_olean_hash=null
families_olean_hash=null
if [ -f "$BUILD/CollatzLift.olean" ]; then
  core_olean_hash="\"$(sha256sum "$BUILD/CollatzLift.olean" | awk '{print $1}')\""
fi
if [ -f "$BUILD/LiftedFamilies.olean" ]; then
  families_olean_hash="\"$(sha256sum "$BUILD/LiftedFamilies.olean" | awk '{print $1}')\""
fi

status=FAIL_LEAN_REPLAY
if [ "$core_rc" -eq 0 ] && [ "$families_rc" -eq 0 ] && [ "$families_olean_hash" != null ]; then
  status=PASS_LEAN_REPLAY
fi
cat > "$EVIDENCE/lean-replay-receipt.json" <<EOF
{
  "schema": "mathcase-collatz-lift-lean-replay-v1",
  "status": "$status",
  "lean_version": "$lean_version",
  "core_source_sha256": "$core_hash",
  "families_source_sha256": "$families_hash",
  "core_exit_code": $core_rc,
  "core_wall_cap_seconds": $CORE_CAP,
  "core_elapsed_seconds": $core_elapsed,
  "families_exit_code": $families_rc,
  "families_wall_cap_seconds": $CAP,
  "core_olean_reused": $core_reused,
  "elapsed_seconds": $elapsed,
  "started_utc": "$started_utc",
  "finished_utc": "$finished_utc",
  "core_stdout_sha256": "$core_output_hash",
  "families_stdout_sha256": "$families_output_hash",
  "core_olean_sha256": $core_olean_hash,
  "families_olean_sha256": $families_olean_hash,
  "network": "none (enforced by the Docker invocation)",
  "provider_spend_usd": 0
}
EOF
cat "$EVIDENCE/lean-replay-receipt.json"
printf 'Axiom output is preserved in %s/families.stdout\n' "$EVIDENCE"
if [ "$status" != PASS_LEAN_REPLAY ]; then
  exit 1
fi

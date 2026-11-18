#!/bin/sh
set -u
out=/mathcase/project/audit-output
in=/mathcase/project/audit-input
export LEAN_PATH="/mathcase/project/replay-output/oleans${LEAN_PATH:+:$LEAN_PATH}"
mkdir -p "$out"
: > "$out/audit-results.tsv"
: > "$out/progress.log"
failed=0
for file in "$in"/group-*.lean; do
  [ -f "$file" ] || continue
  base=${file##*/}; group=${base%.lean}
  stdout="$out/$group.stdout.txt"; stderr="$out/$group.stderr.txt"
  start=$(date -u +%Y-%m-%dT%H:%M:%S.%NZ)
  lean "$file" > "$stdout" 2> "$stderr"
  rc=$?
  finish=$(date -u +%Y-%m-%dT%H:%M:%S.%NZ)
  insha=$(sha256sum "$file" | cut -c1-64)
  outsha=$(sha256sum "$stdout" | cut -c1-64)
  errsha=$(sha256sum "$stderr" | cut -c1-64)
  qcount=$(grep -c "depends on axioms:" "$stdout" || true)
  printf "%s\\t%s\\t%s\\t%s\\t%s\\t%s\\t%s\\t%s\\n" "$group" "$insha" "$outsha" "$errsha" "$rc" "$start" "$finish" "$qcount" >> "$out/audit-results.tsv"
  printf "%s rc=%s queries=%s end=%s\\n" "$group" "$rc" "$qcount" "$finish" >> "$out/progress.log"
  if [ "$rc" -ne 0 ]; then failed=1; fi
done
exit "$failed"
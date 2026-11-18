#!/bin/sh
set -u
manifest="${MC_REPLAY_MANIFEST:-/mathcase/project/replay-input/manifest.tsv}"
out="${MC_REPLAY_OUT:-/mathcase/project/replay-output}"
source_root="/mathcase/project/replay-source"
mkdir -p "$out/oleans" "$out/logs" "$out/receipts"
: > "$out/run-results.tsv"
: > "$out/progress.log"
failed=0
while IFS="$(printf '\t')" read -r package module rel namespace theorem_names expected_sha; do
  [ -n "$package" ] || continue
  source_file="$source_root/$rel"
  olean="$out/oleans/$module.olean"
  stdout="$out/logs/$package-$module.stdout.txt"
  stderr="$out/logs/$package-$module.stderr.txt"
  start_utc=$(date -u +%Y-%m-%dT%H:%M:%S.%NZ)
  actual_sha=$(sha256sum "$source_file" 2>/dev/null | awk '{print $1}')
  if [ "$actual_sha" != "$expected_sha" ]; then
    printf 'source hash mismatch: expected %s got %s\n' "$expected_sha" "$actual_sha" > "$stderr"
    rc=86
  else
    lean -o "$olean" "$source_file" > "$stdout" 2> "$stderr"
    rc=$?
  fi
  finish_utc=$(date -u +%Y-%m-%dT%H:%M:%S.%NZ)
  olean_sha=""
  if [ -f "$olean" ]; then olean_sha=$(sha256sum "$olean" | awk '{print $1}'); fi
  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$package" "$module" "$actual_sha" "$olean_sha" "$rc" "$start_utc" "$finish_utc" "$theorem_names" >> "$out/run-results.tsv"
  printf '%s %s rc=%s end=%s\n' "$package" "$module" "$rc" "$finish_utc" >> "$out/progress.log"
  if [ "$rc" -ne 0 ]; then failed=1; fi
done < "$manifest"
exit "$failed"
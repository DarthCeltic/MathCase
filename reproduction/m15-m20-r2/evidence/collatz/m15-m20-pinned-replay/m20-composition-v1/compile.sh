#!/bin/sh
set -u
input=/mathcase/project/composition-input/generated
cache=/mathcase/project/replay-input/oleans
out=/mathcase/project/composition-output
mkdir -p "$out/oleans" "$out/logs"
export LEAN_PATH="$out/oleans:$cache:$LEAN_PATH"
receipt="$out/compile-receipts.tsv"
printf 'module\tsource_sha256\tolean_sha256\texit_code\tstarted_utc\tfinished_utc\tstdout_sha256\tstderr_sha256\n' > "$receipt"
for i in $(seq -w 1 133); do
  module="M20CompositionShard$i"
  src="$input/$module.lean"
  stdout="$out/logs/$module.stdout.txt"
  stderr="$out/logs/$module.stderr.txt"
  start=$(date -u +%Y-%m-%dT%H:%M:%SZ)
  source_sha=$(sha256sum "$src" | awk '{print $1}')
  lean -o "$out/oleans/$module.olean" "$src" > "$stdout" 2> "$stderr"
  rc=$?
  finish=$(date -u +%Y-%m-%dT%H:%M:%SZ)
  olean_sha=""
  if [ -f "$out/oleans/$module.olean" ]; then
    olean_sha=$(sha256sum "$out/oleans/$module.olean" | awk '{print $1}')
  fi
  stdout_sha=$(sha256sum "$stdout" | awk '{print $1}')
  stderr_sha=$(sha256sum "$stderr" | awk '{print $1}')
  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$module" "$source_sha" "$olean_sha" "$rc" "$start" "$finish" "$stdout_sha" "$stderr_sha" >> "$receipt"
  printf '%s exit=%s\n' "$module" "$rc"
  if [ "$rc" -ne 0 ]; then
    exit "$rc"
  fi
done
module=M20CompositionAllFamiliesV1
src="$input/$module.lean"
stdout="$out/logs/$module.stdout.txt"
stderr="$out/logs/$module.stderr.txt"
start=$(date -u +%Y-%m-%dT%H:%M:%SZ)
source_sha=$(sha256sum "$src" | awk '{print $1}')
lean -o "$out/oleans/$module.olean" "$src" > "$stdout" 2> "$stderr"
rc=$?
finish=$(date -u +%Y-%m-%dT%H:%M:%SZ)
olean_sha=""
if [ -f "$out/oleans/$module.olean" ]; then
  olean_sha=$(sha256sum "$out/oleans/$module.olean" | awk '{print $1}')
fi
stdout_sha=$(sha256sum "$stdout" | awk '{print $1}')
stderr_sha=$(sha256sum "$stderr" | awk '{print $1}')
printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$module" "$source_sha" "$olean_sha" "$rc" "$start" "$finish" "$stdout_sha" "$stderr_sha" >> "$receipt"
printf '%s exit=%s\n' "$module" "$rc"
exit "$rc"
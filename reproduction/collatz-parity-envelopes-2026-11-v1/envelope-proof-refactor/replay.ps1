param(
  [Parameter(Mandatory=$true)][string]$LeanExe,
  [Parameter(Mandatory=$true)][string]$OutDir
)
$ErrorActionPreference = 'Stop'
$leanPath = (Resolve-Path -LiteralPath $LeanExe).Path
$leanVersion = (& $leanPath --version | Out-String).Trim()
if ($LASTEXITCODE -ne 0 -or $leanVersion -notmatch '^Lean \(version 4\.33\.1,') {
  throw "This replay requires Lean 4.33.1; received: $leanVersion"
}
$repo = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')).Path
$out = [System.IO.Path]::GetFullPath($OutDir)
if (-not (Test-Path -LiteralPath $out)) {
  New-Item -ItemType Directory -Path $out -Force | Out-Null
}
$existing = @(Get-ChildItem -LiteralPath $out -Force -ErrorAction SilentlyContinue)
if ($existing.Count -gt 0) { throw 'OutDir must be empty to prevent stale OLEAN reuse' }
$env:LEAN_PATH = $out
$modules = @(
  @('WordBound', 'WordBound.lean'),
  @('WordResidue', 'WordResidue.lean'),
  @('CountWords', 'CountWords.lean'),
  @('EnvelopeLemma', 'envelope-proof-refactor/EnvelopeLemma.lean'),
  @('AtMostFourteen23', 'envelope-proof-refactor/AtMostFourteen23.lean')
)
Push-Location $repo
try {
  foreach ($entry in $modules) {
    & $leanPath '-o' (Join-Path $out ($entry[0] + '.olean')) $entry[1]
    if ($LASTEXITCODE -ne 0) { throw "Lean module $($entry[0]) failed with exit $LASTEXITCODE" }
  }
  & $leanPath 'envelope-proof-refactor/EnvelopeAudit.lean'
  if ($LASTEXITCODE -ne 0) { throw "Lean axiom audit failed with exit $LASTEXITCODE" }
} finally {
  Pop-Location
}

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
if (-not (Get-Command go -ErrorAction SilentlyContinue)) { throw 'Go 1.27+ is required.' }
if (-not (Get-Command lake -ErrorAction SilentlyContinue)) { throw 'Lean 4.33.1 via elan/lake is required.' }
$goVersion = (go env GOVERSION).Trim()
if ($goVersion -notmatch '^go1\.(2[7-9]|[3-9][0-9])(?:\.|$)') { throw "Go 1.27+ is required; found $goVersion" }
New-Item -ItemType Directory -Force -Path (Join-Path $root 'bin') | Out-Null
Push-Location $root
try {
  go build -o .\bin\mathcase.exe .\cmd\mathcase
  if ($LASTEXITCODE -ne 0) { throw 'Go CLI build failed.' }
  Push-Location (Join-Path $root 'proofs\r0b')
  try {
    lake build
    if ($LASTEXITCODE -ne 0) { throw 'Local Lean proof build failed.' }
    lake env lean .\MathCaseR0b.lean
    if ($LASTEXITCODE -ne 0) { throw 'Local Lean proof and axiom audit failed.' }
  } finally { Pop-Location }
} finally { Pop-Location }
Write-Output 'MathCase public edition setup passed. No provider or paid service was called.'

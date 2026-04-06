param()

Import-Module Pester -ErrorAction Stop

$repoRoot = Split-Path -Parent $PSScriptRoot
Invoke-Pester -Path (Join-Path $repoRoot 'tests\unit') -Output Detailed
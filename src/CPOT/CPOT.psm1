# CPOT module entry point

# Dot-source all public functions
Get-ChildItem -Path (Join-Path $PSScriptRoot 'Public') -Filter '*.ps1' -File -Recurse -ErrorAction SilentlyContinue |
ForEach-Object { . $_.FullName }

# Dot-source all private helper functions
Get-ChildItem -Path (Join-Path $PSScriptRoot 'Private') -Filter '*.ps1' -File -Recurse -ErrorAction SilentlyContinue |
ForEach-Object { . $_.FullName }

# Export only functions from the Public folder
$PublicFunctions = Get-ChildItem -Path (Join-Path $PSScriptRoot 'Public') -Filter '*.ps1' -File -Recurse -ErrorAction SilentlyContinue |
                  Select-Object -ExpandProperty BaseName

Export-ModuleMember -Function $PublicFunctions
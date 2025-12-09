$oldErrorActionPreference = $ErrorActionPreference
$ErrorActionPreference = "SilentlyContinue"

if (!(Get-Command chezmoi -errorAction SilentlyContinue))
{
    Write-Output "Installing chezmoi"
    winget install twpayne.chezmoi
}

Write-Output "Running chezmoi"
~/bin/chezmoi init --apply "$PSScriptRoot"

$ErrorActionPreference = $oldErrorActionPreference

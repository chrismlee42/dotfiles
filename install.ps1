$oldErrorActionPreference = $ErrorActionPreference
$ErrorActionPreference = "SilentlyContinue"

if (!(Get-Command chezmoi -errorAction SilentlyContinue))
{
    Write-Output "Installing chezmoi"
    winget install twpayne.chezmoi
}
if (!(Get-Command oh-my-posh -errorAction SilentlyContinue))
{
    Write-Output "Installing oh-my-posh"
    winget install JanDeDobbeleer.OhMyPosh
}

Write-Output "Running chezmoi"
~/bin/chezmoi init --apply

$ErrorActionPreference = $oldErrorActionPreference

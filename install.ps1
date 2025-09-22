$oldErrorActionPreference = $ErrorActionPreference
$ErrorActionPreference = "SilentlyContinue"

if (!(Get-Command chezmoi -errorAction SilentlyContinue))
{
    Write-Output "Installing chezmoi"
    # Install chezmoi
    iex "&{$(irm 'https://get.chezmoi.io/ps1')} -b '~/bin'"
}

Write-Output "Running chezmoi"
~/bin/chezmoi init --apply

$ErrorActionPreference = $oldErrorActionPreference

# Vagrant default provider
$env:VAGRANT_DEFAULT_PROVIDER="hyperv"

# Activate oh-my-posh
oh-my-posh init pwsh --config "$(Join-Path -Path $(Split-Path -Path $PROFILE) -ChildPath 'clee.omp.json')" | Invoke-Expression

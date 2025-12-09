# Add local user bin to PATH
$env:PATH += ";$HOME/bin"

# Activate oh-my-posh
& "$HOME/bin/oh-my-posh" init pwsh --config ~/.omp.json | Invoke-Expression

{{ if eq .chezmoi.os "linux" -}}
#!/usr/bin/env bash

if [ -z $(which oh-my-posh) ]; then
    curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/bin
fi
{{ end -}}
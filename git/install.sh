#!/usr/bin/env bash

set -e

for configPath in ${DOTFILES_LOCATION}/git/.gitconfig.*; do
    config=$(echo $configPath | sed "s|$DOTFILES_LOCATION/git/||")
    echo ln -sf "${DOTFILES_LOCATION}/git/${config}" "${HOME}/${config}"
done

echo ln -sf "${DOTFILES_LOCATION}/git/.gitconfig" "${HOME}/.gitconfig"

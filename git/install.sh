#!/usr/bin/env bash

set -e

for configPath in ${DOTFILES_LOCATION}/git/.gitconfig.*; do
    config=$(echo $configPath | sed "s|$DOTFILES_LOCATION/git/||")
    ln -sf "${DOTFILES_LOCATION}/git/${config}" "${HOME}/${config}"
done

ln -sf "${DOTFILES_LOCATION}/git/.gitconfig" "${HOME}/.gitconfig"

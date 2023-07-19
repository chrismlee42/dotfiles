#!/usr/bin/env bash

set -e

DOTFILES_LOCATION=$(pwd)
export DOTFILES_LOCATION;

./bin/dotfiles install git
./bin/dotfiles install oh-my-posh

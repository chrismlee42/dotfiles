#!/usr/bin/env bash

set -e
set -u

# Fix permissions with Windows hosts
sudo chown -R vscode:vscode /home/vscode/.ssh
sudo chmod 750 /home/vscode/.ssh
sudo chmod 640 /home/vscode/.ssh/config
sudo chmod 600 /home/vscode/.ssh/identities/*
sudo chmod 640 /home/vscode/.ssh/identities/*.pub

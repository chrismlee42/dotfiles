set -e

if [ -z $(which oh-my-posh) ]; then
    curl -s https://ohmyposh.dev/install.sh | sudo bash -s
fi

if [ ! -e "${HOME}/.omp.json" ]; then
    ln -sf "${DOTFILES_LOCATION}/oh-my-posh/dot_omp.json" "${HOME}/.omp.json"
fi

if [ -z "$(grep 'oh-my-posh init bash --config ~/.omp.json' ~/.bashrc)" ]; then
    echo 'eval "$(oh-my-posh init bash --config ~/.omp.json)"' >> ~/.bashrc
fi

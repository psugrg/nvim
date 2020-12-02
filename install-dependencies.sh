#!/bin/bash

# Install dependencies
sudo apt-get update && \
  sudo apt-get upgrade -y && \
  sudo apt-get install -y \
  software-properties-common \
  curl \
  git \
  neovim \
  ranger \
  xsel \
  python3 \
  python3-pip \
  fzf

sudo add-apt-repository ppa:lazygit-team/release -y \
  sudo apt-get update && \
  sudo apt-get install -y lazygit

pip3 install pynvim

# Install Plug vim plugin manager
curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

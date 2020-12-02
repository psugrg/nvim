#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Install dependencies
apt-get  update && \
  apt-get upgrade -y && \
  apt-get install -y \
  software-properties-common \
  curl \
  git \
  neovim \
  ranger \
  xsel \
  python3 \
  python3-pip \
  fzf 

add-apt-repository ppa:lazygit-team/release -y
apt-get update && apt-get install lazygit

pip3 install pynvim

curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

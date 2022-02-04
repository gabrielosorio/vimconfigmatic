#!/bin/bash

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox # Install Theme
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim # Install Ctrlp
git submodule init
git submodule update

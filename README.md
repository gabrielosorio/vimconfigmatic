# What?

I like to keep my stuff both organized and distributed...

## Installation

On a new machine:
```
$ cd ~
$ git clone git@github.com:gabrielosorio/vimconfigmatic.git ~/.vim
$ ln -s ~/.vim/vimrc ~/.vimrc
$ ln -s ~/.vim/gvimrc ~/.gvimrc
$ cd ~/.vim
$ git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox # Install Theme
$ git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim # Install Ctrlp
$ git submodule init
$ git submodule update
```

If encountering issues with the pathogen submodules:
```
$ git rm -r --cached bundle
```

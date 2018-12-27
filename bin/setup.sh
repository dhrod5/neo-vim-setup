#!/usr/bin/env bash

function brewinstalls() {
	brew install neovim
	brew install fzy
}

read -p "Do you wish to install neovim and fzy (yn)? " yn
case $yn in
        [Yy]* ) brewinstalls;;
        [Nn]* ) echo -e 'coolio\n----------------';;
        * ) echo "Please answer yes or no.";;
esac

function configinstalls() {
	cp config/init.vim ~/.config/nvim/init.vim
	cp config/nvimrc ~/.nvimrc
}

read -p "Do you wish to install configs (yn)? " yn
case $yn in
        [Yy]* ) configinstalls;;
        [Nn]* ) echo -e 'coolio\n----------------';;
        * ) echo "Please answer yes or no.";;
esac

read -p "Do you wish to install plugins now (yn)? " yn
case $yn in
        [Yy]* ) nvim +PlugInstall +qall;;
        [Nn]* ) echo 'coolio\n------------------';;
        * ) echo "Please answer yes or no.";;
esac



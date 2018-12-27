#!/usr/bin/env bash

function brew_installs() {
	brew install neovim
	brew install fzy
}

read -p "Do you wish to install neovim and fzy (yn)? " yn
case $yn in
        [Yy]* ) brew_installs;;
        [Nn]* ) echo -e 'coolio\n----------------';;
        * ) echo "Please answer yes or no.";;
esac

function config_installs() {
	cp config/init.vim ~/.config/nvim/init.vim
	cp config/nvimrc ~/.nvimrc
}

read -p "Do you wish to install configs (yn)? " yn
case $yn in
        [Yy]* ) config_installs;;
        [Nn]* ) echo -e 'coolio\n----------------';;
        * ) echo "Please answer yes or no.";;
esac

function plugin_installs() {
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	
	nvim +PlugInstall +qall
}

read -p "Do you wish to install plugins now (yn)? " yn
case $yn in
        [Yy]* ) plugin_installs;;
        [Nn]* ) echo 'coolio\n------------------';;
        * ) echo "Please answer yes or no.";;
esac



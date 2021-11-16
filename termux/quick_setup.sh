#!/bin/bash

echo Setup ./install_basic_tools.sh...
pkg install vim-python curl wget git tree openssh

if [ $? ]; then echo "Succeed"; else echo "Failed" && exit 1; fi

echo Setup ./install_ohmyzsh.sh...
if [ -d ~/.oh-my-zsh ]; then
	echo "Oh My ZSH allready installed."
else
	# https://github.com/Cabbagec/termux-ohmyzsh/
	# sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"

	# 国光镜像
	sh -c "$(curl -fsSL https://html.sqlsec.com/termux-install.sh)"
fi

if [ $? ]; then echo "Succeed"; else echo "Failed" && exit 1; fi

echo Setup ./install_ohmyzsh_plugins.sh...
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

install_plugin() {
    if [ -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$1 ]; then
        echo "Plugin $1 already installed"
    else
        echo "Installing plugin $1"
        git clone git://github.com/${2:-zsh-users}/$1 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$1 && \
        echo "Plugin $1 installed successfully" || \
		echo "Plugin $1 instalation failed"
    fi
}

for plugin in ${plugins[@]}; do
    install_plugin $plugin
done

install_from_repo() {
	echo "Installing plugin $1..."
	git clone $2 ~/repos/$1 && ~/repos/$3 && echo "Plugin $1 installed successfully" || echo "Plugin $1 installation failed"
}

install_from_repo "autojump" "https://github.com/wting/autojump.git" "./install.py"

if [ $? ]; then echo "Succeed"; else echo "Failed" && exit 1; fi

echo Setup ./restore_vim.sh...
cp ../configs/vim/.vimrc ~/
if [ $? ]; then echo "Succeed"; else echo "Failed" && exit 1; fi


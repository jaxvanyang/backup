#!/bin/bash

sudo apt update

echo Setup ./install_basic_tools.sh...
sudo apt install git vim-nox ssh zsh wget curl tree htop
if [ $? ]; then echo "Succeed"; else echo "Failed" && exit 1; fi

echo Setup ./install_oh_my_zsh.sh...
if [ -d ${ZSH:-~/.oh-my-zsh} ]; then
    echo "oh-my-zsh is already installed"
else
    echo "Installing oh-my-zsh"
    # via curl
    # sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # via wget
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi
if [ $? ]; then echo "Succeed"; else echo "Failed" && exit 1; fi

echo Setup ./install_oh_my_zsh_plugins.sh...
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
apt_plugins=(autojump)

install_plugin() {
    if [ -e ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$1 ]; then
        echo "Plugin $1 already installed"
    else
        echo "Installing plugin $1"
        git clone git://github.com/${2:-zsh-users}/$1 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$1
        echo "Plugin $1 installed successfully"
    fi
}

for plugin in ${plugins[@]}; do
    install_plugin $plugin
done

sudo apt install ${apt_plugins[@]}
if [ $? ]; then echo "Succeed"; else echo "Failed" && exit 1; fi

echo Setup ./restore_vim.sh...
cp ../configs/vim/.vimrc ~/
if [ $? ]; then echo "Succeed"; else echo "Failed" && exit 1; fi


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
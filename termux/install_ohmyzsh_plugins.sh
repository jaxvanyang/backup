plugins=(zsh-autosuggestions zsh-syntax-highlighting)

install_plugin() {
    if [ -e ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$1 ]; then
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
	git clone $2 ~/$1 && cd ~/$1 && $3 && echo "Plugin $1 installed successfully" || echo "Plugin $1 installation failed"
}

install_from_repo "autojump" "https://github.com/wting/autojump.git" "./install.py"

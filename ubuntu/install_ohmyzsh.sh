if [ -d ${ZSH:-~/.oh-my-zsh} ]; then
    echo "oh-my-zsh is already installed"
else
    echo "Installing oh-my-zsh"
    # via curl
    # sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # via wget
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi
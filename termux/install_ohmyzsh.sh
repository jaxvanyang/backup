if [ -d ~/.oh-my-zsh ]; then
	echo "Oh My ZSH allready installed."
else
	# https://github.com/Cabbagec/termux-ohmyzsh/
	# sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"

	# 国光镜像
	sh -c "$(curl -fsSL https://html.sqlsec.com/termux-install.sh)"
fi

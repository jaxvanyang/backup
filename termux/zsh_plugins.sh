#!/bin/zsh

for plugin in zsh-autosuggestions; do
	../template/zsh_plugin_intall.sh $plugin
done

git clone https://github.com/wting/autojump.git

cd autojump

# ignore this script output, only need to add plugin name in .zshrc
./install.py

rm -rf autojump

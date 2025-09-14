#!/bin/bash

echo "installing fonts"
mkdir -p ~/.fonts
cd ~/.fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
tar xvf JetBrainsMono.tar.xz
rm JetBrainsMono

cd

cp -r fish hypr kitty nvim sway waybar wofi ~/.config
cp .tmux.conf ~/

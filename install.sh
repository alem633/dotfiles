#!/bin/bash

cp -r fish hypr kitty sway waybar wofi ~/.config
cp .tmux.conf ~/

echo "installing fonts"
mkdir -p ~/.fonts/JetBrainsNerd
cd ~/.fonts/JetBrainsNerd
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
tar xvf JetBrainsMono.tar.xz

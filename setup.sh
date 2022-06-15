#!/bin/bash

echo "App"
sudo apt install autojump

echo "zsh"
sudo apt install zsh -y
chsh -s /usr/bin/zsh
sudo apt-get install fonts-powerline

echo "Neovim"
sudo apt install neovim
rm  ~/.config/nvim
ln -sf ~/.dotfiles/nvim ~/.config

echo "tmux"
sudo apt install tmux
rm ~/.tmux.conf
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/


echo "oh-my-zsh"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
rm ~/.zshrc
rm ~/.aliases
ln -sf ~/.dotfiles/oh-my-zsh/.zshrc ~/
ln -sf ~/.dotfiles/oh-my-zsh/.aliases ~/

echo "X11"
ln -sf ~/.dotfiles/X11 ~/.config

echo "suckless"
cd ~/.config/suckless/dwm-6.3
sudo make clean install
ln -sf ~/.dotfiles/suckless/.dwm ~/


cd ~/.config/suckless/dmenu
sudo make clean install

cd ~/.config/suckless/dwmblocks
sudo make clean install

echo "rofi"
sudo apt install rofi
ln -sf ~/.dotfiles/rofi/config.rasi ~/.config/rofi/

echo "nnn"
cd ~/.dotfiles/nnn
source ./nnn_profile.sh

echo "Spotify"
sudo apt install spotify

echo "Dropbox"
sudo apt install dropbox


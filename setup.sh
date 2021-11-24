#!/bin/bash
echo "Symbolinks"

echo "Neovim"
rm  ~/.config/nvim
ln -sf ~/.dotfiles/nvim ~/.config

echo "tmux"
rm ~/.tmux.conf
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/


echo "oh-my-zsh"
rm ~/.zshrc
ln -sf ~/.dotfiles/oh-my-zsh/.zshrc ~/

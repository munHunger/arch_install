#!/bin/bash
echo "Installing IDEs"
pacman -S emacs --noconfirm --needed
cp -r config_files/emacs /home/munhunger/.emacs.d

yay -S visual-studio-code-bin

yay -S intellij-idea-ultimate-edition

echo "Installing devtools"
pacman -S maven jdk8-openjdk --noconfirm --needed
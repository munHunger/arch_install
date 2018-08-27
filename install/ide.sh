#!/bin/bash
echo "Installing IDEs"
pacman -S emacs --noconfirm --needed
cp -r config_files/emacs /home/munhunger/.emacs.d

git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -sri
cd ..

git clone https://aur.archlinux.org/intellij-idea-ultimate-edition.git
cd intellij-idea-ultimate-edition
makepkg -sri
cd ..

echo "Installing devtools"
pacman -S maven jdk8-openjdk --noconfirm --needed
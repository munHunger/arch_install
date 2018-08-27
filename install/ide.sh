#!/bin/bash
echo "Installing IDEs"
pacman -S emacs --noconfirm --needed
cp -r config_files/emacs /home/munhunger/.emacs.d

git clone https://aur.archlinux.org/visual-studio-code-bin.git
chown -R munhunger:munhunger visual-studio-code-bin
cd visual-studio-code-bin
runuser munhunger -c 'makepkg -sri'
cd ..

git clone https://aur.archlinux.org/intellij-idea-ultimate-edition.git
chown -R munhunger:munhunger intellij-idea-ultimate-edition
cd intellij-idea-ultimate-edition
runuser munhunger -c 'makepkg -sri'
cd ..

echo "Installing devtools"
pacman -S maven jdk8-openjdk --noconfirm --needed
#!/bin/bash
git clone https://aur.archlinux.org/polybar-git.git
cd polybar
makepkg -sri
pacman -S jsoncpp --noconfirm --needed
install -Dm644 /usr/share/doc/polybar/config /home/munhunger/.config/polybar/config
pacman -S ttf-font-awesome --noconfirm --needed
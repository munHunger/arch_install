#!/bin/bash
yay -S polybar-git
pacman -S jsoncpp --noconfirm --needed
install -Dm644 /usr/share/doc/polybar/config /home/munhunger/.config/polybar/config
pacman -S ttf-font-awesome --noconfirm --needed
cp -r config_files/polybar /home/munhunger/.config/polybar
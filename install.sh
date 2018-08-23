#!/bin/bash
ip link set wlp107s0 down
wifi-menu
pacman -Syu
pacman -Syy
pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed
pacman -S xf86-video-nouveau --noconfirm --needed
pacman -S sddm --noconfirm --needed
systemctl enable sddm
file /etc/systemd/system/display-manager.service
pacman -S i3-wm --noconfirm --needed
pacman -S git --noconfirm --needed
pacman -S emacs --noconfirm --needed
git clone https://github.com/munhunger/arch_install.git
cd arch_install
cp config/.Xdefaults ~/
mkdir ~/.config
cp -r config/i3 ~/.config
cp -r config/emacs ~/.emacs.d

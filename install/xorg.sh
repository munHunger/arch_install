#!/bin/bash
echo "Installing xorg display server"
pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed
echo "Installing arandr gui"
pacman -S arandr --noconfirm --needed
echo "opting for opensource nvidea drivers"
pacman -S xf86-video-nouveau --noconfirm --needed
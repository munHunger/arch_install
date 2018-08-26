#!/bin/bash
echo "Installing google-chrome from AUR"
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -sri

echo "Installing bluetooth manager"
pacman -S blueberry --noconfirm --needed
#!/bin/bash
useradd -m munhunger
chown -R munhunger:munhunger /home/munhunger
echo "Set password for user"
passwd munhunger
echo "munhunger ALL=(ALL:ALL) ALL"  >> /etc/sudoers
pacman -Syu
pacman -Syy
pacman -S emacs --noconfirm --needed
for INSTALL_FILE in $(ls install)
do
    /bin/bash install/$INSTALL_FILE
done
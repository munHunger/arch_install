#!/bin/bash
useradd -m munhunger
echo "Set password for user"
passwd munhunger
pacman -Syu
pacman -Syy
pacman -S emacs --noconfirm --needed
for INSTALL_FILE in $(ls install)
do
    /bin/bash $INSTALL_FILE
done
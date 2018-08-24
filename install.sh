#!/bin/bash
useradd -m munhunger
echo "Set password for user"
passwd munhunger
pacman -Syu
pacman -Syy
pacman -S emacs --noconfirm --needed
/bin/bash install/xorg.sh
/bin/bash install/sddm.sh
/bin/bash install/i3.sh
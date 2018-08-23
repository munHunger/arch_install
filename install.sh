#!/bin/bash
pacman -Syu
pacman -Syy
pacman -S emacs --noconfirm --needed
/bin/bash install/xorg.sh
/bin/bash install/sddm.sh
/bin/bash install/i3.sh
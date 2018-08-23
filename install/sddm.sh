#!/bin/bash
echo "Installing SDDM as display manager"
pacman -S sddm --noconfirm --needed
systemctl enable sddm
file /etc/systemd/system/display-manager.service
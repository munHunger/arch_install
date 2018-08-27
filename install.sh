#!/bin/bash
useradd -m munhunger
chown -R munhunger:munhunger /home/munhunger
echo "Set password for user"
passwd munhunger
echo "munhunger ALL=(ALL:ALL) ALL"  >> /etc/sudoers
cd /tmp
git clone https://github.com/munhunger/arch_install.git
chown -R munhunger:munhunger arch_install
cd arch_install
pacman -Syu
pacman -Syy
for INSTALL_FILE in $(ls install)
do
    /bin/bash install/$INSTALL_FILE
done
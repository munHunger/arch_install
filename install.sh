#!/bin/bash
useradd -m munhunger
chown -R munhunger:munhunger /home/munhunger
echo "Set password for user"
passwd munhunger
echo "munhunger ALL=(ALL) NOPASSWD: ALL"  >> /etc/sudoers
cd /tmp
git clone https://github.com/munhunger/arch_install.git
chown -R munhunger:munhunger arch_install
chmod -R 777 arch_install
cd arch_install
pacman -Syu
pacman -Syy
git clone https://aur.archlinux.org/yay.git
chmod -R 777 yay
cd yay
runuser munhunger -c 'makepkg -sri'
cd ..
for INSTALL_FILE in $(ls install)
do
    /bin/bash install/$INSTALL_FILE
done
head -n -1 /etc/sudoers > /tmp/sudo ; mv /tmp/sudo /etc/sudoers
echo "munhunger ALL=(ALL:ALL) ALL"  >> /etc/sudoers
#!/bin/bash
echo "Installing google-chrome from AUR"
runuser munhunger -c 'yay -S google-chrome'

echo "Installing bluetooth manager"
pacman -S blueberry --noconfirm --needed

echo "Installing wifi managers"
pacman -S wpa_supplicant wireless_tools networkmanager network-manager-applet --noconfirm --needed
systemctl enable NetworkManager.service
systemctl enable wpa_supplicant.service
gpasswd -a munhunger network

echo "Installing spotify"
runuser munhunger -c 'yay -S spotify'

echo "Installing mopidy"
pacman -S python2-pip mopidy --noconfirm --needed
runuser munhunger -c 'yay -S libspotify'
echo "Installing mopidy iris web client"
pip2 install Mopidy-Iris
echo "Installing mopidy spotify plugin"
pip2 install Mopidy-Spotify
pip2 install Mopidy-Spotify-Tunigo
#Auth https://mopidy.com/authenticate/#spotify
systemctl enable mopidy
pacman -S gnupg --noconfirm --needed
mkdir /home/munhunger/.config/mopidy
echo "Decrypt mopidy config"
gpg config_files/mopidy/mopidy.conf.gpg -o /home/munhunger/.config/mopidy/mopidy.conf


echo "Installing cron"
pacman -S cron --noconfirm --needed
echo "Installing creative tools"
pacman -S blender inkscape krita pinta openscad --noconfirm --needed
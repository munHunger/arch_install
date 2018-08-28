#!/bin/bash
pacman -S i3 --noconfirm --needed
mkdir /home/munhunger/.config
mkdir /home/munhunger/.config/i3
cp -r config_files/i3 /home/munhunger/.config/
#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

cp ~/.config/i3/* $SCRIPTPATH/config_files/i3/
cp ~/.config/polybar/* $SCRIPTPATH/config_files/polybar/
cp ~/wallpaper/* $SCRIPTPATH/config_files/wallpaper/
cp ~/.Xdefaults $SCRIPTPATH/config_files/
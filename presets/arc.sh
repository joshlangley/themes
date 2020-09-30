#!/bin/bash
sudo apt-add-repository -y "deb http://ppa.launchpad.net/noobslab/icons/ubuntu eoan main"
sudo apt-get update --fix-missing
sudo apt-get install -y gnome-tweaks arc-theme arc-icons gnome-shell-extensions gnome-shell-extension-arc-menu

mkdir ~/Pictures
mkdir ~/Picutres/Wallpapers
cd ~/Pictures/Wallpapers
wget http://getwallpapers.com/wallpaper/full/d/1/b/849365-widescreen-ubuntu-backgrounds-1920x1080.jpg
mv 849365-widescreen-ubuntu-backgrounds-1920x1080.jpg "Ubuntu Rustic.jpg"

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable arc-menu@linxgem33.com

gsettings set org.gnome.desktop.interface gtk-theme Arc-Dark
gsettings set org.gnome.desktop.interface icon-theme Arc-Icons
gsettings set org.gnome.shell.extensions.user-theme name Arc-Dark
gsettings set org.gnome.desktop.interface cursor-theme DMZ-White
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface enable-animations true
gsettings set org.gnome.desktop.interface enable-hot-corners true
gsettings set org.gnome.desktop.interface buttons-have-icons true

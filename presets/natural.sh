#!/bin/bash
mkdir ~/.local/share/{themes,icons,sounds,fonts}

if [ $2 == "system" ]
then
	sudo apt-get install -y gnome-tweaks gnome-shell-extensions

	sudo cp -r ../gtk/Layan* /usr/share/themes
	sudo cp -r ../gtk/Orchis* /usr/share/themes
	sudo cp -r ../icons/Tela* /usr/share/icons
	sudo cp -r ../cursors/oreo* /usr/share/icons
else 
	cp -r ../gtk/Layan* ~/.local/share/themes
	cp -r ../gtk/Orchis* ~/.local/share/themes
	cp -r ../icons/Tela* ~/.local/share/icons
	cp -r ../cursors/oreo* ~/.local/share/icons
fi


gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

if [ $1 == "light" ]
then
	echo "ERROR: There is no light/darker version of this stack, so selecting dark. "	
	
	gsettings set org.gnome.desktop.interface gtk-theme Layan-dark
	gsettings set org.gnome.desktop.interface icon-theme Tela-circle-green
	gsettings set org.gnome.shell.extensions.user-theme name Layan-dark
	gsettings set org.gnome.desktop.interface cursor-theme oreo_purple_cursors
	gsettings set org.gnome.desktop.background picture-uri "file://"$PWD"/../wallpapers/Leaves.jpg"
elif [ $1 == "darker" ]
then
	echo "ERROR: There is no light/darker version of this stack, so selecting dark. "
	
	gsettings set org.gnome.desktop.interface gtk-theme Layan-dark
	gsettings set org.gnome.desktop.interface icon-theme Tela-circle-green
	gsettings set org.gnome.shell.extensions.user-theme name Layan-dark
	gsettings set org.gnome.desktop.interface cursor-theme oreo_purple_cursors
	gsettings set org.gnome.desktop.background picture-uri "file://"$PWD"/../wallpapers/Leaves.jpg"
else
	gsettings set org.gnome.desktop.interface gtk-theme Layan-dark
	gsettings set org.gnome.desktop.interface icon-theme Tela-circle-green
	gsettings set org.gnome.shell.extensions.user-theme name Layan-dark
	gsettings set org.gnome.desktop.interface cursor-theme oreo_purple_cursors
	gsettings set org.gnome.desktop.background picture-uri "file://"$PWD"/../wallpapers/Leaves.jpg"
fi

gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface enable-animations true
gsettings set org.gnome.desktop.interface enable-hot-corners true
gsettings set org.gnome.desktop.interface buttons-have-icons true

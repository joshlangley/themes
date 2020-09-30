#!/bin/bash
mkdir ~/.local/share/{themes,icons,sounds,fonts}

if [ $2 == "system" ]
then
	sudo apt-get install -y gnome-tweaks gnome-shell-extensions

	sudo cp -r ../gtk/Materia* /usr/share/themes
	sudo cp -r ../gtk/Orchis* /usr/share/themes
	sudo cp -r ../icons/Tela* /usr/share/icons
	sudo cp -r ../cursors/material_* /usr/share/icons
else 
	cp -r ../gtk/Materia* ~/.local/share/themes
	cp -r ../gtk/Orchis* ~/.local/share/themes
	cp -r ../icons/Tela* ~/.local/share/icons
	cp -r ../cursors/material_* ~/.local/share/icons
fi

#mkdir ~/Pictures

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

if [ $1 == "light" ]
then
	gsettings set org.gnome.desktop.interface gtk-theme MateriaPurple-compact
	gsettings set org.gnome.desktop.interface icon-theme Tela-circle-green
	gsettings set org.gnome.shell.extensions.user-theme name Orchis
	gsettings set org.gnome.desktop.interface cursor-theme material_dark_cursors
	gsettings set org.gnome.desktop.background picture-uri "file://"$PWD"/../wallpapers/Ubuntu Wave - Purple.png"
elif [ $1 == "darker" ]
then
	echo "ERROR: There is no darker gtk option in this stack. Selecting light gtk theme."
	gsettings set org.gnome.desktop.interface gtk-theme MateriaPurple-compact
	gsettings set org.gnome.desktop.interface icon-theme Tela-circle-green-dark
	gsettings set org.gnome.shell.extensions.user-theme name Orchis-dark
	gsettings set org.gnome.desktop.interface cursor-theme material_dark_cursors
	gsettings set org.gnome.desktop.background picture-uri "file://"$PWD"/../wallpapers/Ubuntu Wave - Purple.png"
else
	gsettings set org.gnome.desktop.interface gtk-theme MateriaPurple-dark-compact
	gsettings set org.gnome.desktop.interface icon-theme Tela-circle-green-dark
	gsettings set org.gnome.shell.extensions.user-theme name Orchis-dark
	gsettings set org.gnome.desktop.interface cursor-theme material_light_cursors
	gsettings set org.gnome.desktop.background picture-uri "file://"$PWD"/../wallpapers/Ubuntu Wave - Purple.png"
fi

gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface enable-animations true
gsettings set org.gnome.desktop.interface enable-hot-corners true
gsettings set org.gnome.desktop.interface buttons-have-icons true

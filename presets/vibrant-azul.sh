#!/bin/bash
mkdir ~/.local/share/{themes,icons,sounds,fonts}

if [ $2 == "system" ]
then
	sudo apt-get install -y gnome-tweaks gnome-shell-extensions

	sudo cp -r ../gtk/Orchis* /usr/share/themes
	sudo cp -r ../icons/korla* /usr/share/icons
	sudo cp -r ../cursors/oreo* /usr/share/icons
else 
	cp -r ../gtk/Orchis* ~/.local/share/themes
	cp -r ../icons/korla* ~/.local/share/icons
	cp -r ../cursors/oreo* ~/.local/share/icons
fi

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

if [ $1 == "light" ]
then
	gsettings set org.gnome.desktop.interface gtk-theme Orchis
	gsettings set org.gnome.desktop.interface icon-theme korla-light
	gsettings set org.gnome.shell.extensions.user-theme name Orchis
	gsettings set org.gnome.desktop.interface cursor-theme oreo_blue_cursors
	gsettings set org.gnome.desktop.background picture-uri "file://"$PWD"/../wallpapers/Butterfly.jpg"
elif [ $1 == "darker" ]
then
	echo "ERROR: There is no darker gtk option in this stack. Selecting light gtk theme."
	gsettings set org.gnome.desktop.interface gtk-theme Orchis
	gsettings set org.gnome.desktop.interface icon-theme korla-light
	gsettings set org.gnome.shell.extensions.user-theme name Orchis-dark
	gsettings set org.gnome.desktop.interface cursor-theme oreo_blue_cursors
	gsettings set org.gnome.desktop.background picture-uri "file://"$PWD"/../wallpapers/Butterfly.jpg"
else
	gsettings set org.gnome.desktop.interface gtk-theme Orchis-dark
	gsettings set org.gnome.desktop.interface icon-theme korla
	gsettings set org.gnome.shell.extensions.user-theme name Orchis-dark
	gsettings set org.gnome.desktop.interface cursor-theme oreo_blue_cursors
	gsettings set org.gnome.desktop.background picture-uri "file://"$PWD"/../wallpapers/Butterfly.jpg"
fi

gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface enable-animations true
gsettings set org.gnome.desktop.interface enable-hot-corners true
gsettings set org.gnome.desktop.interface buttons-have-icons true

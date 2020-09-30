# My Gtk themes collection
All my favorite Gtk+ themes in a repo.

# Presets
I have added some preset scripts for some of my favorite themes and some common stacks in general. They are in the `./presets` folder and *must be run from that folder*. Otherwise, wallpapers will break.

Script syntax:

`./<theme>.sh <light/darker/dark> <user/system>`

Where <theme> is the name of the theme, <light/darker/dark> is the theme type, and <user/system> is the install location. If `user`, themes will be installed to `~/.local/share`. If system, the user themes and GNOME extensions app will be installed, and the themes will be installed to `/usr/share`. If you are running into problems with the shell theme or want to tweak/come up with your own theme, use the `system` install. Having a theme installed to both `user` and `system` will not break stuff.

The defaults (that is, if you just run `./<theme>.sh`) are dark user install.

**NOTE:** These scripts currently only work on GNOME. Trying to use them on other DEs may install but not activate the themes.

**ANOTHER NOTE:** Very few of the included wallpapers are my work. Just amazing wallpapers that I get to enjoy and share with others. I will eventually be creating a CREDITs file that will give credit to all these amazing artists from whom I have obtained these wallpapers.

# Some Extras

## THEMES Extraneous (I recommend using the preset scripts)
POP!_os
#sudo add-apt-repository ppa:system76/pop
#sudo apt-get update
sudo apt-get install pop-icon-theme pop-gtk-theme pop-sound-theme

Yaru
sudo apt-get install yaru-theme yaru-theme-shell yaru-theme-icon yaru-theme-sound yaru-theme-gtk #yaru-theme-unity

Flat Remix
Icon: https://www.pling.com/p/1012430/
GTK: https://www.pling.com/p/1013030/
Plasma: https://www.pling.com/p/1315465/ https://www.pling.com/p/1315462/ https://www.pling.com/p/1315464/ https://www.pling.com/p/1304623/
Pling Store: https://www.pling.com/search/projectSearchText/Flat Remix

Neon Knights
Icon: https://www.pling.com/p/1313081/
GTK: https://www.pling.com/p/1301852/
Plasma: https://www.pling.com/p/1320469/
Pling Store: https://www.pling.com/search/projectSearchText/Neon knights

Moka Icons
sudo add-apt-repository ppa:snwh/ppa #ppa:moka/daily
sudo apt-get update
sudo apt-get install moka-icon-theme

Shadow Icons
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install shadow-icon-theme

Uniform Icons
sudo add-apt-repository ppa:noobslab/icons2
sudo apt-get update
sudo apt-get install uniform-icons

Oranchelo Icons
sudo add-apt-repository ppa:oranchelo/oranchelo-icon-theme
sudo apt-get update
sudo apt-get install oranchelo-icon-theme

Adapta gtk
sudo apt-add-repository ppa:tista/adapta -y
sudo apt update
sudo apt install adapta-gtk-theme

Copenico Pack
https://www.gnome-look.org/p/1013056/

Numix Pack
https://www.gnome-look.org/p/1137261/

Granite Shell Theme
https://www.gnome-look.org/p/1137261/

## BACKGROUNDS
Ubuntu
sudo apt-get install ...
ubuntu-wallpapers*           ubuntu-wallpapers-lucid     ubuntu-wallpapers-trusty  
ubuntu-wallpapers-artful    ubuntu-wallpapers-maverick  ubuntu-wallpapers-utopic  
ubuntu-wallpapers-bionic    ubuntu-wallpapers-natty     ubuntu-wallpapers-vivid   
ubuntu-wallpapers-cosmic    ubuntu-wallpapers-oneiric   ubuntu-wallpapers-wily    
ubuntu-wallpapers-disco     ubuntu-wallpapers-precise   ubuntu-wallpapers-xenial  
ubuntu-wallpapers-eoan      ubuntu-wallpapers-quantal   ubuntu-wallpapers-yakkety
ubuntu-wallpapers-focal     ubuntu-wallpapers-raring    ubuntu-wallpapers-zesty   
ubuntu-wallpapers-karmic    ubuntu-wallpapers-saucy

POP!_os
sudo add-apt-repository ppa:system76/pop
sudo apt-get update
sudo apt-get install pop-wallpapers

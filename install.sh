#!/bin/bash

WMDIR=$HOME/.local/share/themes/no-border/xfwm4/
sudo mkdir -p $WMDIR
sudo touch "${WMDIR}/themerc"

TERMINALDIR=$HOME/.local/share/xfce4/terminal/colorschemes/
sudo mkdir -p $TERMINALDIR
sudo cp "${PWD}/Dracula.theme" $TERMINALDIR

APPEARDIR=$HOME/.themes/
sudo mkdir -p $APPEARDIR

git clone https://github.com/dracula/gtk.git
sudo mv "gtk/" "Dracula/"
sudo cp -r "Dracula/" "${HOME}/.themes/"
WMDRAC=$HOME/.local/share/themes/Dracula/
sudo mkdir -p $WMDRAC
sudo cp -r "Dracula/xfwm4/" $WMDRAC
rm -rf "${PWD}/Dracula/"

#Icons
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh

#Bash and Powerline
sudo cp -r "${PWD}/omb-stealth-ux/" "${PWD}/.oh-my-bash/"
sudo mv "${PWD}/.oh-my-bash/" $HOME
sudo cp "${HOME}/.bashrc" "${HOME}/.bashrc.obs_backup"
sudo cp "${HOME}/.oh-my-bash/templates/bashrc.osh-template" "${HOME}/.bashrc"
sudo rm -rf "${PWD}/.oh-my-bash/"

#wallpaper
sudo cp "${PWD}/stealth_ux_wallpaper.jpg" "/usr/share/xfce4/backdrops/"

#dracula-compact
DCDIR=$HOME/.local/share/themes/
sudo cp -r "${PWD}/dracula-compact/" $DCDIR
#dracula-compact-neon
sudo cp -r "${PWD}/dracula-compact-neon/" $DCDIR


#change permission bits
sudo chmod -R u=rwx,g=rwx,o=rwx ~/.oh-my-bash
sudo chmod -R u=rwx,g=rwx,o=rwx ~/.icons

echo Done!

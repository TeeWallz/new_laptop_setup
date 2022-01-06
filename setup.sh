#!/bin/bash

curl -Lks https://gist.githubusercontent.com/TeeWallz/0fc9cbfaeeb5a4a0ce9440446174a5ff/raw/4a1b812008bd342f8ab6bf997e414a8f6626d280/install-dotfiles.sh | /bin/bash

pacman -Syyu
pacman -Syy base-devel i3-gaps feh dmenu i3status code git dbeaver flameshot vlc steam rofi gparted aws-cli docker

snap install nordpass

groupadd docker
usermod -aG docker $USER
newgrp docker
systemctl start docker



cd /opt
git clone https://aur.archlinux.org/yay-git.git
chown -R tom:tom /opt/yay-git
cd yay-git
makepkg -si

yay -S slack-desktop teams teamviewer caprine postman-bin compton-tryone-git oh-my-zsh-git onedrive-abraunegg google-chrome

cd /tmp
git clone https://github.com/DanielBorgesOliveira/onedrive_tray.git
cd onedrive_tray
mkdir build
cd build
qmake ../systray.pro
make
cp onedrive_tray /usr/local/bin/onedrive_tray
#onedrive_tray --onedrive-path [path to onedrive client] --onedrive-args [onedrive client arguments].


# New home?
#onedrive





# i3
# sudo tee -a /usr/share/xsessions/plasma-i3.desktop > /dev/null <<EOT
# [Desktop Entry]
# Type=XSession
# Exec=env KDEWM=/usr/bin/i3 /usr/bin/startplasma-x11
# DesktopNames=KDE
# Name=Plasma with i3
# Comment=Plasma with i3
# EOT
#
# cp .i3_config ~/.config/i3/config
#
# mkdir /usr/share/backgrounds/
# cp wallpaper.png /usr/share/backgrounds/wallpaper.png
# exec --no-startup-id feh --bg-scale /usr/share/backgrounds/background.jpg



# Powerline
# cd /tmp
# git clone https://github.com/powerline/fonts.git
# cd fonts
# ./install.sh


# Natural scroll
# KDE redshift

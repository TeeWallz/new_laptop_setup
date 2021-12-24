#!/bin/bash

pacman -Syyu
pacman -S i3-gaps feh dmenu i3status chromium code chromium git dbeaver flameshot vlc steam rofi

sudo tee -a /usr/share/xsessions/plasma-i3.desktop > /dev/null <<EOT
[Desktop Entry]
Type=XSession
Exec=env KDEWM=/usr/bin/i3 /usr/bin/startplasma-x11
DesktopNames=KDE
Name=Plasma with i3
Comment=Plasma with i3
EOT

cp .i3_config ~/.config/i3/config

mkdir /usr/share/backgrounds/
cp wallpaper.png /usr/share/backgrounds/wallpaper.png
exec --no-startup-id feh --bg-scale /usr/share/backgrounds/background.jpg

cd /opt
git clone https://aur.archlinux.org/yay-git.git
chown -R tom:tom ./yay-git
cd yay-git
makepkg -si

yay -S slack-desktop teams teamviewer caprine postman-bin compton-tryone-git oh-my-zsh-git

cd /tmp
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh


## Install Sway windows manager

pacman -S sway swaybg foot polkit

mkdir -p .config/sway

cp /etc/sway/config .config/sway/config

## Upgrade to swayFX

sudo pacman -R sway

yay -Syu swayfx

sudo pacman -S swayidle swaylock

sudo pacman -S adobe-source-code-pro-fonts

sudo pacman -S wofi rofi mako slurp wl-clipboard grim

sudo pacman -S waybar

sudo pacman -S ttf-font-awesome

sudo pacman -S ttf-roboto-mono

waybar folder: /etc/xdg/waybar

## Zsh config

sudo pacman -S zsh

https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df

## Audio

sudo pacman -S pipewire pipewire-pulse pavucontrol alsa-firmware sof-firmware

## Config touchpad

sudo pacman -S xorg-xinput

sudo pacman -S xf86-input-libinput

## Install yay

https://github.com/Jguer/yay

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

## Install xorg

sudo pacman -S xorg

## Insall Web browser

yay -S google-chrome

yay -S midori

## Install blueman for bluetooth connection

yay -S blueman

use blueman-manager

## Install nerd-font

https://www.nerdfonts.com/font-downloads

unzip <nerd-font-zip>

mv <nerd-font-folder> /usr/share/fonts/

fc-cache -fv

## Install alacritty

pacman -S alacritty

## Install unikey keyboard

sudo pacman -S fcitx5 fcitx5-qt fcitx5-gtk fcitx5-unikey kcm-fcitx5

add to /etc/environment

GTK_IM_MODULE=fcitx

QT_IM_MODULE=fcitx

XMODIFIERS=@im=fcitx

## Install warp

yay -S warp-gui

## Install nodejs

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

nvm ls-remote

nvm install 22.17.0

nvm use 22.17.0

npm i -g npm yarn

## Install Go

sudo pacman -S go

## install docker

sudo pacman -S docker

sudo pacman -S docker-compose

sudo systemctl start docker

sudo systemctl enable docker

sudo usermod -aG docker $USER

## Install java

sudo pacman -S jdk-openjdk
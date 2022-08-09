#! /bin/bash
echo "PobreX installer"
echo "installing..."
#dependencies
sudo pacman -Syu
sudo pacman -S nodejs
sudo pacman -S python3
sudo pacman -S xorg
sudo pacman -S git
npm install x11
sudo pacman -S xterm
#programs
npm install slugdown
npm i dwing
git clone https://github.com/Pobre-da-Silva/pobrelang
git clone https://github.com/Pobre-da-Silva/prume
#nano is for pussys, real boys use prume
sudo pacman -R nano

sudo pacman -S firefox
sudo pacman -S picom




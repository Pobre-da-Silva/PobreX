#! /bin/bash

echo "Welcome to the Pobrex installer!"
echo "This program will deploy the Pobre da Silva ecosystem to your current \
user's environment. Are you okay with that? [y]es/[n]o"
read okay

if [ "$okay" != "y" ]; then
	exit
fi

echo "Select a program for the script to use in order to acquire root \
permissions (ex. \"sudo\")."
read as_root

echo "Starting now. Press Ctrl+C to quit at any time."

echo "1- System update"
"$as_root" pacman -Syu

echo "2- Pre-requisites"
"$as_root" pacman -S nodejs npm python3 xorg-server xorg-xinit git

cd
mkdir pobreapps
cd pobreapps

echo "3- Environment"
mkdir pobreapps/dwing
cd pobreapps/dwing
npm i dwing
cd

git clone https://github.com/Pobre-da-Silva/pobrelang

echo "4- Core utilities"
git clone https://github.com/Pobre-da-Silva/Pruca
git clone https://github.com/Pobre-da-Silva/prume

echo "5- Final setup"
cd
echo "exec npx dwing" > .xinitrc

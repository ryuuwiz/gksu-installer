#!/bin/bash

# Script by Ryuuwiz

echo "======================================="
echo "	GKSU Installer Script                "
echo "======================================="
echo "Script by Ryuuwiz"
echo "Follow me at https://github.com/ryuuwiz"
echo "---------------------------------------"

# Download Packages
echo "Downloading Packages....."
wget http://archive.ubuntu.com/ubuntu/pool/universe/g/gksu/gksu_2.0.2-9ubuntu1_amd64.deb
wget http://ftp.br.debian.org/debian/pool/main/libg/libgksu/libgksu2-0_2.0.13~pre1-9+b1_amd64.deb
wget http://ftp.br.debian.org/debian/pool/main/libg/libgtop2/libgtop-2.0-10_2.34.2-1_amd64.deb

# Installing Packages
echo "Installing Packages...."
sudo dpkg -i libgtop*
sudo dpkg -i libgksu*
sudo dpkg -i gksu*
sudo apt-get install -f -y

echo ""
echo "Thanks for Using this Script...."

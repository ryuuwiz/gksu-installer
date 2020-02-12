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
sudo wget -o /tmp/gksu.deb http://archive.ubuntu.com/ubuntu/pool/universe/g/gksu/gksu_2.0.2-9ubuntu1_amd64.deb
sudo wget -o /tmp/libgksu.deb http://ftp.br.debian.org/debian/pool/main/libg/libgksu/libgksu2-0_2.0.13~pre1-9+b1_amd64.deb
sudo wget -o /tmp/libgtop.deb http://ftp.br.debian.org/debian/pool/main/libg/libgtop2/libgtop-2.0-10_2.34.2-1_amd64.deb

# Installing Packages
echo "Installing Packages...."
sudo dpkg -i --force-all /tmp/libgtop.deb
sudo dpkg -i --force-all /tmp/libgksu.deb
sudo dpkg -i --force-all /tmp/gksu.deb
sudo apt-get install -f -y

# Cleaning Package
sudo rm -rf /tmp/libgtop.deb
sudo rm -rf /tmp/libgksu.deb
sudo rm -rf /tmp/gksu.deb

echo "----------------------------------"
echo "                                  "
echo "	Thanks for Using this Script... "
echo "                                  "
echo "----------------------------------"

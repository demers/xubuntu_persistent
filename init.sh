#!/bin/bash
add-apt-repository -y universe
add-apt-repository -y ppa:mkusb/ppa
apt update
apt install mkusb usb-pack-efi

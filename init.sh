#!/bin/bash
add-apt-repository -y universe
add-apt-repository -y ppa:mkusb/ppa
apt update
apt install -y mkusb usb-pack-efi

apt install -y hw-probe

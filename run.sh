# Mise à jour
apt update

# Gestionnaire d'installation
apt install -y synaptic

# Installation Docker
apt install -y docker.io
systemctl enable --now docker
usermod -aG docker xubuntu

# Installation Docker compose
apt install -y curl
curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Installation AnyDesk
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
apt update
apt install -y anydesk

# Zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
apt install -y ./zoom_amd64.deb
rm -f ./zoom_amd64.deb

# Codium
snap install --classic codium
#wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | apt-key add -
#echo 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main' | tee --append /etc/apt/sources.list.d/vscodium.list 
#apt update
#apt install -y codium 

# Installation .NET
apt install -y apt-transport-https
add-apt-repository universe
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
apt-get install -y ./packages-microsoft-prod.deb
apt update
apt install -y dotnet-sdk-3.1
rm -f ./packages-microsoft-prod.deb

# Installation Rider
snap install rider --classic

# Installation Atom
snap install atom --classic

# Installation Java JDK
apt-get install -y openjdk-11-jdk
apt-get install -y maven

# Installation Eclipse
snap install --classic eclipse

# Installation NodeJS et NPM
apt install -y nodejs npm
npm install --global npm@latest

# Installation Yeoman
npm install --global yo

# Installation jHipster
npm install -g generator-jhipster

# Installation MS Teams
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" | tee /etc/apt/sources.list.d/teams.list
apt update
apt install -y teams

# Installation gestionnaire Clipboard
apt install -y diodon

# Gestionnaire de disques
apt install -y gnome-disk-utility

# Interpréteur Fish
apt install -y fish

# Suppression des paquetages inutiles
apt -y autoremove

# Enlever la limite des commandes mémorisés 'history'
echo "export HISTFILESIZE=" >> ~/.bashrc
echo "export HISTSIZE="  >> ~/.bashrc


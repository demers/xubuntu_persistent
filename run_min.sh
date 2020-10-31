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

# Codium
snap install --classic codium

# Installation .NET
apt install -y apt-transport-https
add-apt-repository universe
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
apt-get install -y ./packages-microsoft-prod.deb
apt update
apt install -y dotnet-sdk-3.1
rm -f ./packages-microsoft-prod.deb

# Installation Java JDK
apt-get install -y openjdk-11-jdk
apt-get install -y maven

# Interpréteur Fish
apt install -y fish

# Suppression des paquetages inutiles
apt -y autoremove

# Enlever la limite des commandes mémorisés 'history'
echo "export HISTFILESIZE=" >> ~/.bashrc
echo "export HISTSIZE="  >> ~/.bashrc


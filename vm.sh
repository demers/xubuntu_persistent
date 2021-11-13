# Mise à jour
apt update

apt upgrade

# Gestionnaire d'installation
apt install -y synaptic

# Installation Docker
apt install -y docker.io
systemctl enable --now docker
usermod -aG docker xubuntu

echo "{" > /etc/docker/daemon.json
echo "\"storage-driver\": \"vfs\"" >> /etc/docker/daemon.json
echo "}" >> /etc/docker/daemon.json
systemctl restart docker

# Installation Docker compose
apt install -y curl
curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Interpréteur Fish
apt install -y fish

# Installation du menu pour les scripts Bash
apt install -y dialog

# Installation de l'outil de gestion des fenêtres texte
apt install -y byobu

# Suppression des paquetages inutiles
apt -y autoremove

# Enlever la limite des commandes mémorisés 'history'
echo "export HISTFILESIZE=" >> ~/.bashrc
echo "export HISTSIZE="  >> ~/.bashrc

# Enlever la limite des commandes mémorisés 'history'
echo "export HISTFILESIZE=" >> /home/xubuntu/.bashrc
echo "export HISTSIZE="  >> /home/xubuntu/.bashrc



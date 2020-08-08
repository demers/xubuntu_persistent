# xubuntu_persistent

Script d'intallation automatique sur Xubuntu USB persistent avec mkusb https://help.ubuntu.com/community/mkusb

# Version

La version courante est XUbuntu 20.04 LTS.  XUbuntu est facile à utiliser pour un débutant.

# Sites de référence

* https://linuxconfig.org/how-to-install-docker-on-ubuntu-20-04-lts-focal-fossa
* https://linuxconfig.org/how-to-install-docker-compose-on-ubuntu-20-04-focal-fossa-linux
* https://rufus.ie/

# Étape préliminaire à suivre

## Sur la clé USB no. 1

Partez Firefox et allez sur la page https://github.com/demers/xubuntu_persistent.git  Consultez la page pour copier les commandes ci-bas.

1. Installer git par la commande sudo apt install git
2. Exécuter: git clone https://github.com/demers/xubuntu_persistent.git
3. Exécuter cd xubuntu_persistent.git
4. Exécuter chmod +x init.sh
5. Exécuter sudo ./init.sh

## Sur la clé USB no. 2

Partez Firefox et allez sur la page https://github.com/demers/xubuntu_persistent.git  Consultez la page pour copier les commandes ci-bas.

1. Installer git par la commande sudo apt install git
2. Exécuter: git clone https://github.com/demers/xubuntu_persistent.git
3. Exécuter cd xubuntu_persistent.git
4. Exécuter chmod +x run.sh
5. Exécuter sudo ./run.sh

# Commandes à exécuter sous Windows 10 pour avoir accès à la partition NTFS

```
diskmgmt.msc
```

* Supprimer la partition 4 (la dernière de la liste)

# Logiciels a installer sous Linux

## Synaptic

```
sudo apt install synaptic
```

## Docker et Docker-compose

(voir sites ci-haut)

## AnyDesk

* Allez sur anydesk.com

## Zoom

* Allez sur zoom.com

## VSCodium

https://vscodium.com/

## c#

Voir https://linuxhint.com/install_dot_net_core_ubuntu/

```
sudo apt install dotnet-sdk-3.1
```

## Rider

```
sudo snap install rider --classic
```

## Atom

```
sudo snap install atom --classic
```

## Java JDK

```
sudo apt-get install openjdk-11-jdk
```

## Eclipse

```
sudo snap install --classic eclipse
```

## MS Teams

```
sudo apt install curl
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" | sudo tee /etc/apt/sources.list.d/teams.list
sudo apt update
sudo apt install teams

```

## Diodon

```
sudo apt install diodon
```

# Taches a apprendre

## Partition usbdata

Double-cliquez sur le disque usbdata sur le bureau

## Changer le fuseau horaire de l'heure

* Clique-droit sur la date en haut a droite
* Voir Proprietes
* Cliquez sur Time and Date Settings
* Cliquez sur Timezone et choisir Toronto.

## Installer le clavier francais

* Chercher l'application keyboard
* Decocher le default
* Choisir la langue francaise multilingue

## Installer les écrans virtuelles

* Clique-droit sur la barre du haut
* Panel
* Add New items
* Ajouter Workspace switcher
* Aller dans Workspace settings et ajouter des écrans virtuelles

## Partition Windows

* Installer le logiciel gnome-disks par la commande
```
sudo apt install gnome-disk-utility
```
* Identifiez la partition NTFS et faire en sorte qu'elle soit monte automatiquement
* Desactiver User Settings Defaults et OK.



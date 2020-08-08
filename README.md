# xubuntu_persistent

Scripts d'intallation automatique sur Xubuntu USB persistent avec mkusb https://help.ubuntu.com/community/mkusb

# Version

La version courante est XUbuntu 20.04 LTS.  XUbuntu est facile à utiliser pour un débutant.

# Sites de référence

* https://linuxconfig.org/how-to-install-docker-on-ubuntu-20-04-lts-focal-fossa
* https://linuxconfig.org/how-to-install-docker-compose-on-ubuntu-20-04-focal-fossa-linux
* https://rufus.ie/

# Étape préliminaire à suivre

## Installer XUbuntu

* Installez https://rufus.ie/
* Connectez votre clé USB no. 1 et installez XUbuntu avec Rufus.
* Entrez votre clé USB no. 1 et redémarrez votre ordinateur en faisant en sorte de démarrer sur la clé USB.

## Sur la clé USB no. 1

Partez Firefox et allez sur la page https://github.com/demers/xubuntu_persistent.git  Consultez la page pour copier les commandes ci-bas.

1. Installer git par la commande sudo apt install git
2. Exécuter: git clone https://github.com/demers/xubuntu_persistent.git
3. Exécuter cd xubuntu_persistent.git
4. Exécuter chmod +x init.sh
5. Exécuter sudo ./init.sh
6. Branchez la clé USB no. 2
7. Téléchargez le fichier ISO de XUbuntu par la commande texte: wget http://mirror.csclub.uwaterloo.ca/xubuntu-releases/20.04/release/xubuntu-20.04.1-desktop-amd64.iso
6. Démarrez la commande mkusb pour installer XUbuntu (plus de détails par vidéo).

## Sur la clé USB no. 2

Partez Firefox et allez sur la page https://github.com/demers/xubuntu_persistent.git  Consultez la page pour copier les commandes ci-bas.

1. Installer git par la commande sudo apt install git
2. Exécuter: git clone https://github.com/demers/xubuntu_persistent.git
3. Exécuter cd xubuntu_persistent.git
4. Exécuter chmod +x run.sh
5. Exécuter sudo ./run.sh

# Commandes à exécuter sous Windows 10 pour avoir accès à la partition NTFS

Le logiciel mkusb crée une partition NTFS mais elle n'est pas disponible sous Windows.  Pour arriver à y accéder, nous devez utiliser le logiciel Windows suivant

```
diskmgmt.msc
```

Sur la clé USB, vous supprimez la partition 4 (la dernièere de la liste à droite).  Vous recréez une nouvelle partition de type NTFS.

# Liste des logiciels installés sous Linux par le script run.sh

* Synaptic
* Docker et Docker-compose
* Anydesk
* Zoom
* VSCodium
* .NET core
* Rider
* Atom
* Java JDK
* Eclipse
* MS Teams
* Diodon
* gnome-disks


# Taches à réaliser manuellement

## Partition usbdata

Double-cliquez sur le disque usbdata sur le bureau pour accéder à la partition des données.

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

* Identifiez la partition NTFS et faire en sorte qu'elle soit monté automatiquement
* Désactiver 'User Settings Defaults' et OK.



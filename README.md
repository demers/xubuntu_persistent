# xubuntu_persistent

Scripts d'intallation automatique sur Xubuntu USB persistent avec mkusb https://help.ubuntu.com/community/mkusb

# Version

La version courante est XUbuntu 20.04 Focal Fossa.  XUbuntu est facile à utiliser pour un débutant.

# Sites de référence

* https://linuxconfig.org/how-to-install-docker-on-ubuntu-20-04-lts-focal-fossa
* https://linuxconfig.org/how-to-install-docker-compose-on-ubuntu-20-04-focal-fossa-linux
* https://www.ventoy.net

# Étape préliminaire à suivre

Vous aurez besoin de deux (2) clés USB.  La première clé (A) doit être de
taille d'un minimum de 16 Go.  La deuxième clé (B) est une clé d'au moins 32
Go et doit être de version USB 3.0

## Installer XUbuntu sur la clé A sous Windows

* Installez d'abord Ventoy https://www.ventoy.net sous Windows
* Connectez votre clé USB no. 1 et copiez le fichier ISO de la distribution
  XUbuntu https://xubuntu.org/download
* Entrez votre clé USB no. 1 et redémarrez votre ordinateur en faisant en sorte de démarrer sur la clé USB.  Le menu Ventoy s'affichera et choisissez le fichier ISO de XUbuntu.

## Sur la clé USB A

Sous XUbuntu, partez Firefox et allez sur la page https://github.com/demers/xubuntu_persistent.git  Consultez la page pour copier les commandes ci-bas.

1. Installer git par la commande `sudo apt install git`
2. Exécuter: `git clone https://github.com/demers/xubuntu_persistent.git`
3. Exécuter `cd xubuntu_persistent`
4. Exécuter `sudo ./init.sh`  Cela va installer ce qui est nécessaire pour l'étape suivante.
5. Brancher la clé USB B
6. Télécharger le fichier ISO de XUbuntu par la commande texte: `wget http://mirror.csclub.uwaterloo.ca/xubuntu-releases/20.04/release/xubuntu-20.04.3-desktop-amd64.iso`
7. Démarrer la commande `mkusb` pour installer XUbuntu (plus de détails par la vidéo correspondante).

## Rapport de compatibilité à l'aide de la clé USB A

Partir la commande `sudo -E hw-probe -all -upload`  

Cela va vérifier la comptabilité de Linux sur votre ordinateur.  Un rapport sera produit et une adresse URL sera fournie pour consultation.  Vous pouvez constater le matériel plus ou moins reconnu pour Linux de votre ordinateur.


## Sur la clé USB B

Partez Firefox et allez sur la page https://github.com/demers/xubuntu_persistent.git  Consultez la page pour copier les commandes ci-bas.

1. Installer git par la commande `sudo apt install git`
2. Exécuter: `git clone https://github.com/demers/xubuntu_persistent.git`
3. Exécuter `cd xubuntu_persistent`
4. Exécuter `sudo ./run_min.sh`

# Commandes à exécuter sous Windows 10

Le logiciel `mkusb` crée une partition NTFS mais elle n'est pas disponible sous Windows.  Pour arriver à y accéder, nous devez utiliser le logiciel Windows suivant

```
diskmgmt.msc
```

Sur la clé USB, vous supprimez la partition 4 (la dernière de la liste à droite).  Vous recréez une nouvelle partition de type NTFS.  Voir les explications dans la vidéo d'aide.

# Désactiver le 'fast startup' sous Windows

Suivre la procédure à https://winbuzzer.com/2020/05/19/how-to-disable-windows-10-fast-startup-hiberboot-hybrid-boot-hybrid-shutdown-xcxwbt/ par exemple.

# Liste des logiciels installés sous Linux par le script run_min.sh

* Synaptic
* Docker et Docker-compose
* VSCodium
* Java JDK

# Tâches à réaliser manuellement

## Partition usbdata (NTFS)

Utilisez l'application `gnome-disks` pour faire en sorte que la partition soit
montée automatiquement au démarrage.  Pour se faire, il faut désactiver `User Settings Defaults`.  Il faut lui associer un point d'accès.
Voir la vidéo d'aide.

Ensuite, il sera possible de double-cliquer sur le disque usbdata (ou équivalent) sur le bureau pour accéder à la partition des données.  La partition sera montée et rendue accessible.

## Changer le fuseau horaire de l'heure

* Clique-droit sur la date en haut à droite;
* Voir Propriétés;
* Cliquez sur `Time and Date Settings`
* Cliquez sur `Timezone` et choisir Toronto.

## Installer le clavier francais

* Chercher l'application `keyboard` dans le menu en haut à droite;
* Décocher le `default`
* Choisir le clavier de la langue française multilingue;
* Supprimer les autres claviers.

## Installer les écrans virtuelles

* Clique-droit sur la barre du haut dans un espace sans rien;
* Choisir `Panel`
* Choisir `Add New items`
* Ajouter `Workspace switcher`
* Aller dans `Workspace settings` et ajouter des écrans virtuelles

* Identifiez la partition NTFS et faire en sorte qu'elle soit monté automatiquement

## Changement du mot de passe du compte par défaut `xubuntu`

* Faire la commande `sudo passwd xubuntu`
* Taper le mot de passe courant qui est 'rien'... faire <entrer>
* Entrer votre nouveau mot de passe
* Entrer le mot de passe une 2ième fois.


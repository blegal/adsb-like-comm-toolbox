# adsb-like-comm-toolbox

# Usage

Afin de tester le systeme de communication il est possible d'utiliser un fichier temporaire à la place des modules radio SdR.

La génération de 16 trames sockées dans un fichier nommé **/tmp/fichier.raw** peut être réalisé à l'aide de la commande ci-dessous:

```bash
./adsb_emitter --file /tmp/fichier.raw --max_frames 16 -v
```

Le décodage des informations savegardées dans le fichier **/tmp/fichier.raw** s'oppère grace à la commande suivante :

```bash
./adsb_receiver --file /tmp/fichier.raw -v
```

# Installation

Afin de compiler les codes sources permettant de générer et de décoder les signaux, il est nécessaire de posséder une tool-chain (GCC ou CLANG) ainsi que les bibliotheques logicielles permettant d'accéder aux modules SdR (cf les procédures d'installation ci-dessous).

Pour commencer, ouvrez un terminal et rendez vous dans le repertoire ou vous souhaitez installer le projet.

Ensuite clonez le répertoire du projet

git clone https://github.com/blegal/adsb-like-comm-toolbox.git

Ensuite on va créer le répertoire ou les fichiers temporaires de compilation et l'executable vont se trouver:

cd adsb-like-comm-toolbox
mkdir build
cd build

On configure le projet (génération des scripts de compilation)

cmake ..

On compile l'ensemble des codes source

make -j 4


## Mac-OS

Af

## Linux (ubuntu)

* apt install libuhd-dev uhd-host uhd-soapysdr

* apt install hackrf soapysdr-module-hackrf libhackrf-dev

* apt install librtlsdr-dev

* apt install libsoapysdr-dev soapysdr-module-all


## Windows (...)




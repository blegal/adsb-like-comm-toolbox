# adsb-like-comm-toolbox

Cette page a pour objectif de détailler des cas d'usage de la toolbox adsb-like. Cette toolbox permet soit de:
- simuler le transfert d'information en passant par un fichier temporaire,
- d'utiliser des modules USRP (Etthus UHD, HackRF et RTL-SdR).

Le système de communication et les algorihtmes numériques mis en oeuvre sont relativement simple. La toolbox dans son état actuel a pas pour objectif de fournir un socle solide pour des projets pédagogiques. Dans se version actuelle le systeme permet de transmettre des fichiers avec plus ou moins de réussite en fonction de conditions environnementales...

Cette page synthétise différents cas d'études en fournissant les commandes à utiliser.

# Simulation de la transmission / reception d'une image

## Sans code correcteur d'erreurs

Dans un premier temps nous allons simuler la transmission d'une image. Afin de tester le systeme de communication (ensemble des processings intégrés dans le systeme d'émission et de reception), il est possible d'utiliser un fichier temporaire à la place des modules radio SdR.  Dans un premier temps, on ne va pas uiliser de modules USRP. Cela va simplifier la mise en oeuvre du processus et le limiter le nombre de flags à fournir à l'outil. On va utiliser un fichier temporaire qui va stocker les données qui auraient été transmises au module d'émission.

Pour générer ce fichier temporaire, on va utiliser la commande suivante:

```bash
./emitter_image --file /tmp/image.raw --bmp_file ../images/colors.bmp --sleep 10
```

La chaine de transmission numérique va charger d'images (*../images/colors.bmp*) présentée ci-dessous à l'aide de la classe BMP. L'ensmeble des pixels composant l'image est alors encapsulé dans des trames (cf. le format des trames) par la classe *BMPSource*.

![](images/colors.jpg)

Une fois encodée par le programme un fichier d'une centaine de MO va etre généré sur votre disque dur (*/tmp/image.raw*). Ce fichier contient les données I/Q à tranmettre. Les données I/Q sont codées toutes sous la forme d'un octet (int8_t).

Il est possible de visualiser facilement les trames issues du processus d'encodage à l'aide de l'outil Matlab (ou octave). Les commandes ci-dessous permettent de charger 

```bash
./emitter_image --file /tmp/image.raw --bmp_file ../images/colors.bmp --sleep 10
```

Afin de simuler la reception des données via un module USRP et réalsier le décodage de l'image, il faut utiliser la commande suivante:

```bash
./receiver_image --file /tmp/image.raw --inter
```

Apres l'execution du processus de décodage, une image *.bmp* doit se trouver dans le repertoire courant. Cette deniere est en théorie identique a celle qui a été transmise (cf. ci dessous). En effet, dans le cas présent nous n'avons pas subit de perturbation lors du transfert des données.

![](images/colors.jpg)

L'option (*--inter*) indiquée sur la ligne de commande permet d'accellerer le processus de décodage en utilisant les fonctionnalités SIMD des processeurs INTEL. Il peut être omis sans que cela n'affecte la fonctionnalité.

## Avec code correcteur d'erreurs

Afin de protéger les données lors d'une transmission réelle, il est possible d'activer un code correcteur d'erreurs. Ce dernier est un code LDPC dont le redement de codage est de 1/2. Il protege les 576 bits a transmettre (valeur par défaut) à l'aide de 576 bits de redondance. Lorsque le recepteur recoit un paquet pour lequel le code CRC n'est pas validé, il déclenche alors l'execution du décodeur afin de corriger les erreurs de transmission. L'utilisation du code LDPC reduit le débit de tranmsission d'un facteur 2 !

Pour transmettre une image la commande devient:

```bash
./emitter_image --file /tmp/image.raw --bmp_file ../images/leopard.bmp--fec --sleep 10
```

Afin de simuler la reception des données via un module USRP et réalsier le décodage de l'inforamtion, il faut utiliser la commande suivante:

```bash
./receiver_image --file /tmp/image.raw --fec --inter
```

Il est a noter qu'en simulation, l'utilisation d'un code correcteur d'erreurs ne sert à rien car le canal de transmission est parfait ;-)


## A récrire lorsque j'aurais le temps...

La génération de 16 trames sockées dans un fichier nommé **/tmp/fichier.raw** peut être réalisé à l'aide de la commande ci-dessous:

```bash
./adsb_emitter --file /tmp/fichier.raw --max_frames 16 -v
```

Le décodage des informations savegardées dans le fichier **/tmp/fichier.raw** s'oppère grace à la commande suivante :

```bash
./adsb_receiver --file /tmp/fichier.raw -v
```

# Installation & compilation du projet

Afin de compiler les codes sources permettant de générer et de décoder les signaux, il est nécessaire de posséder une tool-chain (GCC ou CLANG) ainsi que les bibliotheques logicielles permettant d'accéder aux modules SdR (cf les procédures d'installation ci-dessous).

Pour commencer, ouvrez un terminal et rendez vous dans le repertoire ou vous souhaitez installer le projet.

Ensuite clonez le répertoire du projet

```bash
git clone https://github.com/blegal/adsb-like-comm-toolbox.git
```

Ensuite on va créer le répertoire ou les fichiers temporaires de compilation et l'executable vont se trouver:

```bash
cd adsb-like-comm-toolbox
mkdir build
cd build
```

On configure le projet (génération des scripts de compilation)

```bash
cmake ..
```

On compile l'ensemble des codes source

```bash
make -j 4
```

# Installation des bibliotheques logicielles

## Mac-OS

Af

## Linux (ubuntu)

* apt install libuhd-dev uhd-host uhd-soapysdr

* apt install hackrf soapysdr-module-hackrf libhackrf-dev

* apt install librtlsdr-dev

* apt install libsoapysdr-dev soapysdr-module-all


## Windows (...)




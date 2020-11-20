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

Afin de compiler les codes sources permettant de générer et de décoder les signaux, il est nécessaire de posséder une tool-chain (GCC ou CLANG) ainsi que les bibliotheques logicielles permettant d'accéder aux modules SdR.

## Mac-OS

Af

## Linux (ubuntu)

## Windows (...)

Phase 1 - Flux Pair-à-Pair
--------------------------

# Introduction

Avant de bâtir une chaîne de production de contenu audiovisuel avec des équipements spécialisés, il est important de comprendre la nature des signaux générés, transmis et consommés. Ces signaux reposent sur des standards qui ont été implémentés non seulement dans des appareils professionnels mais aussi dans des logiciels libres.

L'ensemble des exercices suivants consite générer et visualiser un flux transmis par IP en mode unicast. Pour ce faire, nous utiliserons 2 types d'application média ainsi que 2 protocoles de transport différents. Ce sera aussi l'occasion de capturer et d'inspecter les paquets IP pour mesurer, comprendre et comparer les mécanismes de ces protocoles.

[TODO]Schéma chaine simple

# Protocol RTP

[Real-time Transport Protocol](https://en.wikipedia.org/wiki/Real-time_Transport_Protocol) est le
moyen de transport média le plus simple.

## Application Graphique

Commençons par utiliser `VLC` pour générer un flux à partir d'un fichier vidéo. Puis ce même outil
permettra de lire ce flux sur une autre machine et mesurons, au passage le débit de genre de flux.
[Exercice 1.0](./Phase-1.0/README.md)

## Application en ligne de commande

Introduisons un autre outil gratuit mais cette fois sans interface graphique: `ffmpeg`. À noter que
celui-ci est moins connus du grand public que `VLC` mais est très utilisé par les grosses plateformes de diffusion
web. Et soyons curieux en expérimentant l'ajout une seconde source vidéo.
[Exercice 1.1](./Phase-1.1/README.md)

# Protocol RTSP

[Real-Time Streaming Protocol](https://en.wikipedia.org/wiki/Real-Time_Streaming_Protocol) repose
sur `RTP` mais introduit un mécanisme de contrôle de flux.

## Application Graphique

Retestons avec `VLC` et essayons de comprendre noter les différences avec `RTP`. [Exercice 1.2](./Phase-1.2/README.md)

## Application en ligne de commande

Introduisons un serveur media `mediamtx` avec un client `ffmpeg` et tentons d'en savoir plus sur la négociation de la session.

TODO: c'Est 3 fois la même chose!
[Exercice 1.3](./Phase-1.3/README.md)
[Exercice 1.4](./Phase-1.4/README.md)
[Exercice 1.5](./Phase-1.5/README.md)

[concept ?](https://stackoverflow.com/questions/26999595/what-steps-are-needed-to-stream-rtsp-from-ffmpeg)\

# Récapitulatif

Retour sur le unicast

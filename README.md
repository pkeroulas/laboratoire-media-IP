Laboratoire: Introdution au Média sur IP
----------------------------------------

Sponsorisé par:

![logo](https://site-cbc.radio-canada.ca/site/annual-reports/2014-2015/_images/about/services/cbc-radio-canada.png)

# Contexte

Ce laboratoire vise à préparer des techniciens aux besoins de l'industrie de télédiffusion qui se
transforme en adoptant de plus en plus les Technologies de l'Information. Il consiste à appliquer des
concepts de réseautique au transport de signaux média sur IP. Ces concepts s’appliquent à de réelles
situations de production média _live_ ainsi qu’à la distribution par câble, satellite ou _web_.

Les outils à moindre coût employés dans ces exercices sont basés sur du matériel aussi générique que
possible, sur des logiciels libres et des protocoles de transport/contrôle média standards.
Cependant, leur principe de fonctionnement et la méthodologie d'intégration restent alignés avec un
contexte professionnel.

# Aperçu

Le laboratoire débute par une série d'exercices préparatoires pour se familiariser avec la nature
des signaux média sur IP. Ceux-ci sont produits et consommés par de simple stations de travail.
Une fois les protocoles assimilés, les étudiants sont aménés à bâtir un mini studio de production
de bout en bout: des sources _live_ (caméra) ou enregistrées (fichiers), une station de mixage et un
serveur de distribution.

TODO: insérer le serveur média dans le diagram.

![apercu](./img/laboratoire_media_sur_IP_phase5.png)
*[Diagramme source](https://docs.google.com/drawings/d/1q6MF5KY4nLmCBxLiehqOJvOSK_qoAchkg8bCS-ulvEI/edit)*

# Pré-requis

* Modèle OSI
* Concept de routage, couches 2 et 3
* Expérience avec Wireshark
* Expérience avec en configuration de commutateur/routeur
* Base Linux et Python

# Objectifs d’apprentissage

## Compétences

Le but de l'exercice est de bâtir une chaîne de traitement média _live_ afin d'obtenir un programme,
c'est-à-dire un flux audiovisuel distribuable. La réalisation de ce produit est semé d'embûches
réalistes mais la méthodologie rigoureuse employée permet de les surmonter par de la validation
systématique. Les tâches suivantes visent à développer cette méthodologie permettant d'opérer
horizontalement (aux differents points du chemin de données) et verticalement (à travers les
différentes couches technologiques).

* __Installer et configurer__ les équipements d’une chaîne de production afin de produire un contenu en direct
* __Déboguer__ le chemin du flux de donnée
* __Mesurer__ le trafic à différents points du réseau
* __Juger__ la qualité du résultat
* __Identifier__ les contraintes techniques compromettant cette qualité perceptuelle
* __Tester__ et fixer différents paramètres afin de trouver le meilleur compromis

Un autre but de cette démarche est de créer un pont cognitif entre l'osbervation de
données très bas niveau et l'expérience du média temps réel.

## Connaissances

Chacun des 4 thèmes suivant sera abordé. Ces listes exhaustives ne
pourront être entièrement couvertes mais sont ordonnées par priorités.

Réseaux:

* __Routage__ L2: multicast, IGMP
* __Transport__: UDP vs TCP, TTL, RTP
* __Delai/jitter__ absorbé par buffer et __optimisation__ par QoS (comment induire du délai?)
* __Routage__ L3

Média:

* __Fichier__ vs __Flux__
* __Protocoles__ de transport: retrouver les données média dans les paquets IP
* __Formats__ audio, vidéo, meta-données
* __Contraintes__: trouver l'équilibre entre qualité du signal, bande passante et délai
* __Codecs__: h264, aac
* __Luma__ vs __chroma__
* __Echantillonnage__

TI:

* __Linux Shell__: configurer un système (comme un encodeur vidéo) _headless_ par ssh + bash
* __Scripting__: contrôler et/ou surveiller un équipement ou service à travers un _web API_ (python + ansible)
* __Couche de contrôle__ des signaux avec [NMOS](https://specs.amwa.tv/nmos/)
* __Infonuagique__: distribution du signal de sortie sur une platforme en ligne

Analogique:

* __SnR__ mesuré à la sortie d'un microphone + pré-amplificateur 
* __Ligthmeter__ pour l'éclairage d'appoint

# Requis techniques

Le [guide de l'instructeur.](./guide-instructeur.md)🤓 inclut:
* l'installation des logiciels
* les requis techniques pour l'aquisition de matériel
* des document de références (config, trace réseaux...)

# Déroulement

0. Préparation et branchement du matériel initital: 2 PC branchés à un commutateur
1. [Configuration d’une chaîne média simple pair à pair](./Phase-1-Flux-pair-a-pair/README.md)
2. [Adaptation pour la multi-diffusion](./Phase-2-Flux-multi-diffusion/README.md)
3. [Compression du signal pour la distribution.](./Phase-3-Compression/README.md)
4. [Bâtir un mini studio.](./Phase-4-Serveur-diffusion/README.md)

🚀🚀🚀

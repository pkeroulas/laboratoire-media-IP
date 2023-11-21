Laboratoire: Introdution au Média sur IP
----------------------------------------

Sponsorisé par:

![logo](https://site-cbc.radio-canada.ca/site/annual-reports/2014-2015/_images/about/services/cbc-radio-canada.png)

# Contexte

Ce laboratoire consiste à mettre en application des concepts de réseautique pour le transport de contenu audio visuel et à se familiariser avec des outils logiciels pour le traitement de ce même contenu.  Les concepts abordés s’appliquent autant à de vrai centres de production média live modernes qu’aux réseaux de distribution web. Les ressources à moindre coût sont basées sur du matériel aussi générique que possible, sur des logiciels libres des protocoles de transport/contrôle média standards.

# Pré-requis

* modèle OSI
* expérience avec Wireshark
* expérience avec en configuration de commutateur/routeur
* terminal Linux

# Objectifs d’apprentissage

## Compétences

L’étudiant.e est amené.e à:
* __installer et configurer__ les équipements d’une chaîne de production afin de produire un contenu 
* __audiovisuel__ en direct
* __déboguer__ le chemin du flux de donnée
* __mesurer__ le trafic à différents points du réseau
* __juger__ la qualité du résultat en se basant sur son expérience de consommateur de vidéo en ligne
* __identifier__ les contraintes techniques compromettant cette qualité perceptuelle
* __tester__ et fixer différents paramètres afin de trouver le meilleur compromis  

## Connaissances 

Réseaux:

* encapsulation IP: UDP vs TCP, RTP
* routage couche 2: unicast ou multicast, IGMP

Média:

* protocole de transport: 2110, mpeg-TS
* codecs: h264, aac
* contraintes: qualité du signal, bande passante, délai

La section [Idées](#idees) liste une série de concepts additionnels qui pourraient être explorés.

# Aperçu

![apercu](./img/laboratoire_media_sur_IP_phase5.png)
*[Diagramme source](https://docs.google.com/drawings/d/1q6MF5KY4nLmCBxLiehqOJvOSK_qoAchkg8bCS-ulvEI/edit)*

Le laboratoire consite à bâtir une chaîne de traitement média _live_ et d'aboutir à la formation d'un signal distribuable.
Le point de départ est la captation d'une source audio-video. Ensuite, ce contenu sera modifié par
l'apport d'autres sources (fichiers, _webcam_ etc.) et l'ajustement de paramètres (niveaux, colorimétrie etc.).
Ce résultat sera finalement compressé 

Les étapes de réalisation seront semées d'embûches mais suivent une méthodologie rigoureuse avec de la validation systématique.

# Requis techniques

* 2 PCs
* switch Cisco simple
* une caméra IP
* système d'exploitation à déterminer
* logiciels libres: VLC, OBS, etc. Wireshark

[Guide de l'instructeur.](./guide-instructeur.md)

# Déroulement

1. installation d'une chaîne de transmission simple avec une source (caméra), un canal (réseau), une destination (moniteur)
2. insertion d'un équipement inconnu
3. ajout d'une autre source et utilisation d’un mixeur
4. configurer le signal de distribution

[C'est parti!](./laboratoire.md)

# <a name="idees"></a> Idées

Un ou plusieurs modules pourrait compléter le laboratoire, notamment:

* le contrôle d'équipements/services à travers un _webAPI_ grâce à des scripts
* l'optimisations du réseau: VLAN, QoS
* un exercice peut inclure une partie _Linux Shell_ qui est de plus en plus utilisé dans l'industrie.
* la distribution du signal de sortie sur une platforme _web_

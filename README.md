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
* ~~VLAN, QoS~~
* ~~routage couche 3~~

Média:

* protocole de transport: 2110/mpeg-TS
* codecs: h264, aac
* contraintes: qualité du signal, bande passante, délai
* ~~formats média: HD, stéréo…~~

Autres:

* ~~scripting~~
* ~~protocol de contrôle: _web API~~_

# Requis techniques

* 2 PCs
* switch Cisco simple
* une caméra IP
* logiciels libres: VLC, OBS, etc. Wireshark

[Guide de l'instructeur.](./guide-instructeur.md)

# Déroulement

1. installation d'une chaîne de transmission simple avec une source (caméra), un canal (réseau), une destination (moniteur)
2. insertion d'un équipement inconnu
3. ajout d'une autre source et utilisation d’un mixeur
4. configurer le signal de distribution

[C'est parti!](./laboratoire.md)

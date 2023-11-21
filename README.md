Laboratoire: Introdution au Média sur IP
----------------------------------------

Sponsorisé par:

![logo](https://site-cbc.radio-canada.ca/site/annual-reports/2014-2015/_images/about/services/cbc-radio-canada.png)

# Contexte

Ce laboratoire consiste à mettre en application des concepts de réseautique pour le transport de contenu audiovisuel et à se familiariser avec des outils logiciels de traitement de ce même contenu. Les concepts abordés s’appliquent à de réelles situations de production média _live_ ainsi qu’aux réseaux de distribution par câble, satellite  ou _web_. Les ressources à moindre coût employées dans cet exercice sont basées sur du matériel aussi générique que possible, sur des logiciels libres et des protocoles de transport/contrôle média standards.

# Pré-requis

* modèle OSI
* concept de routage, couches 2 et 3
* expérience avec Wireshark
* expérience avec en configuration de commutateur/routeur
* (terminal Linux)
* (base de Python)

# Objectifs d’apprentissage

## Compétences

Les étapes de réalisation sont semées d'embûches réalistes. Cependant une méthodologie rigoureuse permet de les surmonter par de la validation systématique. Un autre but de cette démarche est de créer un pont cognitif entre les obervations de données très bas niveau et l'expérience du média temps réel.

Les tâches suivantes visent à développer une méthodologie permettant d'opérer horizontalement (aux differents points du chemin de données) et verticalement (à travers les différentes couches technologiques).

* __installer et configurer__ les équipements d’une chaîne de production afin de produire un contenu en direct
* __déboguer__ le chemin du flux de donnée
* __mesurer__ le trafic à différents points du réseau
* __juger__ la qualité du résultat
* __identifier__ les contraintes techniques compromettant cette qualité perceptuelle
* __tester__ et fixer différents paramètres afin de trouver le meilleur compromis  

## Connaissances 

Réseaux:

* __encapsulation__ IP: UDP vs TCP, RTP
* __routage__ couche 2: unicast ou multicast, IGMP

Média:

* __protocoles__ de transport: 2110, mpeg-TS
* __codecs__: h264, aac
* __contraintes__: qualité du signal, bande passante, délai

La section [Idées](#idees) liste une série de concepts additionnels qui pourraient être explorés.

# Aperçu

![apercu](./img/laboratoire_media_sur_IP_phase5.png)
*[Diagramme source](https://docs.google.com/drawings/d/1q6MF5KY4nLmCBxLiehqOJvOSK_qoAchkg8bCS-ulvEI/edit)*

Le but de l'exercice est à bâtir une chaîne de traitement média _live_ afin d'obtenir un flux audiovisuel distribuable.
Le point de départ est une caméra qui fournit le signal source qu'il faut véhiculer sur un réseau IP. Puis un mixeur
permettra d'insérer autres éléments graphiques ou sonnores (fichiers, _webcam_ etc.) et l'ajustement de paramètres (colorimétrie,
volume sonore, etc.). Ce résultat sera finalement compressé et converti dans un format adapté au transport sur Internet.

# Requis techniques

* 2 PCs
* switch Cisco simple
* une caméra IP
* logiciels libres: VLC, OBS, etc. Wireshark

[Guide de l'instructeur.](./guide-instructeur.md)

# Déroulement

1. préparation du matériel: d'une chaîne de transmission simple avec une source (caméra), un canal (réseau), une destination (moniteur)
2. configuration c d’une chaîne média simple
3. insertion d'un équipement inconnu
4. utilisation d’un mixeur et ajout de nouvelles sources 
5. configuration du flux de sortie

[C'est parti!](./laboratoire.md)🚀

# <a name="idees"></a> Idées

Un ou plusieurs modules pourraient compléter le laboratoire, notamment:

* _scripting_ + HTTP: le contrôle d'équipements/services à travers un _webAPI_
* réseau: optimisations avec VLAN, QoS
* administration système: une partie _Linux Shell_ qui est de plus en plus utilisé dans l'industrie
* infonuagique: la distribution du signal de sortie sur une platforme en ligne

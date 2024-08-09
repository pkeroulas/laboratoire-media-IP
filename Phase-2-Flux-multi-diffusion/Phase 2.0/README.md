# Phase 2.0 - VLC à VLC (RTP sans IGMP Snooping)
![Topologie phase 2.0](./img/Phase_2_S2.0_topologie.png)

## Prérequis
- Un fichier vidéo en provenance du [Netflix Open Content](https://opencontent.netflix.com/)
    - ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*
- Trois ordinateurs avec VLC (Windows ou Linux)
- Une connexion réseau entre les deux ordinateurs
- Les adresses IP des deux ordinateurs
- Connaissances de base sur le concept du [RTP](https://en.wikipedia.org/wiki/Real-time_Transport_Protocol)
- Connaissances de base sur le concept du [Multicast](https://fr.wikipedia.org/wiki/Multicast)
- Connaissances du binaire, de l'hexadécimal et des conversions

## Étape 1 - Configuration de l'émetteur (Mux)
1. Sur la machine qui servira d'émetteur, ouvrir VLC
2. Dans la barre de menu, cliquer sur **Media** puis sur **Stream**.
3. Cliquer sur **+ Add...**
4. Choisir le fichier vidéo.
5. Cliquer sur **Stream**.
6. Cliquer sur **Next**.
7. Cocher la case *Display Locally* puis sélectionner la valeur de *New Destination* à **RTP**.
Ensuite, cliquer sur le bouton **Add**.
8. Dans la zone *Address*, entrer l'adresse IP multicast assignée.\
Donner un nom à votre flux vidéo (sans espaces idéalement).\
Ensuite, cliquer sur le bouton **Next**.
9. Cocher la case pour *Activate Transcoding* puis cliquer sur le bouton **Next**.
**Ne pas** encore cliquer sur le bouton **Stream**

## Étape 2 - Capture des paquets et lecture du flux vidéo
1. En fonction de votre adresse IP multicast, calculer l'adresse MAC multicast associée et en prendre note..
2. Calculer l'adresse MAC de l'adresse IP multicast **239.86.0.1** et en prendre note.
3. Sur la machine qui sert de moniteur, ouvrir Wireshark et sélectionner l'interface par laquelle le flux vidéo sera reçu en double-cliquant dessus.
4. Sur la machine qui sert de 2e moniteur, ouvrir Wireshark et sélectionner l'interface qui est connectée au réseau utilisé pour la flux vidéo.
5. Sur la machine source, de retour dans vlc, cliquer sur le bouton **Stream**.
6. S'assurer que la fonction de répétition (la boucle) soit en bleu.
7. Attendre quelques secondes et arrêter la capture sur la machine moniteur.\
Que pouvez-vous en conclure avec cette capture ?\
*La machine reçoit les paquets sans être abonnée*
8. Ouvrir l'un des paquets vidéo reçus et comparer l'adresse MAC multicast calculé avec l'adresse MAC de destination du paquet.

## Étape 3 - Lecture du flux vidéo
1. Sur la machine qui servira de moniteur, ouvrir VLC.
2. Dans la barre de menu, cliquer sur **Media** puis sur **Open Network Stream**.
3. Entrer l'URL de la video. Celui-ci devrait être composé du type de transport, de l'adresse multicast et du port. \
ex : *rtp://239.86.0.1:5004*\
**Ne pas encore cliquer sur *PLAY* !**
4. Retourner dans Wireshark et lancer une nouvelle capture.
5. Dans vlc, cliquer sur le bouton **Play**.
6. Arrêter la capture Wireshark. Que pouvez-vous en conclure ?\
*Laisser le flux vidéo fonctionner*

## Étape 4 - Analyse des débits
1. Sur le commutateur (switch) utilisé dans votre réseau, aller observer le débit utilisé par le port de la source et le port du premier moniteur.
2. Sur le 2e moniteur, démarrer la lecture du flux vidéo.
3. De retour sur le commutateur, prendre en note les débits des ports sources, moniteur 1, moniteur 2 ainsi qu'un autre port quelconque.\
Que pouvez-vous conclure avec vos résultats ?\
*Vous pouvez fermer le flux vidéo à ce point. \
Toutefois, il peut être intéressant de laisser jouer le flux vidéo un certain temps afin de valider la robustesse de la configuration actuelle.*

## Étape 5 - Retour sur l'exercice
1. Effectuer un résumé de l'exercice ainsi qu'une courte explication de la situation.\
Spécifiez les protocoles, bandes passantes et autres informations nécessaires afin qu'un autre étudiant puisse comprendre la situation rapidement sans aucune information antérieure.
2. Si vous avez eu des problèmes, apporter des théories potentielles sur la cause / les causes du / des problèmes, les impacts observés ainsi que des potentiels moyens de résolution.

## Liens utiles
- [Convertir une adresse IP multicast en adresse MAC multicast - Lien 1](https://networklessons.com/multicast/multicast-ip-address-to-mac-address-mapping)
- [Convertir une adresse IP multicast en adresse MAC multicast - Lien 2](https://www.dqnetworks.ie/toolsinfo.d/multicastaddressing.html)
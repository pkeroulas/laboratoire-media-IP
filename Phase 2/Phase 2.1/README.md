# Phase 2.1 - FFmpeg à FFmpeg (RTP avec IGMP Snooping)
![Topologie phase 2.1](./img/Phase_2_S2.1_topologie.png)

## Prérequis
- Un fichier vidéo en provenance du [Netflix Open Content](https://opencontent.netflix.com/)
    - ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*
- Trois ordinateurs avec VLC (Windows ou Linux)
- Une connexion réseau entre les deux ordinateurs
- Les adresses IP des deux ordinateurs
- Connaissances de base sur le concept du [RTP](https://en.wikipedia.org/wiki/Real-time_Transport_Protocol)
- Connaissances de base sur le concept du [Multicast](https://fr.wikipedia.org/wiki/Multicast)
- Connaissances du binaire, de l'hexadécimal et des conversions
- Connaissances de base sur l'[IGMP](https://www.cisco.com/c/en/us/td/docs/switches/lan/catalyst3850/software/release/37e/multicast/configuration_guide/b_mc_37e_3850_cg/b_mc_3e_3850_cg_chapter_0100.pdf)

## Étape 0 - Configuration du commutateur
1. Se connecter au commutateur et activer la fonction **IGMP Snooping** pour votre réseau.
    - Exemple sur un commutateur Arista.
    ```
    ip igmp snooping querier version [IGMP_Version_Number (2 or 3)]
    ip igmp snooping vlan [Vlan_Number] querier
    ip igmp snooping vlan [Vlan_Number] querier address [Querrier_IP]
    ```
## Étape 1 - Configuration de l'émetteur (Mux)
1. Sur la machine qui servira d'émetteur, ouvrir un terminal.
2. Lancer le flux vidéo avec ffmpeg avec la commande suivante : `ffmpeg -re -stream_loop -1 -i [Path/to/file.mp4] -c copy -f rtp rtp://[IP_Multicast]:[Port]`
    - *ex : `ffmpeg -re -stream_loop -1 -i "C:\Users\lab\Videos\file_example_MP4_1920_18MG.mp4" -c copy -f rtp rtp://239.89.0.1:5004`*
3. Valider que le flux est bien commencé.
    - *La sortie devrait ressembler à ceci*\
     `Press [q] to stop, [?] for help`\
      `size=N/A time=25:21:46.23 bitrate=N/A speed=   1x`

## Étape 2 - Capture des paquets et lecture du flux vidéo
1. En fonction de votre adresse IP multicast, calculer l'adresse MAC multicast associée et en prendre note..
2. Calculer l'adresse MAC de l'adresse IP multicast **239.127.0.1** et en prendre note.
    - *Comparer l'adresse MAC calculée avec celle calculée à l'étape 2 dans [l'exercice précédent.](../Phase%202.0/README.md)*
3. Sur la machine qui sert de moniteur, ouvrir Wireshark et sélectionner l'interface par laquelle le flux vidéo sera reçu en double-cliquant dessus.
4. Sur la machine qui sert de 2e moniteur, ouvrir Wireshark et sélectionner l'interface qui est connectée au réseau utilisé pour la flux vidéo.

## Étape 3 - Lecture du flux vidéo
1. Sur la machine qui servira de premier moniteur, ouvrir un terminal.
2. Démarrer la lecture du flux vidéo avec la commande ffmpeg suivante : `ffplay -i rtp://[IP_Multicast]:[Port]`
    - *ex : `ffplay -i rtp://239.89.0.1:5004`*
3. Observer les captures Wireshark sur le premier et le deuxième moniteur.\
*Quelles sont les différences observées par rapport au [précédent exercice](../Phase%202.0/README.md) ?*\
*La machine moniteur 2 ne reçoit pas les paquets sans être abonnée*

4. Arrêter la capture Wireshark sur le premier moniteur.\
**-> Insérer un truc pour filtrer l'interface GUI pour les paquets IGMP <-**
4. Sur le commutateur, observer les abonnements au flux vidéo multicast.
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
[IGMP Querrier adresse tips](https://community.netgear.com/t5/Managed-Switches/igmp-querier-address/td-p/1335428)
[IGMP Cisco](https://www.cisco.com/c/en/us/td/docs/routers/nfvis/switch_command/b-nfvis-switch-command-reference/igmp_snooping_commands.html#wp3565165330)
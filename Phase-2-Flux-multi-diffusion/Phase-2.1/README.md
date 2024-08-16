# Phase 2.1 - FFmpeg à FFmpeg (RTP avec IGMP Snooping)
----------------------------------------------

![Topologie phase 2.1](./img/Phase_2_S2.1_topologie.png)

# Prérequis

- Un fichier vidéo en provenance du [Netflix Open Content](https://opencontent.netflix.com/)
    - ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*
- Trois ordinateurs avec VLC (Windows ou Linux)
- Une connexion réseau entre les deux ordinateurs
- Les adresses IP des deux ordinateurs
- Connaissances de base sur le concept du [RTP](https://en.wikipedia.org/wiki/Real-time_Transport_Protocol)
- Connaissances de base sur le concept du [Multicast](https://fr.wikipedia.org/wiki/Multicast)
- Connaissances du binaire, de l'hexadécimal et des conversions
- Connaissances de base sur l'[IGMP](https://www.cisco.com/c/en/us/td/docs/switches/lan/catalyst3850/software/release/37e/multicast/configuration_guide/b_mc_37e_3850_cg/b_mc_3e_3850_cg_chapter_0100.pdf)

# Étape 1 - Configuration du commutateur

1. Se connecter au commutateur et activer la fonction **IGMP Snooping** pour votre réseau.
- Exemple sur un commutateur Arista.
```
ip igmp snooping querier version [IGMP_Version_Number (2 or 3)]
ip igmp snooping vlan [Vlan_Number] querier
ip igmp snooping vlan [Vlan_Number] querier address [Querrier_IP]
```

# Étape 2 - Configuration de l'émetteur (Mux)

1. Sur la source, ouvrir un terminal.
2. Lancer le flux vidéo avec ffmpeg avec la commande suivante : `ffmpeg -re -stream_loop -1 -i [Path/to/file.mp4] -c copy -f rtp rtp://[IP_Multicast]:[Port]`
    - *ex : `ffmpeg -re -stream_loop -1 -i "C:\Users\lab\Videos\file_example_MP4_1920_18MG.mp4" -c copy -f rtp rtp://239.89.0.1:5004`*
3. Valider que le flux est bien commencé.
    - *La sortie devrait ressembler à ceci*
    ```
     Press [q] to stop, [?] for help
      size=N/A time=25:21:46.23 bitrate=N/A speed=   1x
    ```

# Étape 3 - Capture des paquets et lecture du flux vidéo

1. En fonction de votre adresse IP multicast, calculer l'adresse MAC multicast associée et la prendre en note.
2. Sur les **2 moniteurs**, ouvrir Wireshark et capturer sur les interfaces média

# Étape 4 - Lecture du flux vidéo

1. Sur le premier moniteur, ouvrir un terminal.
2. Démarrer la lecture du flux vidéo avec la commande ffmpeg suivante : `ffplay -i rtp://[IP_Multicast]:[Port]`
    - *ex : `ffplay -i rtp://239.89.0.1:5004`*
3. Observer les captures Wireshark sur le premier et le deuxième moniteur.\
*Quelles sont les différences observées par rapport au [précédent exercice](../Phase%202.0/README.md) ?*\
*La machine moniteur 2 ne reçoit pas les paquets sans être abonnée*
4. Arrêter la capture Wireshark sur le premier moniteur.\
**-> Insérer un truc pour filtrer l'interface GUI pour les paquets IGMP <-**
5. Sur le commutateur, observer les abonnements au flux vidéo multicast.
6. Dans vlc, cliquer sur le bouton **Play**.
7. Arrêter la capture Wireshark. Que pouvez-vous en conclure ?\
*Laisser le flux vidéo fonctionner*

# Étape 5 - Analyse des débits

1. Sur le commutateur (switch) utilisé dans votre réseau, aller observer le débit utilisé par le port de la source et le port du premier moniteur.
    - ex: `watch show interface ethernet 4, ethernet 46`
2. Sur le 2e moniteur, démarrer la lecture du flux vidéo.
3. De retour sur le commutateur, prendre en note les débits des ports sources, moniteur 1, moniteur 2 ainsi qu'un autre port quelconque.\
Que pouvez-vous conclure avec vos résultats ?
4. Sur le commutateur, afficher les membres du multicast\
    - `show ip igmp snooping querier membership`
5. Fermer le flux vidéo
*Vous pouvez fermer le flux vidéo à ce point. \
Toutefois, il peut être intéressant de laisser jouer le flux vidéo un certain temps afin de valider la robustesse de la configuration actuelle.*

# Étape 6 - Retour sur l'exercice

1. Effectuer un résumé de l'exercice ainsi qu'une courte explication de la situation.\
Spécifiez les protocoles, bandes passantes et autres informations nécessaires afin qu'un autre étudiant puisse comprendre la situation rapidement sans aucune information antérieure.
2. Si vous avez eu des problèmes, apporter des théories potentielles sur la cause / les causes du / des problèmes, les impacts observés ainsi que des potentiels moyens de résolution.

# Liens utiles

[IGMP Querrier adresse tips](https://community.netgear.com/t5/Managed-Switches/igmp-querier-address/td-p/1335428)
[IGMP Cisco](https://www.cisco.com/c/en/us/td/docs/routers/nfvis/switch_command/b-nfvis-switch-command-reference/igmp_snooping_commands.html#wp3565165330)

Concept des routes à ajouter afin de faire fonctionner les flux si plus d'une interface réseau
Windows:
```
# sudo route add <dest_net_@> MASK <mask@> <gtw_@>
route add 232.0.0.0 MASK 255.0.0.0 10.179.11.254
```
Linux
```
# sudo ip r add <dest_@> dev <net_int>
sudo ip r add 239.192.0.21 dev ens4f1
```

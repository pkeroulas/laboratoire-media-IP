# Phase 2.1 - Configuration IGMP Snooping
-----------------------------------------

![Topologie phase 2.1](./img/Phase_2_S2.1_topologie.png)

# Prérequis

- Un fichier vidéo en provenance du [Netflix Open Content](https://opencontent.netflix.com/)
    - ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*
- Trois ordinateurs avec VLC (Windows ou Linux)
- Une connexion réseau entre les deux ordinateurs
- Les adresses IP des trois ordinateurs
- Connaissances de base sur le concept du [Multicast](https://fr.wikipedia.org/wiki/Multicast)
- Connaissances du binaire, de l'hexadécimal et des conversions
- Connaissances de base sur l'[IGMP](https://www.cisco.com/c/en/us/td/docs/switches/lan/catalyst3850/software/release/37e/multicast/configuration_guide/b_mc_37e_3850_cg/b_mc_3e_3850_cg_chapter_0100.pdf)

# Étape 1 - Configuration du commutateur

1. Se connecter au commutateur et activer la fonction **IGMP Snooping** pour votre réseau.
- Exemple sur un commutateur Arista.
```
ip igmp snooping querier version v3
ip igmp snooping vlan [Vlan_Number] querier
ip igmp snooping vlan [Vlan_Number] querier address [Querrier_IP]
sh igmp snooping querier
```

# Étape 2 - Attribution des adresses multicast

1. Demander à votre instructeur de vous assigner une adresse multicast pour votre signal source
    - *ex : `239.89.0.X`*
2. Calculer l'adresse MAC multicast associée et garder la en note.

# Étape 3 - Configuration de l'émetteur

1. Sur la Source, ouvrir un terminal.
2. Si votre Source à plus qu'une interface, il faut s'assurer que les paquets multicast partent par
   l'interface désirée. Pour ce celà, il faut ajoute une route:

Windows:
```
# sudo route add <dest_net_@> MASK <mask@> <gtw_@>
route add 239.0.0.0 MASK 255.0.0.0 10.179.11.254
```

Linux
```
# sudo ip route add <dest_@> dev <net_int>
sudo ip route add 239.89.0.X dev ens4f1
ip route
```

3. Lancer le flux vidéo avec ffmpeg avec la commande suivante:
    - `ffmpeg -re -stream_loop -1 -i [Path/to/file.mp4] -c copy -f rtp rtp://[IP_Multicast]:[Port]`
    - *ex : `ffmpeg -re -stream_loop -1 -i "C:\Users\lab\Videos\file_example_MP4_1920_18MG.mp4" -c copy -f rtp rtp://239.89.0.X:5004`*
4. Valider que le flux est bien commencé.
    - *La sortie devrait ressembler à ceci*
    ```
     Press [q] to stop, [?] for help
      size=N/A time=25:21:46.23 bitrate=N/A speed=   1x
    ```

# Étape 4 - Lecture du flux vidéo

1. Sur le premier moniteur, ouvrir un terminal.
2. Démarrer la lecture du flux vidéo avec la commande ffmpeg suivante : `ffplay -i rtp://[IP_Multicast]:[Port]`
    - *ex : `ffplay -i rtp://239.89.0.X:5004`*
3. Observer les captures Wireshark sur le premier et le deuxième moniteur.\
*Quelles sont les différences observées par rapport au [précédent exercice](../Phase%202.0/README.md) ?*\
*La machine moniteur 2 ne reçoit pas les paquets sans être abonnée*
4. Arrêter la capture Wireshark sur le premier moniteur.\
**-> Insérer un truc pour filtrer l'interface GUI pour les paquets IGMP <-**
5. Sur le commutateur, observer les abonnements au flux vidéo multicast.
6. Dans vlc, cliquer sur le bouton **Play**.
7. Arrêter la capture Wireshark. Que pouvez-vous en conclure ?\

*Laisser le flux vidéo fonctionner pour la suite*

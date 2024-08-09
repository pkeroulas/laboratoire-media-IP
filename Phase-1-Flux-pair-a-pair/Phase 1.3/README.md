Phase 1.3 - VLC à FFmpeg (RTSP)
-------------------------------

![Topologie](./img/Phase_1_S1.3_topologie.png)

# Prérequis

- Un fichier vidéo en provenance du [Netflix Open Content](https://opencontent.netflix.com/)
    - ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*
- Deux ordinateurs avec VLC et FFmpeg (Windows ou Linux)
- Une connexion réseau entre les deux ordinateurs
- Les adresses IP des deux ordinateurs
- Connaissances de base sur le concept du [SDP](https://en.wikipedia.org/wiki/Session_Description_Protocol) et [RTSP](https://www.rfc-editor.org/info/rfc2326)

# Étape 1 - Configuration de l'émetteur (Mux)

1. Sur la machine qui servira d'émetteur, ouvrir VLC
2. Dans la barre de menu, cliquer sur **Media** puis sur **Stream**.
3. Cliquer sur **+ Add...**
4. Choisir le fichier vidéo.
5. Cliquer sur **Stream**.
6. Cliquer sur **Next**.
7. Cocher la case *Display Locally* puis sélectionner la valeur de *New Destination* à **RTSP**.\
Ensuite, cliquer sur le bouton **Add**.\
![vlc_etape1_7](./img/p1.3_vlc_pic7.png)
8. Dans la zone *Path*, entrer **/vlc**.\
Ensuite, cliquer sur le bouton **Next**.\
![vlc_etape1_8](./img/p1.3_vlc_pic8.png)
9. Cocher la case p *Activate Transcoding* puis cliquer sur le bouton **Next**.
10. Cliquer sur le bouton **Stream**.
11. S'assurer que la fonction de répétition (la boucle) soit en bleu.

# Étape 2 - Configuration du récepteur et capture des échanges

1. Sur la machine qui servira de moniteur, ouvrir un terminal.
2. Ouvrir Wireshark et démarrer une capture sur l'interface réseau utilisée.
3. Dans le terminal, ouvrir le flux vidéo avec la commande `ffplay -i rtsp://[adresseIP]:[Port]/[chemin]`.
    - *💡ex: `ffplay -i rtsp://10.179.11.104:8554/vlc`*
4. Attendre quelques secondes le temps que le flux démarre.\
![Photo du flux vidéo et du terminal](./img/p1.3_cmd_pic3.png)\
5. Arrêter le flux vidéo.
    - *💡La touche **Esc** ou la combinaison ***Ctrl+C*** peut être utilisée.*
6. Arrêter la capture Wireshark.

# Étape 3 - Analyse de la capture

1. Dans la capture Wireshark, appliquer le filtre `rtsp or rtcp`.
2. Observer l'échange RTSP.
    - ❓ Quelles sont les étapes de l'échange et quelles sont les informations échangées ?
3. Dans l'échange RTSP, sélectionner le paquet incluant le SDP.
4. Dans le paquet sous la section *Real Time Streaming Protocol*, observer les informations du SDP.
    - *Pour une vue plus claire, copier le SDP en tant que texte imprimable et coller dans un bloc-note.*
5. Identifier les composantes du SDP en détails.

TODO: Montrer le SDP et essaye de recouper les info media avec autre chose

# Étape 4 - Retour sur l'exercice

1. Effectuer un résumé de l'exercice ainsi qu'une courte explication de la situation.\
Spécifiez les protocoles, bandes passantes et autres informations nécessaires afin qu'un autre étudiant puisse comprendre la situation rapidement sans aucune information antérieure.
2. Si vous avez eu des problèmes, apporter des théories potentielles sur la cause / les causes du / des problèmes, les impacts observés ainsi que des potentiels moyens de résolution.

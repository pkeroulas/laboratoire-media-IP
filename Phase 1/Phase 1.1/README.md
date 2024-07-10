# Phase 1.1 - VLC à VLC

## Prérequis
- Un fichier vidéo en provenance du [Netflix Open Content](https://opencontent.netflix.com/)
    - ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*
- Deux ordinateurs avec VLC (Windows ou Linux)
- Une connexion réseau entre les deux ordinateurs
- Les adresses IP des deux ordinateurs
- Connaissances de base sur le concept du [SDP](https://en.wikipedia.org/wiki/Session_Description_Protocol) et [RTSP](https://www.rfc-editor.org/info/rfc2326)

## Étape 1 - Configuration de l'émetteur (Mux)
1. Sur la machine qui servira d'émetteur, ouvrir VLC
2. Dans la barre de menu, cliquer sur **Media** puis sur **Stream**.\
![vlc_etape1_2](./img/p1.1_vlc_pic2.png)
3. Cliquer sur **+ Add...**\
![vlc_etape1_3](./img/p1.1_vlc_pic3.png)
4. Choisir le fichier vidéo.\
![vlc_etape1_4](./img/p1.1_vlc_pic4.png)
5. Cliquer sur **Stream**.\
![vlc_etape1_5](./img/p1.1_vlc_pic5.png)
6. Cliquer sur **Next**.\
![vlc_etape1_6](./img/p1.1_vlc_pic6.png)
7. Cocher la case *Display Locally* puis sélectionner la valeur de *New Destination* à **RTSP**.\
Ensuite, cliquer sur le bouton **Add**.\
![vlc_etape1_7](./img/p1.1_vlc_pic7.png)
8. Dans la zone *Path*, entrer **/vlc**.\
Ensuite, cliquer sur le bouton **Next**.\
![vlc_etape1_8](./img/p1.1_vlc_pic8.png)
9. Cocher la case pour *Activate Transcoding* puis cliquer sur le bouton **Next**.\
![vlc_etape1_9](./img/p1.1_vlc_pic9.png)
10. Cliquer sur le bouton **Stream**.\
![vlc_etape1_10](./img/p1.1_vlc_pic10.png)
11. S'assurer que la fonction de répétition (la boucle) soit en bleu.\
![vlc_etape1_11](./img/p1.1_vlc_pic11.png)

## Étape 2 - Configuration du récepteur
1. Sur la machine qui servira de moniteur, ouvrir VLC.\
2. Dans la barre de menu, cliquer sur **Media** puis sur **Open Network Stream**.\
![vlc_etape2_2](./img/p1.1_vlc_pic12.png)
3. Entrer l'URL de la video. Celui-ci devrait être composé du type de transport, de l'adresse source, du port et du chemin.\
ex : *rtsp://10.179.11.104:8554/vlc*\
**Ne pas encore cliquer sur *PLAY* !**\
![vlc_etape2_3](./img/p1.1_vlc_pic13.png)

## Étape 3 - Capture des paquets et lecture du flux vidéo
1. Ouvrir Wireshark et sélectionner l'interface par laquelle le flux vidéo sera reçu en double-cliquant dessus.\
![vlc_etape3_4](./img/p1.1_vlc_pic14.png)
2. Retourner sur VLC puis cliquer sur **Play**.\
![vlc_etape3_2](./img/p1.1_vlc_pic15.png)
3. Vérifier que la vidéo est bien fluide.
4. Laisser le flux vidéo jouer pendant au moins 30 secondes.\
![vlc_etape3_4](./img/p1.1_vlc_pic16.png)
5. Fermer VLC.
6. Sur Wireshark, arrêter la capture de paquets.\
![vlc_etape3_6](./img/p1.1_vlc_pic17.png)

## Étape 4 - Analyse des paquets

[WIP] - Filtres sur Wireshark et autres analyses.\
Examiner l'échange RTSP ? \
![wip_echange_rtsp](./img/image_echange_rtsp.png)

Examiner et analyser les paquets RTP

Examiner le SDP ?\
![wip_analyse_SDP](./img/image_sdp.png)
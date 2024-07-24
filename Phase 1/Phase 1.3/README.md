# Phase 1.3 - VLC à FFmpeg (RTSP)

## Prérequis
- Un fichier vidéo en provenance du [Netflix Open Content](https://opencontent.netflix.com/)
    - ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*
- Deux ordinateurs avec VLC et FFmpeg (Windows ou Linux)
- Une connexion réseau entre les deux ordinateurs
- Les adresses IP des deux ordinateurs
- Connaissances de base sur le concept du [SDP](https://en.wikipedia.org/wiki/Session_Description_Protocol) et [RTSP](https://www.rfc-editor.org/info/rfc2326)

## Étape 1 - Configuration de l'émetteur (Mux)
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
9. Cocher la case pour *Activate Transcoding* puis cliquer sur le bouton **Next**.
10. Cliquer sur le bouton **Stream**.
11. S'assurer que la fonction de répétition (la boucle) soit en bleu.

## Étape 2 - Configuration du récepteur et capture des échanges
1. Sur la machine qui servira de moniteur, ouvrir un terminal.
2. Ouvrir Wireshark et démarrer une capture.\
![Photo de Wireshark en capture](./img/p1.3_ws_pic1.png)
3. Dans le terminal, ouvrir le flux vidéo avec la commande `ffplay -i rtsp://[adresseIP]:[Port]/[chemin]`.
    - *ex: `ffplay -i rtsp://10.179.11.104:8554/vlc`*
4. Attendre quelques secondes le temps que le flux démarre.\
![Photo du flux vidéo et du terminal](./img/p1.3_cmd_pic3.png)\
*Laisser le flux vidéo fonctionner quelques secondes*
5. Arrêter le flux vidéo.
    - *La touche **Esc** ou la combinaison ***Ctrl+C*** peut être utilisée.*
6. Arrêter la capture Wireshark.


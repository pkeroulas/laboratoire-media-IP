# Phase 1.3 - VLC à FFmpeg (RTSP)

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
![vlc_etape1_2](./img/p1.3_vlc_pic2.png)
3. Cliquer sur **+ Add...**\
![vlc_etape1_3](./img/p1.3_vlc_pic3.png)
4. Choisir le fichier vidéo.\
![vlc_etape1_4](./img/p1.3_vlc_pic4.png)
5. Cliquer sur **Stream**.\
![vlc_etape1_5](./img/p1.3_vlc_pic5.png)
6. Cliquer sur **Next**.\
![vlc_etape1_6](./img/p1.3_vlc_pic6.png)
7. Cocher la case *Display Locally* puis sélectionner la valeur de *New Destination* à **RTSP**.\
Ensuite, cliquer sur le bouton **Add**.\
![vlc_etape1_7](./img/p1.3_vlc_pic7.png)
8. Dans la zone *Path*, entrer **/vlc**.\
Ensuite, cliquer sur le bouton **Next**.\
![vlc_etape1_8](./img/p1.3_vlc_pic8.png)
9. Cocher la case pour *Activate Transcoding* puis cliquer sur le bouton **Next**.\
![vlc_etape1_9](./img/p1.3_vlc_pic9.png)
10. Cliquer sur le bouton **Stream**.\
![vlc_etape1_10](./img/p1.3_vlc_pic10.png)
11. S'assurer que la fonction de répétition (la boucle) soit en bleu.\
![vlc_etape1_11](./img/p1.3_vlc_pic11.png)

## Étape 2 - Configuration du récepteur
1. Sur la machine qui servira de moniteur, ouvrir un terminal.\
![Photo d'un Windows Terminal Powershell](./img/p1.3_cmd_pic1.png)
2. Ouvrir Wireshark et démarrer une capture.\
![Photo de Wireshark en capture](./img/p1.3_ws_pic1.png)
3. Dans le terminal, ouvrir le flux vidéo avec la commande `ffplay -i rtsp://[adresseIP]:[Port]/[chemin]`.\
![Photo d'un terminal avec la commande](./img/p1.3_cmd_pic2.png)
4. Attendre quelques secondes le temps que le flux démarre.\
![Photo du flux vidéo et du terminal](./img/p1.3_cmd_pic3.png)\
*Laisser le flux vidéo fonctionner*
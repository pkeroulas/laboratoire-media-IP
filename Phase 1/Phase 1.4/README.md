# Phase 1.4 - FFmpeg à FFmpeg (RTSP)

## Prérequis
- Un fichier vidéo en provenance du [Netflix Open Content](https://opencontent.netflix.com/)
    - ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*
- Deux ordinateurs avec FFmpeg (Windows ou Linux)
- Une connexion réseau entre les deux ordinateurs
- Les adresses IP des deux ordinateurs
- Connaissances de base sur le concept du [SDP](https://en.wikipedia.org/wiki/Session_Description_Protocol) et [RTSP](https://www.rfc-editor.org/info/rfc2326)
- [MediaMTX](https://github.com/bluenviron/mediamtx/releases/latest) de téléchargé sur la machine qui servira de source

## Étape 1 - Configuration de l'émetteur (Mux)
1. Sur la machine qui servira d'émetteur, ouvrir un premier terminal
2. Lancer le serveur mediamtx
    - *ex : `.\mediamtx.exe`*
3. Prendre note du port utilisé par mediamtx pour le rtsp
    - *ex : `2024/07/22 15:25:58 INF [RTSP] listener opened on :8554 (TCP), :8000 (UDP/RTP), :8001 (UDP/RTCP)`*
4. Lancer un deuxième terminal ou ouvrir un autre onglet de terminal
5. Lancer le flux vidéo avec ffmpeg avec la commande suivante : `ffmpeg -re -stream_loop -1 -i [Path/to/file.mp4] -c copy -f rtsp rtsp://[adresse]:[Port]/[Path]`
    - *ex : `ffmpeg -re -stream_loop -1 -i "C:\Users\lab\Videos\file_example_MP4_1920_18MG.mp4" -c copy -f rtsp rtsp://localhost:8554/mystream`*
6. 

# Phase 1.5 - FFmpeg Distant à FFmpeg (RTSP)

## Prérequis
- Un fichier vidéo en provenance du [Netflix Open Content](https://opencontent.netflix.com/)
    - ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*
- Trois ordinateurs avec FFmpeg (Windows ou Linux)
- Une connexion réseau entre les deux ordinateurs
- Les adresses IP des deux ordinateurs
- Connaissances de base sur le concept du [SDP](https://en.wikipedia.org/wiki/Session_Description_Protocol) et [RTSP](https://www.rfc-editor.org/info/rfc2326)
- [MediaMTX](https://github.com/bluenviron/mediamtx/releases/latest) de téléchargé sur la machine qui servira de source

## Étape 1 - Configuration de l'émetteur (Mux)
Guide d'installation logiciels
------------------------------

# Prérequis

## Windows
- Windows 10 ou supérieur
- Utilitaire winget (tester avec juste "winget" dans un terminal)
    - *Si celui-ci n'est pas installé, il est possible de le télécharger depuis [le store](https://apps.microsoft.com/detail/9nblggh4nns1?rtc=1&hl=en-us&gl=US) ou directement du [GitHub](https://github.com/microsoft/winget-cli/releases/latest).*

## Linux

- Ubuntu 22 (*L'installateur de Ubuntu 24 semble avoir des problèmes*)
- Effectuer les mises-à-jour

# Installation des utilitaires de base

## Windows

```
winget install VideoLAN.vlc Gyan.FFmpeg obsproject.obsstudio wireshark
```

## Linux

```
sudo apt install obs-studio vlc ffmpeg Wireshark nload
```

*Attention, si vous utilisez une version inférieur à Ubuntu 24, vous devez ajouter le répertoire avant l'installation*

```
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio
```

# Installation de OBS-RTSPServer

## Windows

### Installation standard

```
winget install iamscottxu.obs-rtspserver
```

### Alternative

- Naviguer au [GitHub](https://github.com/iamscottxu/obs-rtspserver/releases/latest)
- Télécharger la version la plus récente du programme d'installation (.exe)
- Installer le programme
- Lancer obs et valider si l'utilitaire est là dans la section Outils de la barre de menu

## Linux

- Télécharger la version pla plus récente de la version Linux tar.gz du [GitHub](https://github.com/iamscottxu/obs-rtspserver/releases/latest)

```
cd ~/Downloads
tar -xvzf obs-rtspserver-\*-linux-qt6.tar.gz
cd obs*/usr
sudo cp -r data/obs-plugins/obs-rtspserver/ /usr/share/obs/obs-plugins/obs-rtspserver/
sudo cp obs-plugins/64bit/obs-rtspserver.so /usr/lib/x86_64-linux-gnu/obs-plugins/obs-rtspserver.so
```

- Lancer OBS
```
sudo obs
```

# Échantillon videos

Télécharger un fichier qui servir à générer des flux. Exemple fourni par Netflix: [Netflix Open Content](https://opencontent.netflix.com/)
- ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*

# Media MTX

Télécharger la version de MediaMTX pour le type de système d'exploitation (Linux ou Windows) sur le [repo Git](https://github.com/bluenviron/mediamtx/releases) et l'exécuter. Il faut s'assurer que le pare-feu soit configurer pour autoriser les communications du programme, principalement sur Windows.

# Liens Utiles

- [Doc FFmpeg](https://ffmpeg.org/ffmpeg-all.html#rtsp)
- [Wireshark - Listen to VoIP packets](https://www.wireshark.org/docs/wsug_html_chunked/ChTelPlayingCalls.html)
- [StackOverflow - Joining a multicast stream via RTSP using ffplay](https://stackoverflow.com/questions/32561070/joining-a-multicast-stream-via-rtsp-using-ffplay)
- [RTSP 1.0 spec](https://www.rfc-editor.org/rfc/pdfrfc/rfc2326.txt.pdf)
- [RTSP 2.0 spec](https://www.rfc-editor.org/rfc/pdfrfc/rfc7826.txt.pdf)
- [GitHub Repo - obs-rtspserver](https://github.com/iamscottxu/obs-rtspserver)

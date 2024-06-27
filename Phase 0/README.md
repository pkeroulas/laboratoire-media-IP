# Prérequis
## Windows
- Windows 10 ou supérieur
- Utilitaire winget (tester avec juste "winget" dans un terminal)
    - *Si celui-ci n'est pas installé, il est possible de le télécharger depuis [le store](https://apps.microsoft.com/detail/9nblggh4nns1?rtc=1&hl=en-us&gl=US) ou directement du [GitHub](https://github.com/microsoft/winget-cli/releases/latest).*
- Wireshark

## Linux
- Ubuntu 22 ou supérieur (*Ubuntu 24 recommandé*)
- Effectuer les mises-à-jour
- Wireshark

# Installation des utilitaires de base
## Windows
>winget install VideoLAN.vlc Gyan.FFmpeg obsproject.obsstudio

## Linux
>sudo apt install obs-studio vlc ffmpeg
- *Attention, si vous utilisez une version inférieur à Ubuntu 24, vous devez ajouter le répertoire avant l'installation*
    >sudo add-apt-repository ppa:obsproject/obs-studio\
    >sudo apt update\
    >sudo apt install obs-studio

# Installation de OBS-RTSPServer
## Windows
### Installation standard
> winget install iamscottxu.obs-rtspserver

### Alternative
- Naviguer au [GitHub](https://github.com/iamscottxu/obs-rtspserver/releases/latest)
- Télécharger la version la plus récente du programme d'installation (.exe)
- Installer le programme
- Lancer obs et valider si l'utilitaire est là dans la section Outils de la barre de menu

## Linux
- Télécharger la version pla plus récente de la version Linux tar.gz du [GitHub](https://github.com/iamscottxu/obs-rtspserver/releases/latest)

    >cd ~/Downloads\
    >tar -xvzf obs-rtspserver-\*-linux-qt6.tar.gz\
    >cd obs*/usr\
    >sudo cp -r data/obs-plugins/obs-rtspserver/ /usr/share/obs/obs-plugins/obs-rtspserver/\
    >sudo cp obs-plugins/64bit/obs-rtspserver.so /usr/lib/x86_64-linux-gnu/obs-plugins/obs-rtspserver.so
- Lancer OBS
    >sudo obs







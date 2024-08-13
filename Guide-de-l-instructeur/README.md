Guide de l'instructeur
----------------------

# Commutateur/Routeur:

* Modèle: [TBD]
* Interface de contrôle réseau ou sériel: [TBD]
* Port GiEthernet ou SFP+fibres? [TBD]
* Fonctionnalités:
    * IGMP snooping
    * IGMPv3
    * LLDP
    * Serveur DHCP (suggéré, mais optionnel)

# PC Moniteur 

Voire le [VLC media player](https://www.videolan.org/vlc/) et [FFmpeg](https://ffmpeg.org/)

# Caméra

Choix:

* raspberry + webcam
* caméra SDI + convertisseur IP
* CCTV

* Le plus important est d'avoir une caméra supportant le RTSP. Idéalement, la caméra devrait supporter le RTSP multicast afin de réduire la quantité requise de caméras. Toutefois, si des caméras supportant le RTSP multicast ou une quantité suffisante de caméras est irréalisable, il y a toujours une autre option. Comme mentionné dans le guide d'installation logiciel, le plugin pour OBS OBS-RTSPServer pourrait être utilisé en conjonction avec une caméra unique. Le plugin permet la diffusion en multicast d'une source unique en multicast, simulant ainsi une caméra supportant le RTSP multicast.


# Note importantes

Certains problèmes ont été identifiés en lien avec FFmpeg et VLC sur Linux où, après une certaine période de temps, la machine peut figer et ignorer des entrées utilisateur. Le problème ne semble pas présent pour le moment sur Windows.
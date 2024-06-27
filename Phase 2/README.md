# Phase 2 - Multicast

[WIP]
-> Concept des routes à ajouter afin de faire fonctionner les flux si plus d'une interface réseau

### Windows
- Ouvrir un terminal en administrateur
- >route add dest_net_@ MASK mask@ gtw_@
    - *ex: route add 232.0.0.0 MASK 255.0.0.0 10.179.11.254*

### Linux
- Dans un terminal
- >sudo ip r add *dest_@* dev *net_int*
    - *ex: sudo ip r add 239.192.0.21 dev ens4f1*

## Phase 2.1 - VLC à VLC

## Phase 2.2 - VLC à FFmpeg

## Phase 2.3 - FFmpeg à FFmpeg
- http://trac.ffmpeg.org/wiki/StreamingGuide
- https://ffmpeg.org/ffmpeg-all.html#rtsp 
## Phase 2.4 - FFmpeg à FFmpeg + Intrus
Phase 2 - Flux multi-diffusion
------------------------------

Maintenant que les bases de la transmission pair-à-pair sont établies grâce à l'unicast + UDP,
exploitons le potentiel des adresses multicast pour complexifier la topology de notre réseau de
production.  


# Test de transmission multicast

Reprenons les mêmes outils que dans la 1ère phase mais remplaçons simplemenet l'adresse unicast par
une addresse multicast. Et tentons de déterminer le chemin du flux en mesurant à la fois aux niveaux du reseau que des terminaux. [Exercice 2.0](./Phase-2.0/README.md) 

Après avoir constater que le traffic `flood` partout, on imagine les effets indésirables causés par ce bruit qui se repend partout. Tentons d'y palier en activant le Protocol de Gestion de Group (IGMP).
[Exercice 2.1](./Phase-2.1/README.md)


# Phase 2.3 - RTSP Multicast

 TODO: à compléter

- http://trac.ffmpeg.org/wiki/StreamingGuide
- https://ffmpeg.org/ffmpeg-all.html#rtsp 
- https://www.peaknx.com/pub/media/peaknx/downloads/documents/quickstarts/Media_MTX_Quickstart.pdf

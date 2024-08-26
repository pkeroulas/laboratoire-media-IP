# Phase 2.2 - Résolution de problème

# Prérequis

- Un fichier vidéo en provenance du [Netflix Open Content](https://opencontent.netflix.com/)
    - ex : *Meridian_UHD4k5994_HDR_P3PQ.mp4*
- Trois ordinateurs avec VLC (Windows ou Linux)
- Une connexion réseau entre les deux ordinateurs
- Les adresses IP des trois ordinateurs
- Le script mystère
- Une adresse IP Multicast (déterminée par l'enseignant)
- Connaissances de base sur le concept du [RTP](https://en.wikipedia.org/wiki/Real-time_Transport_Protocol)
- Connaissances de base sur le concept du [Multicast](https://fr.wikipedia.org/wiki/Multicast)
- Connaissances du binaire, de l'hexadécimal et des conversions
- Connaissances de base sur l'[IGMP](https://www.cisco.com/c/en/us/td/docs/switches/lan/catalyst3850/software/release/37e/multicast/configuration_guide/b_mc_37e_3850_cg/b_mc_3e_3850_cg_chapter_0100.pdf)


# Étape 1 - Configuration de la source

1. Déterminer une adresse multicast pour la distribution d'un nouveau signal
    - *💡 ex: `239.86.0.X` port `5004`*
    - *💡 Voir avec l'instructeur pour la valeur X*
2. Reconfigurer [VLC en mode transmetteur RTP](../Phase-1-Flux-pair-a-pair/Phase%201.0/README.md)

# Étape 2 - Configuration du moniteur

[IMPORTANT DE UTILISER FFMPEG COMME LECTEUR, VLC NE SWITCH PAS DE STREAM]s
1. Poursuivre l'exercice précédent en configurant ffplay du PC moniteur.
2. Lire ce flux en appliquant l'url `rtp://239.86.0.X:5004`
3. Capturer les paquets avec Wireshark
4. Inspecter les adresses source et destination, MAC et IP. 
5. Stopper VLC tout en laissant la capture des paquets se poursuivre

[AJOUTER ICI L'ANALYSE DU HEADER RTP] - TODO : Analyse d'un Header RTP.


# Étape 3 - Exécution du script mystère
[Insérer ici l'exécution du script mystère (qui pourrait possiblement demander en input l'adresse ip multicast?)]

# Étape 4 - Diagnostique de la situation
[Étapes et informations sur comment troubleshooter le problème (voir membres multicast sur la switch ? capture wireshark sur moniteur ? etc)]

# Étape 5 - La fonction SSM

## Après le script rogue, insérer la fonction de SSM

[SSM sur ffplay](https://trac.ffmpeg.org/ticket/7459) ressemble à ceci : 
```powershell
ffplay -i rtp://@239.89.0.X:5004?sources=10.179.11.101
```

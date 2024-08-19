# Phase 2.2 - Résolution de problème

EXERCICE AVEC SCRIPT ROGUE

Je crois que l'analyse des headers RTP ICI aurait beaucoup de logique car il s'agit un peu d'une étape de troubleshooting.

- TODO : Analyse d'un Header RTP.
- TODO : Script pour multicast Intrus 

## Après le script rogue, insérer la fonction de SSM
[SSM sur ffplay](https://trac.ffmpeg.org/ticket/7459) ressemble à ceci : 
```powershell
ffplay -i rtp://@239.89.0.1:5004?sources=10.179.11.101
```



## Liens utiles
[IGMP Querrier adresse tips](https://community.netgear.com/t5/Managed-Switches/igmp-querier-address/td-p/1335428)
[IGMP Cisco](https://www.cisco.com/c/en/us/td/docs/routers/nfvis/switch_command/b-nfvis-switch-command-reference/igmp_snooping_commands.html#wp3565165330)
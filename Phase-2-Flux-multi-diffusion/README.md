Phase 2 - Flux multi-diffusion
------------------------------

Maintenant que les bases de la transmission pair-à-pair sont établies grâce à l'unicast + UDP,
exploitons le potentiel des adresses multicast pour complexifier la topology de notre réseau de
production.  


# Test de transmission multicast

Reprenons les mêmes outils que dans la 1ère phase mais remplaçons simplemenet l'adresse unicast par
une addresse multicast. Et tentons de déterminer le chemin du flux en mesurant à la fois aux niveaux du reseau que des terminaux. [Exercice 2.0](./Phase-2.0/README.md) 

# Configuration

Après avoir constater que le traffic `flood` partout, on imagine les effets indésirables causés par ce bruit qui se repend partout.
Tentons d'y palier en activant le Protocol de Gestion de Group (IGMP). [Exercice 2.1](./Phase-2.1/README.md)

💡 Cet exercice est l'occasion de comprendre qu'une source média peut-être demandée et traîtée
simultanément par plusieurs équipements pouvant à leur tour générer d'autre flux en sortie...

# Analyse

Tentons de mieux comprendre ce protocol à la fois du point de vue des terminaux et que celui du
commutateur [Exercice 2.2](./Phase-2.2/README.md)

# Incident


Phase 3.1 - Test de compression de fichier
------------------------------------------

# Prérequis

- 1 ordinateur Linux avec `vlc`, `ffmpeg`, `mediainfo` installés
- Un fichier audio-vidéo en provenance du [Vimeo](https://vimeo.com/995688942)
    - *💡 ex: `sample_1280x720_surfing_with_audio.mp4`*
- Dans l'exercice suivant, remplacer `media_file.mp4` par ce nom de fichier.
- Notion de bash scripting

# Étape 1 - Transcode un fichier à plusieurs débits

1. Examiner le script `batch_transcode.sh`
2. À l'aide de `VLC` trouver un segment de votre échantillon vidéo assez riche pour mettre à l'épreuve l'encodeur.
    - *💡 Les algorythmes de compression tirent avantage de la prédiction spatiale (zone uniforme, ciel etc.) et la prédiction temporelle (immobilisme, mouvement uniforme etc. les éléments compliqués à compresser sont les textures, mouvements non uniforme, particules aléatoire, richesses de couleurs etc.*
    - *💡 Ce segment devrait avoir une longueure de quelques dizaines de seconde.*
3. Traduire ces marqueurs de temps pour être compris par le script:
    - *💡 ex: `Phase-3-Compression/Phase-3.1/batch_transcode.sh 30 30 ./sample_1280x720_surfing_with_audio.mp4`*
4. Visionner les fichiers en commençant par le plus volumineux

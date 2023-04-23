#Guide de démarrage rapide pour NAI
!!! note **Tous les remerciements vont à l'auteur pour le guide original : (https://rentry.org/nai-speedrun)**
Bienvenue dans le Guide de démarrage rapide de NAI ! L'objectif de cette page est de vous permettre de vous familiariser le plus rapidement possible avec la configuration "originale" de NAI fonctionnant sur l'interface web. À l'issue de ce guide, votre système sera prêt à accueillir d'autres modèles, etc. et vous aurez acquis de l'expérience dans la navigation à travers les fichiers, les dossiers et les paramètres dont vous aurez besoin pour tout configurer.
[TOC2]
!!! Ce guide couvre le rendu sous Windows, Nvidia, AMD ou CPU, ainsi que le rendu sous Linux. Plus de configurations plus tard ?

!!! note Configuration minimale requise
    Système d'exploitation = Windows 7 ou plus récent
    Stockage = 20GB
    RAM = 16GB
    GPU = Nvidia Maxwell (GTX 7xx) ou plus récent
    VRAM DU GPU = 2 GO
    \* *Si vous n'êtes pas sûr de ces spécifications, vous pouvez utiliser un logiciel de diagnostic comme GPU-Z ou Speccy.*
    \* Suivez les instructions ci-dessous, les étapes spécifiques au processeur seront notées.

##Fichiers à obtenir
Vous voulez la "partie 1" (taille totale d'environ 52GB). Les liens sont partout, choisissez celui qui, selon vous, ne vous piquera pas.

Vous devez seulement sélectionner deux choses à télécharger :
- [x] `animefull-final-pruned` (dossier)
- [x] `animevae.pt` (fichier)

pour un total de 4,75 Go de contenu.

![obtenir animefull-final-pruned et animevae.pt](https://i.imgur.com/LQC180d.jpg)

Passez les autres fichiers (et la "partie 2").

##Installation du logiciel

###AMD

Pour le moment, il n'y a pas de support natif AMD pour l'interface web +Windows. Il existe un guide AMD complet mais nous n'avons besoin que de certaines sections.
- [ ] Les utilisateurs de Windows + AMD suivent le [guide Docker] (https://rentry.org/sdamd#docker-guide) et ensuite la section [guide Arch] (https://rentry.org/sdamd#arch-unofficial-repository).
- [ ] Les utilisateurs de Linux + AMD suivent uniquement la section [Guide Arch](https://rentry.org/sdamd#arch-unofficial-repository).

Après cela, passez directement à la section [Première exécution et configuration](#Première exécution et configuration).

###Linux

Suivez les [instructions Linux du guide Voldy](https://rentry.org/voldy-fr#-installation-linux-), puis passez directement à la section [Première exécution et configuration](#Première exécution et configuration).

###Windows (Nvidia+CPU)

Pendant que cela se télécharge, installons Git, Python et WebUI.
- Git : https://git-scm.com/download/win
    - La dernière version est correcte.
    - Activez l'option `Intégration de Windows Explorer > Git Bash`. Tous les autres paramètres par défaut sont bons.
- Python : https://www.python.org/downloads/windows/
    - La dernière version de 3.10 est correcte.
    - Assurez-vous que l'option `add to PATH` est activée. Tous les autres paramètres par défaut sont corrects.

Ouvrez l'Explorateur Windows, naviguez jusqu'au dossier dans lequel vous allez installer WebUI. Dans cet exemple, j'utilise `D:\diffusion`.
!!! info Vos fichiers NAI se retrouveront ici aussi, donc assurez-vous d'avoir assez d'espace sur le disque pour tout !
Faites un clic droit et sélectionnez `Git Bash Here` (vous *avez* fait en sorte de sélectionner cette option pendant l'installation, n'est-ce pas ?)

![Vous devriez voir ceci dans votre menu de clic droit](https://i.imgur.com/I7kjhrl.jpg)

Entrez la commande suivante dans la nouvelle fenêtre Git : `git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui`
Cela va créer un dossier et y télécharger des choses :

![Git téléchargera la dernière version](https://i.imgur.com/EsHCb3z.jpg)

Naviguez à nouveau dans le dossier de base `stable-diffusion-webui-master\`, et vous verrez un fichier nommé `webui-user.bat`.

###Étapes réservées à Nvidia
Avant de l'exécuter, cependant, nous devons considérer combien de VRAM nous avons.
!!! Avertissement Vous pouvez rencontrer des erreurs "out of memory" si vous ne configurez pas ceci correctement !

- [ ] Si vous avez 2GB de VRAM ou moins, vous devrez utiliser `--lowvram`.
- [ ] Si vous avez 4 Go de VRAM ou moins, vous devrez utiliser `--medvram`.
- [ ]  Si vous avez >4 Go de VRAM, vous n'avez pas besoin d'options supplémentaires.

Faites un clic droit sur `webui-user.bat` et `Editer`. Nous allons ajouter nos options à `set COMMANDLINE-ARGS=` comme ceci :

![La ligne devrait se lire comme suit : set COMMANDLINE_ARGS=--lowvram](https://i.imgur.com/oplM3N8.jpg)

Sauvegardez le fichier puis continuez avec la section [Première exécution et configuration](#Première exécution et configuration).

###Étapes pour les CPU seulement
!!! avertissement Ces étapes peuvent provoquer des erreurs si vous les utilisez pour forcer le rendu CPU alors que vous avez une carte vidéo compatible installée.
!!! warning Il est recommandé de faire une sauvegarde de launch.py avant de le modifier.
- [x] Ouvrez le fichier `launch.py` dans un éditeur. Cherchez la ligne `def prepare_enviroment():`. Nous allons éditer cette section.
- [x] Remplacez la ligne commençant par `torch_command =` par ce qui suit : `torch_command = os.environ.get('TORCH_COMMAND', "pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu")`
- [x] Remplacez la ligne commençant par `commandline_args =` par la suivante : `commandline_args = os.environ.get('COMMANDLINE_ARGS', "--skip-torch-cuda-test --precision full --no-half")`

![Cela devrait ressembler à ceci.](https://i.imgur.com/0DQsibo.jpg)

##Première exécution et configuration

Une fois que tout est installé, naviguez dans `stable-diffusion-webui-mastermodels\Stable-diffusion`.

Nous allons placer ici 2 fichiers de notre contenu téléchargé :
- [x] `model.ckpt`
- [x] `animevae.pt`.

Nous devons les renommer d'une manière spécifique. Pour ne pas les perdre de vue, nous allons leur donner un nom utile.
- [x] `model.ckpt` => `animefinal-full-pruned.ckpt`.
- [x] `animevae.pt` => `animefinal-full-pruned.vae.pt`

![Cela devrait ressembler à ça quand vous aurez fini.](https://i.imgur.com/S5B4N64.jpg)

Double-cliquez sur `webui-user.bat` (ou exécutez `webui-user.sh` si vous êtes un utilisateur Linux), pour lancer WebUI. Lors de sa première exécution, il va télécharger et installer des modules supplémentaires.
!!! info Cette étape peut prendre plusieurs minutes. Vous devriez prendre un café et remplir une bouteille d'eau, car vous allez probablement "proooompter" pendant les prochaines heures !
![Prêt à partir](https://i.imgur.com/dKj7Qg3.jpg)

Vous saurez que c'est prêt quand vous verrez la ligne `Running on local URL : http://127.0.0.1:7860`.

Ouvrons notre navigateur web préféré et naviguons maintenant vers cette adresse : `http://127.0.0.1:7860`

!!! avertissement Vous ne pourrez pas accéder à cette page à partir d'un autre système ou d'Internet sans configuration supplémentaire.

![Aweshum !](https://i.imgur.com/DPYtRBH.jpg)

Maintenant pour notre configuration initiale et le test de Hello Asuka.

Premièrement, activez le modèle NAI en sélectionnant `animefull-final-pruned.ckpt [925997e9]` dans la liste déroulante en haut à gauche de la page.

![Activer NAI](https://i.imgur.com/9HDl7V0.jpg)

Vérifiez que les fichiers ont été chargés correctement en recherchant les lignes suivantes dans le journal :

`Loading weights [925997e9] from D:\diffusion\stable-diffusion-webui\models\Stable-diffusion\animefull-final-pruned.ckpt`
`Loading VAE weights from: D:\diffusion\stable-diffusion-webui\models\Stable-diffusion\animefull-final-pruned.vae.pt`

Ensuite, allez dans l'onglet `Settings` en haut, et faites les changements suivants. Il y a beaucoup de choses ici, alors utilisez la recherche de page si vous êtes perdu :
- [x] Stop aux dernières couches du modèle CLIP = `2`.
- [x] Eta noise seed delta = `31337`

Cliquez sur le gros bouton "Appliquer les paramètres" en haut. Vous verrez une confirmation que les changements ont été enregistrés :

![Vous avez pensé à cliquer sur ce bouton, n'est-ce pas ?](https://i.imgur.com/2ljzcKb.jpg)

##Hello Asuka

C'est l'heure du test d'Asuka ! Voici l'image que nous essayons de créer :

![Bonjour Asuka](https://i.imgur.com/Bfl5qJB.jpg)

Retournez à l'onglet `txt2img`. Utilisez les valeurs suivantes dans leurs champs respectifs :
- [x] Requête = `masterpiece, best quality, masterpiece, asuka langley sitting cross legged on a chair`.
- [x] Requête négative = `lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts,signature, watermark, username, blurry, artist name`.
- [x] Etapes d'échantillonnage = `28`
- [x] Méthode d'échantillonnage = `Euler`.
- [x] Echelle CFG = `12`
- [x] Semence = `2870305590`

Cliquez sur le gros bouton `Generate` en haut à droite, et attendez quelques instants pour que le processus se déroule. Vous devriez vous retrouver avec une image correspondante d'Asuka :

![Succès !](https://i.imgur.com/KfQ5L7n.jpg)

*Nous voulons être 95-100% identiques à l'image cible. Si votre image d'Asuka ne correspond pas, consultez le [guide de dépannage](https://imgur.com/a/DCYJCSX) pour plus d'informations.*

!!! Note : Au secours ! J'ai une image noire solide !
    Pas de panique ! Cela peut arriver avec certaines cartes vidéo (des anons ont mentionné la série 16xx). Ajoutez `--no-half-vae` à COMMANDLINE-ARGS et redémarrez WebUI. Si cela ne résout pas le problème, remplacez cette option par `--no-half`.

!!! Note : Si vous avez >4 Go de VRAM et que vous utilisez `--no-half`, et que vous rencontrez des erreurs de type `Not enough memory` avec des images ou des lots de taille modeste, essayez d'ajouter `--medvram` comme étape de dépannage.

##Et maintenant ?

**Il est temps de PROOOOOMPT !** Les paramètres avec lesquels vous avez terminé le test d'Asuka sont un bon point de départ.

###Pour les débutants
- Commencez vos requêtes par "masterpiece, best quality" et ajoutez une phrase courte et descriptive, comme `a girl with an umbrella in the rain`.
- Commencez par les phrases suivantes dans les requêtes négatives : `lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name`.
- Vous pouvez régler le Seed sur ce que vous voulez, ou utiliser `-1` pour le rendre aléatoire et partir à l'aventure !
- Pour sortir, il vous suffit de fermer la fenêtre de la console avec l'habituel bouton rouge `X`.

![PROOMPT !](https://i.imgur.com/6vzNCuI.jpg)

!!! info Expérimenter ! La plupart des réglages font *quelque chose* à la sortie, et d'autres peuvent vous recommander des réglages, mais il n'y a pas un seul *meilleur* réglage.

!!! Note A ce stade, vous avez tout ce dont vous avez besoin pour commencer. Si vous souhaitez en savoir plus, lisez la suite.

###Des roues d'entraînement pour TXT2IMG !

Ici, je vais donner une explication non technique de ce que font la plupart des champs de txt2img, ainsi que des valeurs "saines" à utiliser pour que la génération d'images reste prévisible pour vous.

**Si vous voulez la version "Trop long, Pas lu", ne faites attention qu'au ==texte souligné==!**.

####Options importantes

- **==REQUÊTE==: Ce à quoi vous voulez que l'IA pense. ** Quoi que vous mettiez ici, l'IA essaiera de l'inclure dans le résultat. 
    - **==Commencez par "masterpiece, best quality" et gardez vos jetons en dessous de 75.==** A droite de la zone de texte se trouve un compteur, qui se lira comme x/75. C'est le nombre de "jetons" ou de choses auxquelles l'IA pense. L'IA vous laissera dépasser ce nombre, mais rester en dessous de 75 jetons donne un résultat plus fiable.
    - *Astuce* : Essayez de regrouper les éléments connexes dans une courte phrase. Par exemple : "a busty android girl" vs "girl, android, busty". Avec la deuxième requête, vous avez plus de chances de vous retrouver avec une fille avec un robot à ses côtés, et qui sait qui aura la plus grosse poitrine !



- **==REQUÊTE NÉGATIVE== : Ce que vous voulez que l'IA évite. ** Quoi que vous mettiez ici, l'IA essaiera de l'éviter dans le résultat.
    - **==Commencez avec la valeur par défaut de NAI ci-dessus==**, et soyez économe dans le nombre d'éléments supplémentaires que vous ajoutez. Si vous en faites trop, vous mettrez l'IA dans un coin et vous risquez de vous retrouver avec la même image encore et encore !
- **==ÉTAPES D'ÉCHANTILLONNAGE== : Le temps que l'IA passe à travailler sur l'image ** La règle générale est que plus c'est long, mieux c'est, mais les rendements diminuent.
    - **==Commencez avec 20-70.==** Pour gagner du temps, essayez d'utiliser le moins d'étapes possible tout en obtenant un résultat qui vous satisfait.
- **==MÉTHODE D'ÉCHANTILLONNAGE== : Comment l'IA pense à votre image.** Différentes méthodes utilisent différentes approches, et en testant, vous pouvez découvrir que certaines donnent des résultats très similaires.
    - **==Euler et Euler a sont populaires==** car elles produisent généralement des résultats prévisibles.
    - *Astuce* : Alors que **Euler** a tendance à devenir plus net avec plus d'étapes, **Euler a** varie beaucoup le résultat avec une qualité constante à partir d'environ l'étape 20, ce qui lui donne le potentiel de donner un bon résultat avec moins d'étapes.
- **==LARGEUR/HAUTEUR==: Quelle taille vous voulez pour la sortie.** Cela correspond au temps et à la quantité de VRAM nécessaire par sortie, donc vous *vous* rencontrerez une erreur de mémoire VRAM à un moment donné.
    - **==Débutez entre 256 et 1024px dans les deux sens.==** Les systèmes fais en pomme de terre peuvent ne pas être en mesure de dépasser les 512x512 par défaut, cela dépend des spécifications de votre système.
- **==ÉCHELLE CFG==: Le degré de "concentration" que vous souhaitez que l'IA soit sur votre requête.** Faible valeur = plus de liberté, plus élevée = plus strict.
    - **==Débutez avec 5-15.==** Aller en dessous de cette gamme peut donner un contenu aléatoire, alors qu'aller trop haut limitera la variété des sorties.
- **==SEED==: Numéro de source pour le début du traitement de l'IA.** Deux images avec les mêmes paramètres et les mêmes seed (Valeurs aléatoire) devraient donner des images identiques.
    - **==Début à -1 (aléatoire).==** Jusqu'à ce que vous trouviez une composition/arrangement qui vous plaît, vous pouvez continuer à lancer des graines aléatoires. Une fois que vous avez trouvé l'image que vous souhaitez affiner, vous pouvez la sauvegarder en cliquant sur l'icône "recycler" à côté de la boîte.

####Autres options

- **==RESTAURER LES VISAGES== : Passage supplémentaire de l'IA pour corriger les erreurs sur les visages**. Vous pouvez choisir entre deux moteurs dans les paramètres.
    - **==Commencez sans l'activer.==** Plusieurs anons affirment que le plus souvent, la "correction" sera pire que l'image originale.
- **==MUDE TUILE: Ignorez ceci.== Lié à la génération d'images de taille > 512x512.**
- **==HIGHRES.FIX== : Traitement AI supplémentaire pour les images de taille > 512x512.** Cela augmente la qualité de ces grandes images en échange d'une augmentation significative (min. 2x) du temps de traitement.
    - **==Commencez par le désactiver.==** J'aime générer des requêtes sans lui jusqu'à ce que je commence à voir des résultats proches de ce que j'aime, puis l'activer lorsque je génère des résultats que j'aimerais pouvoir conserver.
   - *Astuce* : Pour des raisons de cohérence, je recommande de laisser la largeur/hauteur de Firstpass à 0. Commencez à utiliser la force de débruitage entre 0.5 et 0.7 selon votre goût.
- **==NOMBRE DE LOTS/TAILLE== : La taille est le nombre d'images à traiter simultanément, le nombre est le nombre de lots séquentiels à exécuter.** Une taille plus grande demande plus de temps et de VRAM, mais donnera plusieurs résultats à la fois. L'échelle est assez régulière.
    - **==Commencez avec 1, ne dépassez pas 4 pour les deux.==** Ceux qui ont des systèmes plus rapides peuvent être en mesure d'exécuter 2-4/lots tout en ajustant leur requête, mais en général, n'allez pas trop loin sur ces chiffres jusqu'à ce que vous soyez prêt à cliquer sur "Générer" et à vous éloigner pour faire une pause.
- **==EXTRA : Ignore this.== Paramètres supplémentaires liés à la génération de nombres aléatoires.**

###Lecture complémentaire
Pour plus d'informations, commencez par le [Wiki officiel de l'interface web](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features). Il décrit la plupart des fonctionnalités dont vous aurez besoin.

Vous pouvez ensuite consulter :
- Mine d'or de ressource pour SD
[FR] (https://rentry.org/sdgoldmine-fr) 
[ENG] (https://rentry.org/sdgoldmine)

- Autre guide d'installation (Voldy Retard Guide)
[FR] (https://rentry.org/voldy-fr).
[ENG] (https://rentry.org/voldy).

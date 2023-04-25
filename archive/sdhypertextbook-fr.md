# SD Hyper-livre

!!! note **(Tous les remerciements vont à Questianon pour la page original : https://rentry.org/sdhypertextbook)**

## Préambule
Ceci est un tutoriel pour guider un nouveau venu dans la mise en place et l'utilisation optimale de Stable diffusion. Il s'agit d'une version taillée de la [SD Goldmine](https://rentry.org/sdgoldmine)(ENG), [Mine d'or pour SD](https://rentry.org/sdgoldmine-fr)(FR) (Pas à jour).

## Contact
Si vous avez des questions ou des commentaires, contactez-moi, **en Anglais uniquement.**

Socials : 
Trip : questianon !YbTGdICxQOw 
Discord : malt#6065
Reddit : u/questianon
Github : https://github.com/questianon
Twitter : https://twitter.com/questianon
F95zone : applecider212

Liens pour les dons :
Tous les dons seront réinvestis dans la création de ressources pour la communauté. Ne donnez pas si vous ne pouvez pas vous le permettre.
Patreon : https://patreon.com/questianon
Ko-fi : https://ko-fi.com/questianon

## Comment utiliser cette ressource
Le livre hypertexte contient des informations basique mais également du contenu très approfondi. Si vous êtes un nouveau venu dans le domaine de Sttable Diffusion, il est fortement recommandé de commencer par le début. Si vous avez besoin d'une ressource qui n'est pas répertoriée ici, consultez la [Goldmine](https://rentry.org/sdgoldmine)(ENG), [Mine d'or](https://rentry.org/sdgoldmine)(FR).

## Décharge de responsabilité/Avertissements

1. À l'heure actuelle, les .ckpts, hypernetworks, embeddings, vaes et scripts téléchargés n'importe où ne sont pas intrinsèquement sûrs. Ils peuvent être "pickled"/altérer avec du code malveillant. Utilisez votre bon sens et protégez-vous comme vous le feriez avec n'importe quel lien de téléchargement aléatoire que vous verriez sur Internet.
2. Surveillez la température de votre GPU et augmentez le refroidissement et/ou sous-alimentez-le si nécessaire. Il y a eu des plaintes concernant des problèmes de GPU dus à des températures élevées.

- [Chapitre 1 : Démarrage](#Démarrage)
	- [Prérequis](#Prérequis)
	- [Instructions](#instructions)
	- [Bonjour Asuka](#Bonjour-Asuka)
	- [Mise à jour](#mise-à-jour)
- [Chapitre 2 : Dépannage](#Dépannage)
- [Chapitre 3 : Interface web Pt1](#Interface-web-Pt1)
	- [Txt2img](#txt2img)
	- [Img2img](#img2img)
	- [Inpainting](#inpainting)
	- [Extras](#Extras)
	- [Info PNG](#Info-PNG)
	- [Extensions](#Extensions)
- [Chapitre 4 : Requêtes](#Requêtes)
	- [Conseils pour Txt2img](#Conseils-pour-Txt2img)
		- [Syntaxe](#syntaxe)
		- [Paramètres de Txt2img](#Paramètres-de-Txt2img)
	- [Conseils pour Img2img](#Conseils-pour-Img2img)
	- [Conseils pour l'inpainting](#Conseils-pour-linpainting)
- [Chapitre 5 : Interface web Pt2](#Interface-web-Pt2)
	- [Modèles](#modèles)
	- [Dreambooth](#dreambooth)
	- [Embeddings](#embeddings)
	- [Hyperréseaux](#hyperréseaux)
	- [VAE](#vae)
	- [Fusion de points de contrôle](#Fusion-de-points-de-contrôle)
- [Chapitre 6 : Entraînement](#Entraînement)
- [Chapitre 7 : Développements](#Développements)
	- [NAI](#nai)
	- [Anything.ckpt](#anythingckpt)
- [Chapitre 8 : Modifications](#modifications)
- [Chapitre 9 : Questions courantes](#Questions-courantes)
- [Chapitre 10 : Ressources](#ressources)

## Démarrage
Stable Diffusion est facile à installer. Cela prend environ 5 minutes si vous avez tous les fichiers.

Je vous recommande personnellement d'utiliser le [NAI Speedrun](https://rentry.org/nai-speedrun)(ENG), [Guide NAI](https://rentry.org/nai-speedrun)(FR) si ce guide ne couvre pas encore quelque chose, mais n'importe quel fichier de [Goldmine : Getting Started](https://rentry.org/sdgoldmine#getting-started)(ENG) devrait fonctionner.

Il existe d'autres guides localisé en français ici [Stable Diffusion France](https://rentry.org/stablediffusionfr) au cas où.

### Prérequis
[**Git**](https://git-scm.com/download/win) 
- Activez l'option `Git à partir de la ligne de commande et aussi à partir de logiciels tiers`.
- Activez l'option `Git à partir de la ligne de commande et aussi à partir de logiciels tiers` si vous voulez mettre à jour par l'invite de commande (ce que je fais).
- Tout le reste est correct, changez ce que vous voulez

[**Python 3.10**](https://www.python.org/downloads/windows/) 
- Assurez-vous que l'option "Ajouter Python aux variables d'environnement" / "Ajouter à PATH" est activée.
- Tout le reste va bien, changez ce que vous voulez

Suffisamment d'espace sur votre ordinateur (mon installation sans modèles, qui est assez dépouillée, prend 8 GBs)

Un modèle. Pour cet exemple, utilisons NAI.ckpt (allez à [Développements](#Développements) pour plus d'informations sur ce que c'est) : 
Anonfiles : https://anonfiles.com/U5Acl7F0y2/Novel_AI_Hypernetworks_zip
Pixeldrain : https://pixeldrain.com/u/FMJ4TQbM
Torrent (téléchargez seulement `animefull-final-pruned` et `animevae.pt` :
``` python
magnet:?xt=urn:btih:5bde442da86265b670a3e5ea3163afad2c6f8ecc&dn=novelaileak&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2F9.rarbg.com%3A2810%2Fannounce&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A6969%2Fannounce&tr=http%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&tr=udp%3A%2F%2Fopentracker.i2p.rocks%3A6969%2Fannounce&tr=https%3A%2F%2Fopentracker.i2p.rocks%3A443%2Fannounce&tr=udp%3A%2F%2Ftracker.torrent.eu.org%3A451%2Fannounce&tr=udp%3A%2F%2Ftracker.tiny-vps.com%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.pomf.se%3A80%2Fannounce&tr=udp%3A%2F%2Fp4p.arenabg.com%3A1337%2Fannounce&tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce&tr=udp%3A%2F%2Fopen.demonii.com%3A1337%2Fannounce&tr=udp%3A%2F%2Fmovies.zsw.ca%3A6969%2Fannounce&tr=udp%3A%2F%2Fipv4.tracker.harry.lu%3A80%2Fannounce&tr=udp%3A%2F%2Fexplodie.org%3A6969%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce&tr=udp%3A%2F%2Fbt.oiyo.tk%3A6969%2Fannounce&tr=https%3A%2F%2Ftracker.nanoha.org%3A443%2Fannounce&tr=https%3A%2F%2Ftracker.lilithraws.org%3A443%2Fannounce&tr=https%3A%2F%2Ftr.burnabyhighstar.com%3A443%2Fannounce
```

### Instructions
1. Ouvrez l'explorateur Windows et naviguez jusqu'à l'endroit où vous voulez installer l'interface web d'AUTOMATIC1111. Le répertoire d'exemple pour ce tutoriel sera `C:\webui` pour plus de simplicité. Il s'agit d'un emplacement fictif qui doit être remplacée par le répertoire que vous souhaitez.
2. Faites un clic droit n'importe où dans le répertoire souhaité (par exemple `C:\webui`) et sélectionnez `Git Bash Here`. Si cette option est manquante, vous n'avez pas activé l'option `Intégration de Windows Explorer > Git Bash` lors de l'installation. Changez l'option d'une manière ou d'une autre ou réinstallez simplement Git.
3. Tapez/collez `git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui` et cliquez sur entrée. Attendez que le téléchargement se termine
4. Naviguez vers le dossier stable-diffusion-webui-master\ où vous devriez voir un fichier nommé `webui-user.bat`. Pour l'exemple de ce tutoriel, ce dossier sera `C:\webui\stable-diffusion-webui-master\`.
5. Naviguez jusqu'au dossier `stable-diffusion-webui-master\models\Stable-diffusion` et placez `model.ckpt` et `animevae.pt` dedans.
	- Pour l'instant, renommez-les comme suit :
		- `model.ckpt` --> `animefinal-full-pruned.ckpt`
		- `animevae.pt` ou `model.vae.pt` --> `animefinal-full-pruned.vae.pt`
6. Lancez `webui-user.bat`.

Tout est prêt lorsque `Running on local URL : http://127.0.0.1:7860` est affiché. Ouvrez un navigateur web et tapez `http://127.0.0.1:7860` dans la bar d'adresse pour accéder à votre installation SD locale.

### Bonjour Asuka

La raison pour laquelle nous utilisons NAI est le test Asuka (similaire au test `Hello World` pour la programmation).

1. Vérifiez en haut à gauche sous le titre `Stable Diffusion checkpoint` pour voir si `animefinal-full-pruned.ckpt` est là. Si ce n'est pas le cas, cliquez sur la boîte et cliquez sur `animefinal-full-pruned.ckpt`.
2. Vérifiez que les fichiers ont été chargés correctement grâce aux messages suivants dans le journal de la console :
	- `Loading weights [925997e9] from: [your directory here]\stable-diffusion-webui\models\Stable-diffusion\animefull-final-pruned.ckpt`.
	- `Loading VAE weights from : [votre répertoire ici]\stable-diffusion-webui\models\Stable-diffusion\animefull-final-pruned.vae.pt`
3. Allez dans l'onglet `Settings` en haut.
4. `Ctrl + F` et faites les changements suivants :
	- Stop At last layers of CLIP model  = 2
	- Eta noise seed delta = 31337
5. Cliquez sur `Apply settings` en haut de la page et vérifiez que les modifications ont été enregistrées (il sera indiqué "2 paramètres modifiés").
6. Allez sur l'onglet `txt2img` en haut de la page.
7) (Euler) Utilisez les éléments suivants dans leurs champs respectifs :
	- Requête : `masterpiece, best quality, masterpiece, asuka langley sitting cross legged on a chair`
	- Requête négative : `lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts,signature, watermark, username, blurry, artist name`
	- Les étapes de l'échantillonnage : `28`
	- Méthode d'échantillonnage : `Euler
	- Echelle CFG : `12`
	- Valeur aléatoire / seed : `2870305590`

8. (Euler a, facultatif) Si vous voulez vraiment vous assurer que votre configuration est correcte :
	- Requête : `masterpiece portrait of smiling Asuka \(evangelion\), evangelion \(Hideaki\), caustics, textile shading, high resolution illustration, blue eyes, contempt, feminine, woman disdain, disgust, no pupils, hair over face,orange hair, long hair, red suit, ilya kuvshinov`
	- Requête négative : `nsfw, lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, headdress, loli,`
	- Les étapes de l'échantillonnage : `28`
	- Méthode d'échantillonnage : `Euler a`.
	- Echelle CFG : `12`
	- Valeur aléatoire / seed : `2870305590`
9. Cliquez sur `Generate`.

Les "Asuka" suivantes devraient être générés avec une précision de 95% à 100% :
- Euler a : https://i.imgur.com/j7DSvIS.png
- Euler : https://i.imgur.com/Bfl5qJB.png

Si vous avez des problèmes avec votre test d'Asuka, consultez l'un des sites suivants en fonction du test d'Asuka que vous recréez :
	- Asuka Euler : https://imgur.com/a/DCYJCSX
	- Asuka Euler a : https://imgur.com/a/s3llTE5

### Mise à jour
Instructions :
	* Si vous êtes sous Windows :
		1. naviguer dans le répertoire webui via la requête de commande ou git bash
			a. Git bash : clic droit > git bash here
			b. Invite de commande : cliquez sur le point dans "l'url" entre le dossier et la flèche vers le bas et tapez "invite de commande". 
			c. Si vous ne savez pas comment faire, ouvrez la requête, tapez "cd [chemin vers stable-diffusion-webui]" (vous pouvez l'obtenir en faisant un clic droit sur le dossier dans "url" ou en maintenant shift + clic droit sur le dossier stable-diffusion-webui).
		2. ``git pull``
		3. ``pip install -r requirements.txt``
	* Si vous êtes sous Linux : 
		1. allez dans le répertoire webui
		2. ``source ./venv/bin/activate``
			a. si cela ne fonctionne pas, lancez au préalable ``python -m venv venv``
		3. ``git pull``
		4. ``pip install -r requirements.txt``

## Dépannage

Ajouter des commandes à votre `commandline args` signifie faire ce qui suit :
1. Faites un clic droit sur `webui-user.bat`.
2. Cliquez sur "Editer".
3. Ajoutez vos commandes après la ligne `set COMMANDLINE_ARGS-` (ligne 7)  
Exemple de mes args de ligne de commande :
	``` python
	@echo off
	
	set PYTHON=
	set GIT=
	set VENV_DIR=
	set COMMANDLINE_ARGS=--xformers --deepdanbooru --no-half-vae 
	
	call webui.bat
	```
4. Enregistrez

Regardez le premier problème + solution pour un exemple

- Si vous manquez de vram (mémoire), faites un clic droit sur `webui-user.bat`, cliquez sur 'Edit', et ajoutez ` --med-vram ` ou ` --low-vram ` après `set COMMANDLINE_ARGS=` (ligne 7) dans webui-user.bat. Choisissez la première option si possible
- Si vous avez une carte 16xx, ajoutez `--precision full --no-half` à votre ligne de commande dans webui-user.bat.
- Si vos sorties sont aléatoirement noires, ajoutez `--no-half-vae` à votre ligne de commande dans webui-user.bat.


##Interface web Pt1

!!! **Note : Surveillez la température de votre GPU et augmentez le refroidissement et/ou sous-alimentez-le si nécessaire. Il y a eu des plaintes concernant des problèmes de GPU dus à des températures élevées. **

Si quelque chose se casse, `Ctrl + C` dans votre fenêtre de requête de commande pour arrêter les processus en cours.

### txt2img
Le pain et le beurre de Stable Diffusion. Vous tapez des trucs et l'IA génère des trucs pour vous.

- Requête : Pousse les vecteurs dans la direction positive à chaque étape.  
- Requête négative : Pousse les vecteurs dans la direction négative à chaque étape.  
- Étapes d'échantillonnage : En général, plus d'étapes = plus de précision. Exception : les "échantillonneurs a" (comme `Euler a`) changent complètement après chaque ~20 étapes.  
- Méthode d'échantillonnage : Chaque méthode génère des images différentes. Testez-les vous-même pour voir laquelle vous préférez. Pour des comparaisons, consultez la [Goldmine : Comparaisons](https://rentry.org/sdgoldmine#comparisons)(ENG)
- Largeur et hauteur : Dimensions de la sortie. Plus elles sont grandes, plus il faut de mémoire vive.  
- Restore faces : Restaure les visages en utilisant le `modèle de restauration des visages` dans `Settings`. Vous pouvez aussi restaurer les faces dans l'onglet `Extras` si vous ne voulez pas qu'il restaure automatiquement les faces après votre génération.  
- Mode tuile : Conçu pour les générations avec des motifs  
- Highres. fix : Seulement vraiment utile pour les générations supérieures à 512x512. Il décompose la résolution de sortie en morceaux de 512x512, exécute txt2img sur chacun d'eux, puis les combine ensemble via img2img (je crois). Très utile pour gérer plusieurs personnes dans l'image de sortie. SD v1.4 en a besoin car il a été entraîné sur 512x512. NAI n'en a pas vraiment besoin car il a été entraîné sur 768x768.
	- Largeur/hauteur du premier passage : Générera l'image initial à cette résolution. Le plus souvent laissé sur 0x0  
	- Force de débruitage : De combien l'image de sortie sera différente des images d'entrée découpées en morceaux. Jouez avec cela pour voir ce que vous aimez. ~0.3 changement à peine visible de l'image initial,  ~0.5 Déformation/léger changement de l'image initiale, ~0.7+ basé sur l'image mais résultat fondamentalement différent.
- Nombre de lots : Combien d'images à générer au total  .
- Taille du lot : Combien d'images à générer en une seule fois. Accélère le processus mais utilise plus de mémoire vive.  
- Échelle CFG : Dans quelle mesure l'IA doit suivre la requête. Les valeurs les plus élevées permettent d'approfondir le résultat, tandis que les valeurs les plus basses permettent à l'IA d'ignorer votre requête.  
- Seed / Valeur Aléatoire : Randomisation, basiquement une graine Minecraft, -1 est pour randomiser.  
- Extra : Personne ne les utilise vraiment
	- Variation de la valeur aléatoire : Graine d'une image différente à mélanger dans la génération. En fait, il s'agit de combiner des parties de graines ensemble. 
	- Force de la variation : La force de la variation à produire. 0 = image originale, 1 = image de variation
	- Redimensionnement de la graine à partir de la largeur et de la hauteur : Tente de produire une image similaire à celle qui aurait été produite avec la même graine à la résolution spécifiée.
- Script : Scripts personnalisés de l'utilisateur
- L'emoji peinture : Ajoute un artiste aléatoire à la requête à partir du fichier artists.csv de `\stable-diffusion-webui`.
- L'emoji coche : Lit les paramètres de génération à partir de la requête ou de la dernière génération si la requête est vide dans l'interface utilisateur. Il semble prendre la dernière génération et mettre sa requête + ses paramètres dans l'interface utilisateur actuelle.
- L'emoji disquette : Sauvegarde la requête actuelle comme un style.
- L'emoji du presse-papiers : applique les styles sélectionnés à la requête en cours.
- Style 1 et 2 : Lorsque vous enregistrez un style, il enregistre votre requête actuelle. L'utilisation d'un style ajoute secrètement cette requête (je ne sais pas si c'est à la fin ou au début).  
- Boutons d'envoi : Envoie votre sortie à l'endroit désiré pour que vous n'ayez pas besoin de la trouver dans votre dossier de sortie et de la faire glisser dedans.  

### img2img
Le beurre de cacahuète et confiture de Stable Diffusion

Vous pouvez modifier et générer des images similaires

- Redimensionnez simplement : Redimensionnera l'image de sortie à la résolution cible. Vous devez faire en sorte que la largeur x la hauteur de votre sortie corresponde à la largeur x la hauteur de votre entrée.
- Recadrer et redimensionner : Redimensionne l'image de sortie de manière à ce que l'intégralité de la résolution cible soit remplie par l'image. Recadrera les parties qui dépassent
- Redimensionner et remplir : Redimensionne l'image de sortie de façon à ce que l'image entière soit à l'intérieur de la résolution cible. Remplit l'espace vide avec les couleurs de l'image de sortie.
- Largeur/Hauteur : La résolution de votre image de sortie. Assurez-vous qu'elle corresponde à celle de votre image d'entrée, à moins que vous ne souhaitiez délibérément qu'elles ne correspondent pas.
- Denoising strength : Combien de l'image originale doit être respectée par l'algorithme. 0 = rien ne change tandis que 1 = une image complètement différente. A moins qu'elles ne soient modifiées dans les paramètres, les valeurs inférieures à 1 prendront moins d'étapes que ce que le curseur `Sampling Steps` spécifie.
- Interrogate CLIP : Essaie de générer une requête CLIP à partir de votre image d'entrée. Pour moi, il semble y avoir une fuite de mémoire qui casse ma diffusion stable après l'avoir utilisé.

### Inpainting
Le couteau à beurre de la diffusion stable

Vous pouvez éditer/changer les parties de l'image que vous n'aimez pas.

!!! Note : L'inpainting ne semble pas fonctionner avec certaines extensions actives (je pense à adblock ?). Utilisez la navigation privée/incognito pour contourner ce problème (à moins que vous ne configuriez vos extensions pour qu'elles fonctionnent dans ces fenêtres).

- L'endroit où vous peignez est celui que l'IA regardera pour modifier vos données. Nous appellerons cette zone la zone `paint`.
- Masque flou : Rend floue la zone sous le `paint`. Utile si vous voulez les couleurs générales du contenu mais que vous voulez changer les détails.
- Dessiner un masque/télécharger un masque : Vous pouvez dessiner un masque directement dans l'interface utilisateur ou en télécharger un que vous créez à partir d'un éditeur d'images. Un masque téléchargé doit être noir et blanc, le noir représentant l'image originale et le blanc représentant la "peinture".
- Inpaint masqué/non masqué : Si vous voulez éditer la zone sous le `paint` ou éditer tout le reste sauf la zone sous le `paint`.
- Remplir : Remplit la zone sous le `paint` avec les couleurs de l'image. Ensuite, il génère une image à cet endroit en fonction de la requête.
- Original : Fait attention à ce qui se trouvait sous le `paint` et le modifie.
- Bruit latent : Convertit la zone sous le `paint` en bruit latent. Nécessite une valeur de débruitage élevée
- Rien latent : Remplit la zone avec des zéros d'espace latent. Je ne suis pas trop sûr de ce que cela fait pour être honnête
- Inpaint à pleine résolution : Crée une boîte de délimitation carrée qui englobera les bords de votre inpaint et la met à l'échelle à la résolution désirée. Ensuite, le processus d'inpainting est effectué. Ajoute généralement plus de détails que l'inpainting sans cette option.
- Inpaint at full resolution padding, pixels : Ajoute du rembourrage sur le bord de cette boîte de délimitation. Extrêmement utile lorsque vous souhaitez que l'inpainting prenne en compte le contexte environnant.

### Extras
Le beurre supplémentaire de la Diffusion Stable

Vous pouvez effectuer des modifications finales sur votre génération

- Modifier l'échelle : Redimensionnez votre image en utilisant un multiplicateur et un upscaler.
- Mettre à l'échelle : Redimensionnez votre image en utilisant une largeur x hauteur personnalisée et un upscaler.
	- Largeur/Hauteur : La largeur et la hauteur souhaitées de votre sortie
	- Recadrer pour adapter : Recadrer à la taille voulue
- Upscaler 1 : upscaler primaire. Dispose de différents upscalers qui vont upscaler votre image de différentes manières. Certains nécessitent plus de mémoire vive que d'autres. Testez pour voir lequel vous aimez. Depuis la dernière fois que je l'ai utilisé, j'aime LDSR et ESRGAN_4x.
- Upscaler 2 : upscaler secondaire
- Visibilité de l'Upscaler 2 : Dans quelle mesure l'upscaler secondaire doit être visible dans le processus d'upscaling.
- Visibilité de GFPGAN : Modèle de restauration de visage. Je l'utilise beaucoup
- Visibilité de CodeFormer : Modèle de restauration du visage
- Poids de CodeFormer : La force de CodeFormer devrait être. 0 = effet maxmium, 1 = effet minimum
- Augmenter l'échelle avant de restaurer les visages : Augmentera l'échelle avant de restaurer les visages

### Info PNG
Le livre de recettes de la diffusion stable

Vous pouvez télécharger une image générée ici. L'interface web lira ses données exif si elle en a. En cliquant sur `Send to X`, vous enverrez la requête et les paramètres exacts que vous voyez à l'endroit désiré. Ceci est extrêmement utile si vous voulez recréer une image sans avoir à tout taper.

### Extensions
Les appareils de Stable Diffusion

Vous pouvez télécharger des extensions à votre Stable Diffusion ici

- Installé : Ce que vous avez installé
- Disponible : Extensions disponibles pour le téléchargement
	- Charger à partir de : Quel dépôt pour obtenir les requêtes à partir. La valeur par défaut est bonne
	- Cacher les extensions avec des tags : Masquera les extensions avec les balises marquées. Je déteste les publicités, donc j'ai décoché la balise ads.

Recommandé (ceux que j'utilise personnellement) :
- SD-latent-mirroring : Amusant, donne de la symétrie
- a1111-sd-webui-tagcomplete : Utile si vous utilisez des modèles Danbooru (comme NAI). Fournit une autocomplétion à vos requêtes.
- sd-dynamic-prompts : Extension de type joker. Utile si vous voulez randomiser des choses comme les vêtements sans y penser.

## Requêtes
Cette section couvre tous les domaines du [Chapitre 3](#Interface-web-Pt1).

Honnêtement, les requêtes se font à tâtons, il va falloir expérimenter. Vous trouverez ici un tutoriel complet sur les requêtes : https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#prompt-editing. Cette section concerne quelques paramètres choisis

Voici quelques conseils si vous débutez. Tout peut être modifié comme vous le souhaitez

### Conseils pour Txt2img

#### Syntaxe
- Positive : Ajoutez `masterpiece, best quality` au début de toutes vos requêtes.
	- C'est le positif par défaut de NovelAI
- Négatif : Ajoutez `lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry` à vos négatifs.
	- Ceci est le négatif par défaut de NovelAI
- Accentuation : Vous pouvez ajouter de l'emphase en utilisant la syntaxe suivante : `(requête ici : multiplicateur)`.
	- Exemple : `1girl, yellow hair, (beautiful eyes:1.2), (flowing hair), ((smiling)), (dark aesthetic:0.25), [bloom], [[particles]]`
		- Dans ce cas
			- `beautiful eyes` verra sa force multipliée par 1,2.
			- `flowing hair`verra sa force multipliée par 1,1.
			- `smiling` verra sa force multipliée par 1,21 (1,1 * 1,1).
			- `dark aesthetic` verra sa force réduite d'un facteur de 4 (1 / 0,25)
			- `bloom` verra sa force réduite d'un facteur de 1.1
			- `particles` verra sa force réduite de 1,21 (1,1 * 1,1)
	- La conversion de la syntaxe de NovelAI vers le webui d'AUTOMATIC1111 est la suivante :
		- {mot} = (mot:1.05)
		- {{mot}} = (mot:1.1025)
			- 1.05 * 1.05 = 1.1025
		- [mot] = (mot:0.952)
			- 1 / 1.05 - 0.952
		- [mot] = (mot:0.907)
			- 1 / 1.05 / 1.05 = 0.907
- Vous devez ordonner votre requête du plus au moins important en utilisant des catégories, car c'est ainsi que l'IA traite votre requête.
	- Exemple d'ordre : `(positifs généraux), (descripteurs du sujet), (descripteurs de l'arrière-plan), (post-traitement, appareil photo, etc.)`.
		- Exemple (qui pourrait être mauvais) : `masterpiece, best quality, 1girl, solo, portrait, beautiful, smiling, red flowing hair, sparking eyes, wearing a dress, bright sunny background, bloom, world theater masterpiece, particles, bokeh effect`
- Vous pouvez aller au-delà de 75 jetons. L'interface web remplira les 20 derniers jetons avec des jetons vides si cela arrive (à moins que cela n'ait été changé dans les paramètres). Lorsque le 76ème jeton est atteint, les poids sont réinitialisés.
	- Exemple : 1girl (1), apple (2), ..., banana (54), grapes (55), pear (56), mango (57) ... , orange (74), plum (75), tangerine (1) --> les 20 derniers jetons sont remplis --> banana (54), grapes (55), , , , , , , , , , , , , , , , pear (1), mango (2)
		- 1girl aura le plus d'attention, poire aura le plus d'attention
		- Les espaces entre les virgules sont pris en compte dans le calcul de la limite de jetons.
- Les instructions AND : Provoque deux requêtes distinctes en même temps et les combine. 
	- La façon la plus simple de visualiser ce que cela fait et de créer des requêtes appropriées est la suivante : une femme et une pomme
		- 1girl (1), apple (2), 1girl (3), apple (4)
			- La femme est demandée et est produite par l'IA à l'étape 1, pomme à l'étape 2, une femme à l'étape 3, etc.
	- Précisez l'emplacement des éléments afin qu'ils ne soient pas combinés.
		- Exemple : 1 fille debout sur l'herbe devant le château ET le château en arrière-plan.
			- Cela créera une fille debout devant un château et un château qui se trouve commodément à l'arrière-plan.
- Requête d'édition : Permet de commencer à générer une image mais de changer à mi-chemin.
	- Exemple : `a [red:blue:10] sky` générera `un ciel rouge` pendant 10 étapes et passera à `un ciel bleu` pour les étapes restantes.
	- Exemple pour 100 étapes : `beach with [oak:palm:0.25] trees and a [red:blue:0.5] sky, [masterpiece: by Greg Rutkowski:65]`.
		- Commencez : `beach with oak trees and a red sky, masterpiece`.
		- Après l'étape 25 : `beach with palm trees and a red sky, masterpiece`.
		- Après l'étape 50 : `beach with palm trees and a blue sky, masterpiece`.
		- Après l'étape 65 : `beach with palm trees and a blue sky, by Greg Rutkowski`.
- Graph X/Y : Utile si vous voulez tester plusieurs paramètres sans avoir à les modifier manuellement et à générer une autre image.

#### Paramètres de Txt2img
- Samplers : Utilisez les échantillonneurs DPM++ pour les requêtes générales. Ils nécessitent beaucoup moins d'étapes tout en produisant de bons résultats (~8-10 étapes au minimum pour avoir un résultat décent, Les generations commencent à converger vers 30 étapes).
- Largeur/Hauteur : Faites la hauteur plus grande que la largeur si vous prévoyez de faire des portraits. Faites l'inverse si vous envisagez de faire des paysages. Dans tous les cas, si vous dépassez 512px dans n'importe quelle direction, vous devriez utiliser le correctif Hires (bien que vous n'en ayez peut-être pas besoin).

### Conseils pour Img2img
- Plus le débruitage est élevé, moins l'image originale est liée à l'image finale.
- Scripts --> SD Upscale : Très bon outil pour ajouter des détails qui peut être utilisé à la place d'un upscaler.
	- L'image d'entrée est décomposée en tuiles (la taille des tuiles est spécifiée par largeur x hauteur) et est passée dans img2img. L'image de sortie est doublée en taille, ce qui signifie que la taille des tuiles est importante en raison du chevauchement des tuiles.
		- Ex : une image d'entrée 512x512 nécessite 9 tuiles 512x512 mais seulement 4 tuiles 640x640.		
	- Exemple de requête à utiliser : `detailed, high quality`.

### Conseils pour l'inpainting
Guide recommandé (NSFW) : https://rentry.org/inpainting-guide-SD

- Je recommande de toujours utiliser `Inpaint at full resolution` pour plus de détails.
- Plus l'objet à repeindre nécessite un contexte, plus vous devez ajouter du padding/rembourrage.
	- Si vous n'utilisez pas `Inpaint at full resolution`, utilisez le pinceau pour peindre de l'espace supplémentaire en dehors de la zone d'inpainting désirée.

## Interface web Pt2
Cette section couvre des choses plus avancées pour le webui.

** Note : Pour l'instant, les .ckpts, hypernetworks, embeddings, vaes, et scripts téléchargés n'importe où, y compris ici, ne sont pas intrinsèquement sûrs. Ils peuvent être "Pickled"/altérer avec du code malveillant. Utilisez votre bon sens et protégez-vous comme vous le feriez avec n'importe quel lien de téléchargement aléatoire que vous verriez sur Internet. **

### Modèles
Les modèles que vous utilisez déterminent ce que l'IA "sait" et peut générer.

Pour une liste complète, consultez les sites : 
- https://rentry.org/sdmodels-fr
- https://rentry.org/sdgoldmine-fr

Modèles les plus importants :
- SD v1.4 : Un modèle formé par les créateurs originaux de la Diffusion Stable. Entraîné sur des milliards d'images
	- Dépôt : https://huggingface.co/CompVis/stable-diffusion-v1-4
	- De nombreux modèles dérivés sont formés sur ce modèle
- SD v2.0 : Un modèle mis à jour formé par StabilityAI. Censé être une mise à jour de SD v1.4.
	- Repo : https://huggingface.co/stabilityai
- NAI : Un modèle formé par NovelAI. Principalement entraîné sur les anime de Danbooru.
	- Le modèle le plus populaire pour les anime
- Waifu Diffusion : Un modèle entraîné sur les anime de Danbooru.

### Dreambooth
Dreambooth est une méthode d'entraînement permettant d'intégrer des données supplémentaires dans un modèle.

Vous en trouverez un certain nombre ici :
https://rentry.org/sdgoldmine
https://huggingface.co

Pour :
- Généralement bon pour tout
- Assez rapide à former

Contre :
- Taille importante des fichiers
- Nécessite au moins 8 Go de mémoire vive pour l'apprentissage (Et même avec 8Go c'est limite).

### Embeddings
L'inversion textuelle génère des embeddings/incorporation. L'inversion textuelle est une méthode d'entraînement qui trouve les balises les plus pertinents pour créer les images d'entrée.

Vous en trouverez un paquet ici :
https://rentry.org/sdgoldmine
https://huggingface.co

Note : Les fichiers .bin sont des fichiers .pt.

Utilisation : Pour utiliser les embeddings, placez-les dans `[votre répertoire]\stable-diffusion-webui\embeddings`. Pour les invoquer lors d'une requête, tapez simplement le nom de votre embedding.
- Exemple : Si votre incorporation est nommée `power.pt`, taper `power` dans la requête invoquera l'incorporation.
- Vous pouvez renommer l'incorporation

Pour :
- Taille de fichier très réduite (<1MB)
- Facile à partager (.pt et images)
- Facilement combinable avec d'autres incorporations
- Bon

Neutre :
- Peut être ou ne pas être bon. Cela dépend de la personne à qui vous demandez

### Hypernetworks
Les hyperréseaux filtrent les sorties d'images

Vous en trouverez quelques-uns ici :
https://rentry.org/sdgoldmine

Utilisation : Pour utiliser les hyperréseaux, placez-les dans `[votre répertoire]\stable-diffusion-webui\models\hypernetworks`. Pour les invoquer, allez dans l'onglet `Settings` --> `Hypernetwork`.
- Vous pouvez modifier sa force en éditant `Hypernetwork strength` dans `Settings`.

Avantages :
- Petite taille de fichier (~100MB)
- Facile à partager
- Bon

Neutre :
- On ne sait pas grand-chose sur la formation de ces derniers. Consultez le site https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2017for pour une discussion actualisée à leur sujet.
- Peut être ou ne pas être bon. Cela dépend de la personne à qui vous demandez

### VAE
Les VAE filtrent la sortie des images et ajoutent de petites modifications.

Utilisation : Pour utiliser les VAE, placez-les dans `\stable-diffusion-webui\models\VAE`. Ou bien, renommez-les en `[votre nom de modèle].vae.pt` et placez-les dans `\stable-diffusion-webui\models\Stable-diffusion`. Allez dans `Paramètres` --> `SD VAE`.

VAEs connus :
- StabilityAI : https://huggingface.co/stabilityai
	- La plupart des gens recommandent spécifiquement celui-ci : https://huggingface.co/stabilityai/sd-vae-ft-mse-original/tree/main
- VAE de NovelAI
	- VAE populaire
- VAE de Trinart : https://huggingface.co/naclbit/trinart_characters_19.2m_stable_diffusion_v1
- SD 1.4 Anime Styled by WD dev : https://huggingface.co/hakurei/waifu-diffusion-v1-4/blob/main/vae/kl-f8-anime.ckpt

### Fusion de points de contrôle
Vous pouvez combiner des points de contrôle (modèles) ensemble ici. Pour l'instant, c'est un processus destructif qui casse certains des "neurones" du modèle, mais qui peut donner d'excellents résultats.

Somme pondérée : Mélange standard
- Modèle primaire (1 - Multiplicateur) + Modèle secondaire * Mutliplicateur
- A (1 - M) + B * M
- Multiplicateur : 0 = A, 1 = (B - C)

Ajouter la différence : Mélange la différence entre deux modèles et un modèle primaire
- Modèle primaire * (Modèle secondaire - Modèle tertiaire)
- A * (B - C)
- Multiplicateur : 0 = A, 1 = (B - C)
- (B - C) prend les "neurones" de `C` et les soustrait de `B`.

Enregistrer en float16 : Vérifier les questions communes

Fusions importantes :
- Berry Mix : Le "mélange" original qui a engendré les autres mélanges de fruits.

## Entraînement
L'entrainement est un domaine très expérimental pour le moment. 

### Modèles
Je n'entraîne pas les modèles, alors essayez de suivre ce guide : https://rentry.org/informal-training-guide

### Dreambooth
Voici le guide officiel de HuggingFace, qui peut ou non être bon : https://huggingface.co/blog/dreambooth  
Voici un autre guide : https://github.com/d8ahazard/sd_dreambooth_extension
Encore un autre: https://cdn.discordapp.com/attachments/1011105234820542554/1045325024321613884/DR.Derps_training_guide_and_insights_1.pdf

### Embeddings
Voici le guide officiel : https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Textual-Inversion

### Hyperréseaux
Trouvez les ressources les plus récentes sur les hyperréseaux ici : https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2017  
Trouvez un guide simple ici : https://rentry.org/hypernetwork4dumdums

## Développements
Cette section couvre les événements importants que vous devez connaître

Fuite NovelAI (désignée par NAI dans ce guide) : NovelAI a entraîné un très bon modèle fermé sur des millions d'images Danbooru. Les gens se sont énervés parce qu'il s'agissait d'un modèle fermé et quelqu'un l'a divulgué/Leark. Cela a apporté les améliorations suivantes à la diffusion stable
- Hypernetworks : Filtres à la sortie
- Aspect Ratio Bucketing : Meilleur recadrage pour l'entrainement.
- Un modèle qui était vraiment bon (pas besoin de requêtes lourdes)

Anything.ckpt : Un groupe chinois a poursuivi l'entrainement sur NAI pour produire des images qui semblaient encore meilleures (au moins les portraits). Vous trouverez des liens de téléchargement sur https://rentry.org/sdgoldmine et https://rentry.org/NAI-Anything_v3_0_n_v2_1.

## Modifications
Pour une liste complète : https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Command-Line-Arguments-and-Settings

Arguments de ligne de commande optionnels proéminents :
- `--xformers` active xformers pour les couches d'attention croisée. L'améliore généralement.
- `--deepdanbooru` active deepdanbooru pour le webui d'AUTOMATIC1111. C'est en gros l'interrogateur CLIP, sauf qu'il utilise les tags Danbooru. Très utile pour taguer des ensembles de données ou pour trouver les tags qui font une image.

Paramètres optionnels proéminents :
- `Enable quantization in K samplers for sharper and cleaner results. This may change existing seeds. Requires restart to apply`.(Activer la quantification dans les échantillonneurs K pour des résultats plus nets et plus propres. Cela peut modifier les "seed" existantes. Nécessite un redémarrage pour être appliqué.) devrait être activé.

## Questions courantes
Cette section sera complétée au fur et à mesure que je trouverai des questions auxquelles répondre.

Qu'est-ce que float16/fp16 ? Float16 réduit de manière significative la taille des modèles en utilisant des estimations. Les cartes 16xx ont des problèmes avec ces estimations, c'est pourquoi elles doivent avoir `--precision full --no-half`.

## Ressources
Hub français : https://rentry.org/stablediffusionfr
Actualités (ENG) : https://rentry.org/sdupdates, https://rentry.org/sdupdates2, https://rentry.org/sdupdates3
Actualités (FR) : https://rentry.org/sdupdates3-fr
Goldmine (tout le reste) (ENG) : https://rentry.org/sdgoldmine
Goldmine (tout le reste) (FR) (Mise à jour datant du 21/11) : https://rentry.org/sdgoldmine-fr
Reddit : https://www.reddit.com/r/StableDiffusion

Travail en cours :  
Configurations Linux + AMD  
Plus d'informations sur l'entrainement  
Guides sur l'intégration de SD dans votre flux de travail
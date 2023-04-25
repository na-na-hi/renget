->![Voldy Retard GUide](https://i.imgur.com/HfpAmsA.png)<-
->`L'expérience définitive de la Diffusion Stable ™`<-
->**(Tous les remerciements vont à Voldy pour le guide original : https://rentry.org/voldy)**<-
->(Remerciements spéciaux à tous les anons qui ont contribués)<-
**->[---VITRINE DES FONCTIONNALITÉS ET MODE D'EMPLOI---](https://github.com/AUTOMATIC1111/stable-diffusion-webui-feature-showcase)<-**

==[**SD Actualités (FR)**](https://rentry.org/sdupdates3-fr)==
==[**SD Actualités(ENG)**](https://rentry.org/sdupdates3)==
==[**Guide japonais ici 日本語ガイド**](https://gigazine.net/news/20220907-automatic1111-stable-diffusion-webui/)== [(Ressources JP)](https://rentry.org/zqr4r)
==**[NovelAI FAQ](https://rentry.org/sdg_FAQ)**== 


[TOC]
**Exigences minimales:**  
-16 Go de RAM
-GPU NVIDIA Maxwell (GTX 7xx) ou plus récent avec **au moins** 2 Go de mémoire vive.
-Linux ou Windows 7/8/10+. 
-20 Go d'espace disque
##->`--GUIDE--`<-##

**Etape 1:** [**Installer Git**](https://github.com/git-for-windows/git/releases/download/v2.37.3.windows.1/Git-2.37.3-64-bit.exe) [(page)](https://git-scm.com/download/win)
Lors de l'installation, assurez-vous de cocher la case "Intégration de l'explorateur Windows -> Git Bash".

**Etape 2:** Clonez le dépôt de l'interface web à l'emplacement de votre choix :
-Cliquez avec le bouton droit n'importe où et sélectionnez 'Git Bash ici'.
-Entrez `git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui `
(Note : pour **mettre à jour**, tout ce que vous avez à faire est de taper `git pull` dans le nouveau dossier webui)

**Etape 3:** Téléchargez votre/vos modèle(s) préféré(s) :
- ==Diffusion stable officielle 1.5:== [Huggingface](https://huggingface.co/runwayml/stable-diffusion-v1-5) (nécessite une inscription) | [(magnet)](magnet:?xt=urn:btih:2daef5b5f63a16a9af9169a529b1a773fc452637&dn=v1-5-pruned-emaonly.ckpt&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&tr=udp%3a%2f%2f9.rarbg.com%3a2810%2fannounce&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a6969%2fannounce&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce&tr=https%3a%2f%2fopentracker.i2p.rocks%3a443%2fannounce&tr=http%3a%2f%2ftracker.openbittorrent.com%3a80%2fannounce&tr=udp%3a%2f%2ftracker.torrent.eu.org%3a451%2fannounce&tr=udp%3a%2f%2fopen.stealth.si%3a80%2fannounce&tr=udp%3a%2f%2fvibe.sleepyinternetfun.xyz%3a1738%2fannounce&tr=udp%3a%2f%2ftracker2.dler.org%3a80%2fannounce&tr=udp%3a%2f%2ftracker1.bt.moack.co.kr%3a80%2fannounce&tr=udp%3a%2f%2ftracker.zemoj.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.tiny-vps.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.theoks.net%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.publictracker.xyz%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.monitorit4.me%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.moeking.me%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.lelux.fi%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.dler.org%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.army%3a6969%2fannounce)
- ==Diffusion stable officielle 1.4:== [Huggingface](https://huggingface.co/runwayml/stable-diffusion-v1-5) (nécessite une inscription) ou [**ICI**](https://drive.yerf.org/wl/?id=EBfTrmcCCUAGaQBXVIj5lJmEhjoP1tgl) | [(magnet)](magnet:?xt=urn:btih:3a4a612d75ed088ea542acac52f9f45987488d1c&dn=sd-v1-4. ckpt&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.openrackr.org%3a1337)
- ==Waifu Diffusion Final:== (SD 1.4 + **680k** Danbooru images, heavy anime bias) [**ICI**](https://huggingface.co/hakurei/waifu-diffusion-v1-3/resolve/main/wd-v1-3-float16.ckpt) | [(Float32 Ver.)](https://huggingface.co/hakurei/waifu-diffusion-v1-3/resolve/main/wd-v1-3-float32.ckpt)
- ==Waifu Diffusion Alpha:== (SD 1.4 + **56k** images Danbooru, léger penchant pour les anime) [**ICI**](https://thisanimedoesnotexist.ai/downloads/wd-v1-2-full-ema.ckpt) | [(**mirroir**)](http://wd.links. sd:8880/wd-v1-2-full-ema.ckpt) | [(magnet)](magnet:?xt=urn:btih:INEYUMLLBBMZF22IIP4AEXLUK6XQKCSD&dn=wd-v1-2-full-ema.ckpt&xl=7703810927&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce)
- ==Trinart2:== (SD 1.4 formé pour Anime concept art/'Pixiv style') [**ICI**](https://huggingface.co/naclbit/trinart_stable_diffusion_v2/resolve/main/trinart2_step115000.ckpt)
- **Voir [Cette page](https://rentry.org/sdmodels) pour des modèles supplémentaires** (La plupart en version bêta)

**Etape 4: (optionnel)** Renommez votre fichier .ckpt en "model.ckpt", et placez-le dans le dossier `/models/Stable-diffusion`.
-**Vous pouvez avoir autant de modèles que vous voulez dans le dossier, "model.ckpt" est juste celui qui sera chargé par défaut lors du premier lancement.**

**Etape 5:** [**Installer Python 3.10**](https://www.python.org/ftp/python/3.10.6/python-3.10.6-amd64.exe) [(Windows 7 ver)](https://github.com/adang1345/PythonWin7/raw/master/3.10.6/python-3.10.6-amd64-full.exe) [(page)](https://www.python.org/downloads/windows/)
Assurez-vous de choisir "**add to PATH**" lors de l'installation.

**Etape 6 (optionnel):** 
Cela réduit la VRAM, et vous permet de générer à de plus grandes résolutions ou tailles de lots pour une perte <10% de la vitesse de génération brute.
(Pour moi, les résultats singuliers étaient légèrement plus lents, mais générer avec une taille de lot de 4 rendait chaque résultat **25% plus rapide** en moyenne)
Ceci est recommandé pour *la plupart* des utilisateurs ayant moins de 6Go de mémoire vive
-Modifiez `webui-user.bat`. 
-Changez `COMMANDLINE_ARGS=` en `COMMANDLINE_ARGS=--medvram`'.

**Etape 7:** Lancez `webui-user.bat`, Ouvrez-le en tant qu'utilisateur normal, **pas** en tant qu'administrateur.
- Attendez patiemment qu'il installe les dépendances et fasse une première exécution. 
Il peut sembler être "bloqué" mais il ne l'est pas. Cela peut prendre jusqu'à 10-15 minutes.
==Et vous avez terminé!==

!!!note Utilisation
- Lancez webui-user.bat
- Après avoir chargé le modèle, il devrait vous donner une adresse LAN telle que **'127.0.0.1:7860'**.
- Saisissez l'adresse dans votre navigateur pour accéder à l'interface.
Conseil : Passez votre souris sur les éléments de l'interface utilisateur pour obtenir des infobulles sur leur fonction.
- Pour quitter, fermez la fenêtre de commande (CMD)


##->`--CONFIGURATION DE NOVEL AI--`<-##
*Fourni au service de la liberté d'information, de test et de recherche*.
*Si vous appréciez vos résultats, envisagez de vous [**inscrire**](https://novelai.net/register)*

**Etape 1:** Suivez le guide principal ci-dessus.
-(Ignorez les étapes **3** et **4** si vous prévoyez d'utiliser uniquement le modèle NovelAI).
Ouvrez un git bash en cliquant avec le bouton droit de la souris dans votre dossier webui de diffusion stable principal et tapez `git pull` pour vous assurer que vous êtes à jour.

**Etape 2:** Téléchargez un [Client Torrent](https://www.qbittorrent.org/download.php) si vous n'en avez pas déjà un.
-Ajoutez le lien Magnet suivant :
[magnet:?xt=urn:btih:5bde442da86265b670a3e5ea3163afad2c6f8ecc](magnet:?xt=urn:btih:5bde442da86265b670a3e5ea3163afad2c6f8ecc)
-**Désélectionner** tout sauf le sous-dossier ` /animefull-final-pruned` (sous /stableckpt), **et** `animevae.pt`.
-(Facultatif : sélectionnez les hyper-réseaux **.pt** désirés dans le sous-dossier `/modules` (*Ceux-ci ne sont **pas** utilisés par défaut dans NAI mais peuvent fournir des résultats uniques*)

**Etape 3:** Une fois terminé, **renommez** les fichiers suivants que vous avez torréfiés comme ceci :
`animevae.pt` **>>** `nai.vae.pt`
`config.yaml` **>** `nai.yaml`
`model.ckpt` **>>** `nai.ckpt`

**Etape 4** : Placez **les 3** fichiers dans `/stable-diffusion-webui/models/Stable-diffusion`.

**Etape 5 (optionnel):** Si vous voulez lancer NovelAI par défaut, faites ce qui suit
-Editer webui-user.bat dans notepad et ajouter le .ckpt NAI :
`COMMANDLINE_ARGS=--ckpt nai.ckpt` 
Sinon, vous pouvez simplement le sélectionner dans la liste déroulante WebUI

**Hyper-réseau (Optionnel):**
L'utilisation de fichiers Hyper-réseau .pt peut apporter des changements uniques à votre sortie NAI en fonction de celui que vous utilisez.
Pour les activer :
-Créez le dossier `/stable-diffusion-webui/models/hypernetworks` s'il n'existe pas déjà.
-Collez vos modules .pt (anime, aini, furry etc) dans le dossier `hypernetworks`.
-Rechargez l'interface Web
-Dans l'onglet 'Settings', choisissez votre .pt sous **Stable Diffusion finetune hypernetwork** et cliquez sur appliquer.

!!!info Reproduire les défauts de NovelAI
Il est possible de créer des sorties **identiques** au service d'abonnement actuel de NovelAI en faisant ce qui suit :

==Standard (Euler)==
-Réglez l'échantillonneur sur **Euler** (pas Euler A).

-Utilisez **28** étapes

-Réglez l'échelle CFG sur **11**.

-Utilisez **masterpiece, best quality** au début de toutes les requêtes positives.

-Utilisez **nsfw, lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artefacts, signature, watermark, username, blurry, artist name** comme requête négative.
(le contenue sensible est optionnel, et activé sur le site)

-Dans l'onglet Paramètres, changez **Ignorer les dernières couches du modèle CLIP** en **2** et appliquez.

==Euler-A Defaults==
Si vous voulez reproduire les résultats de NovelAI Euler_a, vous devez faire ce qui suit en plus des valeurs par défaut ci-dessus :
-Sous **Paramètres de l'échantillonneur** dans les paramètres, réglez 'ETA Noise Seed Delta' sur **31337**.

==Et vous devriez être prêt pour la requête !==

!!!info Test de précision 
La façon la plus simple de tester si votre configuration NovelAI fonctionne correctement est d'essayer de reproduire un résultat de NovelAI lui-même :
Pour cet exemple, nous allons utiliser la meilleure fille :
![Asuka](https://i.ibb.co/dD9NNx1/naio.png)
**Echantilloneur:** `Euler`
**Valeur aléatoire:** `2870305590`
**CFG:** `12`
**Résolution:** `512x512`
**Requête:** `masterpiece, best quality, masterpiece, asuka langley sitting cross legged on a chair`
**Requête négatif:** `lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts,signature, watermark, username, blurry, artist name`
(Vérifiez que vous avez copié les instructions exactement !)
Note : Vous pouvez voir une très légère variation si vous utilisez une optimisation telle que lowvram ou xformers, mais il devrait toujours être **95%** similaire.
[**Dépannage des Asukas incorrects**](https://imgur.com/a/DCYJCSX)

!!!Ressources pour NovelAI
- [Étiquettes artistique](https://zele.st/NovelAI/)
- [Expressions NAI/Coiffure/Vêtements](https://rentry.org/faces-faces-faces) (quelques images nsfw)
- [Convertisseur de requête](https://seesaawiki.jp/nai_ch/d/%a5%d7%a5%ed%a5%f3%a5%d7%a5%c8%ca%d1%b4%b9) (Convertit la syntaxe des requête de NovelAI vers celle de l'interface web)
- [Requêtes Emoji](https://rentry.org/xnpkp)

##->`--FAIRE FONCTIONNER AVEC 4GO (Et en dessous !)--`<-##
==Ces paramètres sont également utiles pour les utilisateurs réguliers qui veulent faire des images plus grandes ou des lots plus importants!==
Il est possible de réduire drastiquement l'utilisation de la VRAM avec **quelques modifications:**.
- **Etape 1:** Editez `webui-user.bat`. 
- **Etape 2:** Après ` COMMANDLINE_ARGS=` , entrez les paramètres que vous souhaitez :
**Exemple:** `COMMANDLINE_ARGS=--medvram` 

- Si vous avez 4Go VRAM et que vous voulez faire des images 512x512 (ou peut-être plus grandes), 
utilisez `--medvram`.
- Si vous avez **2Go** de VRAM,
utilisez `--lowvram`.

Si vous obtenez des erreurs "Out of memory" avec l'une ou l'autre de ces options, ajoutez `--always-batch-cond-uncond` aux autres arguments.

==**NOTES:**==
- Si vous obtenez un **écran vert/noir** au lieu des images générées, vous avez une carte qui ne supporte pas les nombres à virgule flottante de demi-précision (problème connu sur les cartes 16xx) :
 Vous devez utiliser `--precision full --no-half` en plus des autres flags, et le modèle prendra beaucoup plus de place dans la VRAM
  Si vous utilisez un fichier **.vae**, vous devez également ajouter `-no-half-vae`.
- Assurez-vous de **désactiver** l'accélération matérielle dans votre navigateur et de fermer tout ce qui pourrait occuper la VRAM si vous obtenez des erreurs de mémoire, et éventuellement de supprimer GFPGAN (si vous l'avez).

##->`--GUIDE ALTERNATIF (Conda)--`<-##
==(Vous pouvez essayer cette méthode si l'installation traditionnelle ne fonctionne pas)==
- **Suivez les étapes 1 à 4 du guide principal ci-dessus**.
- Téléchargez Miniconda [ICI](https://docs.conda.io/en/latest/miniconda.html). Téléchargez Miniconda 3
- Installez Miniconda dans l'emplacement par défaut. Installez pour **tous les utilisateurs**. 
Décochez "Enregistrer Miniconda comme le système Python 3.9" à moins que vous ne le vouliez.
- Ouvrir l'invite Anaconda (miniconda3)
- Dans Miniconda, naviguez vers le dossier `/stable-diffusion-webui` où vous avez téléchargé en utilisant "cd" pour sauter des dossiers.
(Ou tapez simplement "cd" suivi d'un espace, et ensuite *glisser le dossier dans* l'invite Anaconda).
- Tapez les commandes suivantes pour créer un environnement et installer les dépendances nécessaires :
- `conda create --name qwe`
(Vous pouvez le nommer comme vous voulez à la place de qwe)
- `conda activate qwe`
- `conda install python`
- `conda install git`
- `webui-user.bat`
(Note : il peut sembler qu'il soit bloqué sur "Installer torch" au début. C'est normal et cela devrait prendre 10-15 minutes)
==Il devrait maintenant être prêt à l'emploi==

!!!note Usage
- Naviguez vers `/stable-diffusion-webui` dans Miniconda
- Tapez `conda activate qwe`. 
(Vous devrez taper 'conda activate qwe' à chaque fois que vous voudrez lancer l'interface web)
- Tapez `webui-user.bat`.
- Après avoir chargé le modèle, il devrait vous donner une adresse LAN telle que '**127.0.0.1:7860**'.
Entrez l'adresse dans votre navigateur pour accéder à l'environnement GUI.

##->`--INSTALLATION LINUX--`<-##
**Etape 1:** Installer les dépendances
- Basé sur Debian :
`sudo apt install wget git python3 python3-venv`
- Basé sur Red Hat :
`sudo dnf install wget git python3`
- Basé sur Arch :
`sudo pacman -S wget git python3`

**Etape 2:** Pour installer dans `/home/$(whoami)/stable-diffusion-webui/`, exécutez :
`bash <(wget -qO- https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh)`

##->`--LIENS--`<-##
- [Groupes d'étiquettes Danbooru](https://danbooru.donmai.us/wiki_pages/tag_groups) (NAI/WD)
- [Liste d'embeddings](https://rentry.org/embeddings)
- [Collection d'embeddings (MEGA)](https://mega.nz/folder/7k0R2arB#5_u6PYfdn-ZS7sRdoecD2A)
- [Entraînement d'hyper-réseaux pour les nuls](https://rentry.org/hypernetwork4dumdums)
- [Guide sur l'inversion textuel (colab)](https://rentry.org/textard)
- [Liste des artistes SD 1.4 avec photos](https://rentry.org/artists_sd-v1-4)
- [Comparaison des 500 meilleurs artistes](https://www.urania.ai/top-sd-artists)
- [Recherche dans dataset de d'entraînement](https://haveibeentrained.com/)
- [Guide de l'inpainting](https://rentry.org/inpainting-guide-SD)(nsfw)
- [SD wiki](https://wiki.installgentoo.com/wiki/Stable_Diffusion) (en pause)
- [Le mini-wiki de Voldy](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki)
- [Guide pour l'utilisation du CPU (Openvino)](https://rentry.org/cputard)
- [Conseils pour la peinture](https://rentry.org/drfar)
- [Guide d'Anon pour les vecteurs d'anime](https://rentry.org/anime_and_titties) (Waifu Diffusion)
- [Xformers préconstruit](https://rentry.org/25i6yn)
- [Remacri Upscaler](https://u.pcloud.link/publink/show?code=kZgSLsXZ0M1fT3kFGfRXg2tNtoUgbSI4kcSy)(Paysages) [Lollypop Upscaler](https://drive.google.com/u/1/uc?id=10h8YXKKOQ61ANnwLjjHqXJdn4SbBuUku&export=download)(Figures anthropomorphes)
- [Autres modèles d'Upscaler](https://upscale.wiki/wiki/Model_Database)
(Placez les modèles upscaler dans le dossier ESRGAN)
- [Requêtes de Chine](https://docs.qq.com/doc/DWHl3am5Zb05QbGVs)
- Créez de superbes requêtes esthétiques à l'aide du [générateur de requête](https://promptomania.com/stable-diffusion-prompt-builder/)
- [Mots clés japonais](https://chara-zokusei.jp/question_list)
- Utilisez [Darkreader](https://darkreader.org/) pour passer votre thème Gradio en mode sombre.
- [Guide sur l'entraînement informel](https://rentry.org/informal-training-guide) (30 Go de RAM+)
- [Guide de débogage](https://rentry.org/pf98i)
- [Python pour Windows 7](https://github.com/adang1345/PythonWin7)
- [Dépot Github de l'interface web](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
- [Page de Waifu Diffusion sur Huggingface](https://huggingface.co/hakurei/waifu-diffusion)

##->`--DÉPANNAGE--`<-##
- Assurez-vous que les chemins de vos dossiers ne contiennent **pas d'espaces**.
- Si vous obtenez **Git n'est pas reconnu comme une commande interne ou externe** lors du lancement, votre Git n'est pas défini dans PATH (problème courant sur W7)
**1:** Ouvrez le menu démarrer et recherchez "Editer les variables d'environnement du système", ouvrez-le.
**2:** Cliquez sur "Variables d'environnement".
**3:** Trouvez `Path` sous **Variables système** et double-cliquez dessus.
**4:** Ajoutez votre chemin Git :
-**W10** : Avec le bouton "Nouveau" de l'éditeur PATH, ajoutez `C:\Program Files\Git\bin\` et `C:\Program Files\Git\cmd\` à la fin de la liste.
-**W7** : A la fin de "Variable value", insérez un `;` suivi de votre chemin Git :
ex. `;C:\Program Files\Git\bin\;C:\Program Files\Git\cmd\`. Ne mettez pas d'espace entre `;` et l'entrée.
-Git devrait maintenant être reconnu dans CMD !
- Si vous obtenez **launch.py error, unrecognized arguments** lorsque vous essayez d'utiliser le flag `--ckpt`, essayez d'utiliser le chemin relatif complet pour celui-ci dans webui-user.bat
par exemple. `COMMANDLINE_ARGS= --ckpt ./models/Stable-diffusion/nai.ckpt`
- "J'ai  `git pull ` pour mettre à jour et quelque chose s'est cassé !"
Naturellement, puisque de nombreuses nouvelles fonctionnalités sont introduites, il peut y avoir une certaine instabilité. Suivez [**ces instructions**](https://rentry.org/git_retard) pour revenir à une version précédente.
- Si vous obtenez une **winerror** lors de l'installation, ou si vous pensez que vous avez cassé quelque chose et que vous voulez réinstaller à partir de zéro, 
supprimez ces répertoires : `venv`, `repositories` et réessayez.
- Si vous obtenez **Python not found** comme erreur, vous devrez peut-être définir manuellement votre PATH dans webui-user.bat :
voir "Définir le PATH de Python" dans la section "Extras" ci-dessous pour les instructions.
- (img2img) si vous obtenez **RuntimeError : Sizes of tensors must match**, vous devez changer la résolution de votre image d'entrée.
- Assurez-vous d'avoir la dernière version du [CUDA toolkit](https://developer.nvidia.com/cuda-11.3.0-download-archive?target_os=Windows&target_arch=x86_64) et des pilotes de GPU que vous pouvez exécuter.
- Si vous obtenez **Torch n'est pas capable d'utiliser le GPU**, vous devrez peut-être télécharger [Python 3.7](https://www.python.org/downloads/release/python-370/) à la place.
- si votre version de Python n'est pas dans PATH (ou si une autre version l'est) 
Créez ou modifiez webui.settings.bat dans le dossier `/stable-diffusion-webui`.
ajoutez la ligne set PYTHON=python pour indiquer le chemin complet de votre exécutable python : `set PYTHON=B:\soft\Python310\python.exe`
Vous pouvez faire cela pour python, mais pas pour git.
- Le programme d'installation crée un environnement virtuel python, de sorte qu'aucun des modules installés n'affectera votre installation système de python si vous en aviez une avant d'installer ceci.
- Pour empêcher la création d'un environnement virtuel et utiliser le python de votre système, éditez webui.bat en remplaçant set `VENV_DIR=venv` par `set VENV_DIR=`
- webui.bat installe les dépendances à partir du fichier `requirements_versions.txt`, qui liste les versions des modules spécifiquement compatibles avec Python 3.10.6. 
Si vous choisissez d'installer pour une version différente de Python, modifier webui.bat pour avoir set REQS_FILE=requirements.txt au lieu de set REQS_FILE=requirements_versions.txt peut aider (mais je vous recommande toujours d'utiliser la version recommandée de Python).
- Si vous obtenez une sortie **vert/noir** au lieu des images générées, vous avez une carte qui ne supporte pas les nombres à virgule flottante de demi-précision (problème connu sur les cartes 16xx) :
-edit webui-user.bat
-Modifiez la ligne 6 en `COMMANDLINE_ARGS=--precision full --no-half` ainsi que tout autre drapeau que vous souhaitez ajouter.
Si vous utilisez un fichier **.vae**, vous devez également ajouter `-no-half-vae`.
Malheureusement, le modèle prendra beaucoup plus de place dans la VRAM-.
Il est donc recommandé d'utiliser des drapeaux comme `--medvram` en combinaison avec celui-ci
- Si votre sortie est un fouillis d'arc-en-ciel, c'est que la résolution de l'image est réglée TROP BAS.
- Un niveau de CFG trop élevé introduira également une distorsion des couleurs, votre CFG doit être compris entre 5 et 15.
- Sur les anciens systèmes, vous devrez peut-être remplacer `cudatoolkit=11.3` par `cudatoolkit=9.0`.
- ~~Assurez-vous que votre installation se trouve sur le lecteur C~~ : (Pas obligatoirement)
- Ce guide est conçu pour les GPU NVIDIA *uniquement*, car la diffusion stable nécessite des cœurs cuda.
  Les utilisateurs d'AMD devraient essayer [CE GUIDE](https://rentry.org/ayymd-stable-diffustion-v1_4-guide)

##->`--CONSEILS--`<-##
- Vous pouvez rapidement basculer entre vos différents modèles .ckpt téléchargés dans l'interface Web.
- Contrairement à la base SD, NovelAI peut générer des images nativement jusqu'à **768x768** sans aucune distorsion.
- Autrement, si vous générez des images significativement **plus grandes** que 512x512 en SD, assurez-vous de cocher **Highres fix** pour obtenir les meilleurs résultats.
Si vous ne le faites pas, des distorsions de "clonage" peuvent commencer à apparaître (visages multiples, bras, etc.).
+Une Puissance de réduction du bruit plus faible semble donner les meilleurs résultats (j'ai utilisé 0,5).
- Même avec le correctif disponible, il est toujours recommandé de générer en 512x512 pour les résultats les plus précis, car les modèles non-NovelAI ont été formés sur des images en 512x512.
- Le modèle Waifu et le .ckpt normal ont leurs propres avantages et inconvénients ;
Les requêtes non-anime faits avec le .ckpt waifu seront biaisés vers la stylisation anime, rendant les visages et les personnes réalistes plus difficiles à moins que vous ne le fusionniez avec un autre modèle.
- Ne **pas** utiliser l'argument `--medvram` ou `--lowvram` lors de l'entraînement ! Les résultats seront très inférieurs
- nai.yaml peut **ne pas** être nécessaire pour obtenir des résultats 1:1 avec NovelAI.
- Utilisez ((( ))) autour des mots-clés pour augmenter leur force et [[[ ]]] pour diminuer leur force.
- Contrairement à d'autres échantillonneurs, **k_euler_a** peut générer des résultats de haute qualité avec peu d'étapes.
- **Sauvegarder la requête en tant que style** vous permet d'enregistrer une requête comme une sortie facilement sélectionnable. Une boîte de sélection apparaîtra à gauche de **Roll** après avoir enregistré votre premier style, vous permettant de faire une sélection. Les requêtes peuvent être supprimées en accédant à `styles.csv`. 
(Cela peut être utile si vous trouvez une combinaison qui génère de très bonnes images et que vous voulez l'utiliser de manière répétée avec des sujets variés).
- Dans Img2img vous pouvez faire glisser votre résultat préféré de l'onglet de sortie sur la droite **directement dans** l'onglet d'entrée pour une itération ultérieure.
- Les échantillonneurs **k_euler_a** et **k_dpm_2_a** donnent des résultats très différents et plus complexes à partir de la même graine et de la même requête.
Cependant, leurs résultats ne sont pas cohérents tout au long des étapes. D'autres échantillonneurs fournissent un raffinement plus prévisible et linéaire avec plus d'étapes.
- La valeur aléatoire de chaque résultat généré se trouve dans le nom du fichier de sortie si vous souhaitez y revenir.
- L'utilisation des mêmes mots-clés que l'image générée dans img2img produit des variantes intéressantes.
- Il est recommandé d'avoir des tailles images d'au moins 512 pixels dans *une* dimension, ou un carré de 384x384 au minimum absolu.
   Tout ce qui est plus petit aura une forte distorsion
- L'interrogateur CLIP prend beaucoup d'espace (8 Go), vous ne devriez pas le sélectionner si vous ne prévoyez pas de l'utiliser fréquemment.
- Essayez un faible **Puissance de réduction du bruit** (0.3-0.4) + un CFG élevé dans img2img pour obtenir des résultats intéressants.
- Vous pouvez utiliser les caractères Unicode japonais dans les requêtes.

##->`--COMMENT FAIRE X--`<-##

->==-----**Exécution sur le CPU**-----==<-
Il est possible d'exécuter l'interface web complète sur un CPU au lieu d'un GPU, mais c'est très lent.
*Si vous voulez une expérience CPU plus rapide mais très basique, essayez la version [Openvino](https://rentry.org/cputard).
Sinon :
- Suivez le guide principal
- Modifiez ces 2 lignes sous **def prepare_environment** comme ceci :
- `torch_command = os.environ.get( 'TORCH_COMMAND', "pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu)`
- `commandline_args = os.environ.get('COMMANDLINE_ARGS', "--skip-torch-cuda-test --precision full --no-half")`
- Lancez webui-user.bat comme d'habitude

->==-----**Lancement de différents modèles**-----==<-
Automatiquement :
- Vous pouvez sélectionner un modèle différent dans l'interface web, sous l'onglet **Stable Diffusion Checkpoint** en haut à gauche de l'interface.

Manuellement :

Si vous avez plusieurs modèles installés et que vous voulez lancer à partir d'un autre modèle, vous pouvez créer un autre .bat.
- Faites une copie de webui-user.bat et donnez-lui le nom que vous voulez.
- Après ` COMMANDLINE_ARGS=`, ajoutez `--ckpt` suivi du modèle désiré à vos paramètres de lancement :
eg : `COMMANDLINE_ARGS=--ckpt wd-v1-2-full-emma.ckpt` 


->==-----**Modification des valeurs par défaut de l'interface utilisateur**-----==<-
Après avoir lancer au moins une fois l'interface web, un fichier `ui-config.json` apparaît dans le répertoire.
Modifiez les valeurs à votre convenance et la prochaine fois que vous lancerez le programme, elles seront appliquées.

->==-----**Exécution en ligne ou par réseau local**-----==<-
Editez webui-user.bat et ajoutez les paramètres nécessaires après `COMMANDLINE_ARGS=`, en plus de tous les paramètres existants que vous avez
- Utilisez `--listen` pour que le serveur écoute les connexions réseau. Cela permettra aux périphériques de votre **réseau local** d'accéder à l'interface utilisateur, et si vous configurez la redirection de port, également aux ordinateurs sur Internet.
- Utilisez l'option `--share` pour fonctionner en ligne. Vous obtiendrez un lien xxx.app.gradio. C'est la façon prévue d'utiliser le programme dans les collabs.
- Utilisez `--port xxxx` pour que le serveur écoute sur un port spécifique, `xxxx` étant le port souhaité. Rappelez-vous que tous les ports inférieurs à 1024 nécessitent les droits root/admin, pour cette raison il est conseillé d'utiliser un port supérieur à 1024. Par défaut, le port 7860 est utilisé si disponible.
- Utilisez `--share --gradio-auth username:password` pour ajouter une authentification partagée.
En option, vous pouvez fournir plusieurs ensembles de noms d'utilisateur et de mots de passe séparés par des virgules (user1:pw1, user2:pw2).

->==-----**Définir le PATH de Python**-----==<-
Parfois, vous devez ajouter manuellement votre répertoire Python au PATH :
- Trouvez l'emplacement de votre installation Python
cela devrait être quelque chose du type `C:\Users\you\AppData\Local\Programs\Python`.
- Ouvrez le dossier et **shift+clic droit** `python.exe`.
puis cliquez sur "copier comme chemin".
- Modifiez le fichier `webui-user.bat`.
collez le chemin que vous avez copié après **PYTHON=** (en gardant les guillemets), et enregistrez

->==-----**Mise à jour automatique**-----==<-
**Note:** Ceci ne s'applique qu'à ceux qui ont utilisé `git clone` pour installer le dépôt.
Vous pouvez configurer votre script pour qu'il se mette à jour automatiquement en éditant `webui-user.bat`.
Ajoutez `git pull` une ligne au-dessus de `call webui.bat`.
Sauvegardez

->==-----**Tracé X/Y**-----==<-
Bien que la plupart des fonctions soient relativement faciles à utiliser, le script du tracé X/Y peut être particulièrement difficile à comprendre, notamment l'option "S/R".
- L'option S/R recherche dans l'ensemble de la requête la première entrée du champ valeurs séparées par des virgules et remplace toutes les occurrences du premier mot par une entrée du champ valeurs de la requête S/R à chaque itération.
- Bien entendu, les itérations se produisent également pour chaque valeur du champ de l'autre type.
- Le mot-clé sera *également* itéré, donc l'utilisation de quelque chose comme "rouge, blanc, bleu" entraînera des problèmes si votre requête contient également "reddit gayfurs".

->==-----**Réglage d'un emplacement de sortie différent**-----==<-
Allez dans l'onglet "paramètres" de l'interface utilisateur et attribuez vos nouveaux emplacements de fichiers en conséquence. Une fois que vous avez attribué les emplacements, assurez-vous de cliquer sur **Appliquer les paramètres**.
Il est également recommandé d'activer les paramètres suivants si vous souhaitez que vos sorties soient organisées :
cocher lorsque vous écrivez des images/grilles, créez un répertoire dont le nom est dérivé de la requête.
ou
-Copiez le texte [ICI](https://api.ipfsbrowser.com/ipfs/get.php?hash=QmYndEhuPYzqc1gYxeqKXvhXEXsa5N2UN6hewjgjSX1qhJ) et sauvegardez-le sous le nom de `output.bat`, déplacez-le à l'endroit où vous voulez que vos images sortent. 
Exécutez-le, et il créera les sous-dossiers appropriés. Vous pouvez supprimer le fichier .bat une fois l'opération terminée.

->==-----**GFPGAN**-----==<-
GFPGAN est utilisé pour corriger les visages de manière réalistes, il a été remplacé par la correction de visage CodeFormer qui est fournie avec l'installation principale et est généralement meilleure. 
Pour installer GFPGAN, téléchargez et placez [**GFPGANv1.3.pth**](https://github.com/TencentARC/GFPGAN/releases/download/v1.3.0/GFPGANv1.3.pth) dans le répertoire principal de l'interface web.

##->`--TAILLAGE D'UN .CKPT--`<-##
Les modèles 'non taillés' peuvent peser jusqu'à 7 Go en raison de la redondance des données d'entraînement,
*mais il peut être réduit à 3.6Go sans aucune perte de qualité*, réduisant l'utilisation de la ram et le temps de chargement.
(Le modèle d'origine n'est pas perdu, une nouvelle copie taillé est créée).
NOTE : Vous ne devez effectuer cette opération qu'après avoir exécuté webui-user.bat au moins une fois.
- Placez le fichier .ckpt que vous souhaitez tailler dans votre dossier principal `/stable-diffusion-webui`.
- Copiez https://raw.githubusercontent.com/harubaru/waifu-diffusion/main/scripts/prune.py (Lien mort)
Supprimez les lignes **6** et **8** 
Enregistrez sous le nom de `prune.py`.
Enregistrez sous "all files" dans votre dossier principal `/stable-diffusion-webui`.
- Modifiez la dernière ligne de prune.py avec le nom de votre ckpt :
ex. `prune_it('wd-v1-2-full-emma.ckpt')` et sauvegarder
- Copiez et enregistrez le script de lancement de prune.py [**ICI**](https://api.ipfsbrowser.com/ipfs/get.php?hash=Qma1skhof6KVYMZEnaanjrfRw6M2BhmN2LQjkniWRp8Vjj)
Enregistrez-le sous le nom de `prune.bat` dans votre dossier principal `/stable-diffusion-webui`.
Enregistrez comme 'all files' (tous les fichiers)
(Ceci charge les dépendances de venv et torch en mémoire avant d'exécuter prune.py)
- Exécutez prune.bat
Le processus de taillage peut prendre quelques minutes.
Après cela, vous devriez avoir un fichier .ckpt taillé à côté de votre fichier .ckpt normal.

##->`--MISE À JOUR SÉCURISÉE--`<-###
Le dépôt d'AUTOMATIC1111 est ce que nous appelons *bleeding edge*, ce qui signifie que bien que de nouvelles fonctionnalités soient ajoutées rapidement, il n'est pas rare que de nouveaux bugs les accompagnent.
La bonne nouvelle, c'est que les mises à jour par git pull sont **réversibles** si jamais quelque chose se casse.
Voici comment vous pouvez mettre à jour sans prendre de risque :
- Ouvrez un git bash dans votre dossier principal de Diffusion Stable.
- Entrez `git rev-parse --short HEAD` pour obtenir le hash de votre version actuelle. Notez-le
Cela devrait être une chaîne de 7 caractères comme 'cc58036'.
- Mettez à jour normalement en tapant `git pull`.

Si la nouvelle version fonctionne bien, c'est génial !
Si vous avez besoin de faire un retour en arrière, tout ce que vous avez à faire est de taper `git checkout` suivi du hash de votre version précédente
ex. `git checkout 7edd58d`

##->`--OUTPAINTING--`<-##
**(9/17)** Un nouveau script d'outpainting amélioré a été ajouté à l'interface web !
Assurez-vous d'utiliser `git pull`a fin de pouvoir mettre à jour la dernière version.
Pour l'utiliser, allez sur img2img et sélectionnez "Outpainting mk2" dans le menu déroulant Script.
**~~Paramètres recommandés~~** (Des tests supplémentaires sont nécessaires)
Étapes: 85-100
Echantilloneur: Euler a
CFG Scale: 7.5
Puissance de réduction du bruit: 0.8
Largeur : identique à l'image source
Hauteur : Identique à l'image source
Pixels à étendre: 128-256
Flou masque: 10-25
Exposant de diminution: 1-2
Varation des couleurs: 0.05
**Conseils**
- Assurez-vous que votre largeur et votre hauteur sont identiques ou proches de la résolution de l'image source, 
sinon les résultats de votre outpainting seront incohérents.
- Ne vous sentez pas enfermé dans ces paramètres, il est fortement recommandé de les modifier.
il s'agit juste d'une approximation de ce qui m'a semblé fonctionner le mieux après quelques minutes de tests.
- Plus le flou du masque est élevé, plus les résultats ont tendance à être "transparents" (dans une certaine mesure).
mais s'il est trop élevé, des distorsions déformées apparaissent.

##->`--W7 AIDE--`<-###
Sous Windows 7, vous **pouvez** obtenir l'erreur "**api-ms-win-core-path-l1-1-0.dll is missing**" lorsque vous essayez de suivre ce guide.
Cela s'explique par le fait que de nombreux programmes et frameworks modernes nécessitent un fichier système présent uniquement dans les nouvelles versions de Windows.
Heureusement, il a été rétroporté pour être compatible avec W7, et peut être téléchargé [**ICI**](https://github.com/nalexandru/api-ms-win-core-path-HACK/releases/download/0.3.1/api-ms-win-core-path-blender-0.3.1.zip) [(page Github)](https://github.com/nalexandru/api-ms-win-core-path-HACK)
Unzip et copiez le **x86** .dll dans `C:\Windows\SysWOW64` et le **x64** .dll dans `C:\Windows\System32` et redémarrez, et vous devriez être prêt à partir.
Si vous n'obtenez pas cette erreur, alors vous n'avez pas besoin de faire ceci.

##->`--DIVERS--`<-##

**--ANCIEN MODÈLE--**
Le modèle original v1.3 qui a fuité en juin peut être téléchargé ici :
https://drinkordiecdn.lol/sd-v1-3-full-ema.ckpt
Téléchargement de sauvegarde : https://download1980.mediafire.com/3nu6nlhy92ag/wnlyj8vikn2kpzn/sd-v1-3-full-ema.ckpt (Lien mort)
Torrent Magnet : https://rentry.co/6gocs

**--ANCIEN GUIDE--**
Guide Voldy avant la table des matières (9/15) https://rentry.org/voldyold
Le guide hlky original (remplacé à partir du 8/9/22) est ici : https://rentry.org/GUItard
Guide hlky japonais https://news.livedoor.com/article/detail/22794512/ 
Le guide original (remplacé à partir du 25/08/22) est ici : https://rentry.org/kretard

->**TEMPS DE RENDU APPROXIMATIF PAR GPU (50 étapes)**<-
![Temps](https://i.ibb.co/yd7SZ32/chartthin.png)
->**COMPARAISON DES ÉCHANTILLONNEURS**<-
![Comparaison des échantillonneurs](https://i.ibb.co/vm4fm7L/1661440027115223.jpg)
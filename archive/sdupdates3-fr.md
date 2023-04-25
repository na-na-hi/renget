# Stable Diffusion (Actualités)

->**(Tous les remerciements vont à Questianon pour la page original : https://rentry.org/sdupdates3)**<-

->Fichiers & Informations (ENG) : https://rentry.org/sdgoldmine<-
->Fichiers & Informations (FR) : https://rentry.org/sdgoldmine-fr<-

!!! danger Avertissements : 

	1. Les ckpts/hyper-réseaux/embeddings ne sont ==pas== tous sûrs à l'heure actuelle. Ils peuvent être "pickled"/altérer et peuvent contenir du code malveillant. Utilisez votre bon sens et protégez-vous comme vous le feriez avec n'importe quel lien de téléchargement aléatoire que vous verriez sur Internet.

	2. Surveillez la température de votre GPU et augmentez le refroidissement et/ou sous-alimentez-le si nécessaire. Il y a eu des retours concernant des problèmes de GPU dus à des températures élevées.

	3. Les extensions peuvent modifier du code lorsqu'elles sont exécutées. Soyez prudent consultez les nouvelles pour plus d'informations.

Tous les liens de rentry se terminent par un '.org' ici et peuvent être changés en '.co'. Aussi, utilisez la navigation incognito/privée lorsque vous ouvrez des liens google, sinon vous perdrez votre anonymat / quelqu'un peut vous doxer.

## Contact

Si vous avez des informations/fichiers (ex. embeddings) qui ne figurent pas sur cette liste, si vous avez des questions, ou si vous voulez aider, contactez Questianon avec des détails, **en anglais bien sûr.**

Socials : (ENG)
Trip: questianon !!YbTGdICxQOw
Discord: malt#6065
Reddit: u/questianon
Github: https://github.com/questianon
Twitter: https://twitter.com/questianon

!!! note N'oubliez pas d'utiliser git pull pour obtenir beaucoup de nouvelles optimisations et mises à jour, si SD se casse, reculez dans les commits jusqu'à ce que cela fonctionne à nouveau.
	Instructions :
	* Si vous êtes sous Windows :
		1. naviguer dans le répertoire webui via l'invite de commande ou git bash
			a. Git bash : clic droit > git bash ici
			b. Invite de commande : cliquez sur le point dans le "url" entre le dossier et la flèche vers le bas et tapez "command prompt". 
			c. Si vous ne savez pas comment faire, ouvrez l'invite de commande, tapez "cd [chemin vers stable-diffusion-webui]" (vous pouvez l'obtenir en faisant un clic droit sur le dossier dans l'"url" ou en maintenant shift + clic droit sur le dossier stable-diffusion-webui).
		2. ``git pull``
		3. ``pip install -r requirements.txt``
	* Si vous êtes sous Linux : 
		1. allez dans le répertoire webui
		2. ``source ./venv/bin/activate``
			a. si cela ne fonctionne pas, lancez au préalable ``python -m venv venv```
		3. ``git pull``
		4. ``pip install -r requirements.txt``

!!! info	

	**Événements notables à venir:**

	**Waifu Diffusion v1.4 sort le 1er décembre**

	* Les informations sur la WD 1.4 m'ont été fournies :
		* Nouveau Deepdanbooru pour un meilleur balisage (en "pré-version").
		* Les mains sont bien meilleures - regardez 'Cafe Unofficial Instagram TEST Model Release' pour un exemple de ce qu'il peut faire dans un modèle non fini.
		* Formé à partir de SD 1.5
		* Créateur : "En termes de flexibilité générale de pouvoir requérir un large éventail de choses, wd1.4 devrait être meilleur que tout" (prévu pour remplacer tous les modèles actuels, y compris NAI et anything.ckpt, au point où vous n'avez pas besoin de fusionner).
		* Creator : "nous pourrions créer notre propre version d'hypernetworks et créer des réglages fins pour les styles anime et réaliste"
		* Créateur : l'entraînement du modèle instagram comprend des améliorations telles que :
			1. Entraînement dynamique de l'aspect de l'image (nous avons formé des images avec ZERO rognage, l'image entière est introduite dans SD en une seule fois, même si c'est un paysage ou un portrait)
			2. entraînement inconditionnel, de sorte que le modèle puisse s'améliorer de lui-même.
			3. des résolutions plus élevées pendant la formation (640x640 max)
			4. un code d'entraînement beaucoup plus rapide (augmentation des performances de 6 à 8 fois)
			5. de meilleurs hyperparamètres d'entraînement
			6. Légende automatique de toutes les images par blip.
		* L'ensemble de données et les tags associés seront publics.
		* Haru et Cafe ont trouvé un plan temporaire qui pourrait améliorer considérablement les performances de clip sans avoir à réentraîner clip à partir de zéro, mais cela devra se faire après wd1.4.
		* Pour éviter le "bleed" des images, chaque source sera associée à une étiquette dans les données de légende lorsqu'elle sera introduite dans SD.

>26/11 au 12/12
- SdGoldmine est en train d'être réorganisé et mis à jour, la mise à jour sortira quand il sera organisé .
- Mettez à jour votre installation de l'interface d'AUTOMATIC1111 pour de nombreuses corrections et fonctionnalités.
	- Mises à jour notables que je peux trouver :
		- Ajout de --gradio-inpaint-tool et color-sketch : https://github.com/AUTOMATIC1111/stable-diffusion-webui/commit/5cd5a672f7889dcc018c3873ec557d645ebe35d0
		- Fusion des SafeTensors : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4930
			- Pour activer SafeTensors pour les GPU, la variable d'environnement `SAFETENSORS_FAST_GPU` doit être définie à `1`.
			- Le script de conversion par lot est dans le PR
			- Convertir : https://huggingface.co/spaces/safetensors/convert
		- Quelques mises à jour/corrections de l'interface utilisateur
		- Support correct de SD 2.0 (lien avec le commit primaire) : https://github.com/AUTOMATIC1111/stable-diffusion-webui/commit/ce6911158b5b2f9cf79b405a1f368f875492044d
		- Améliorations pour divers outils (comme les upscalers)
- (j'ai oublié de mettre ceci depuis sa création, mais c'est vraiment bien) InvokeAI, une alternative tout-en-un au webui d'Automatic1111, est mis à jour avec beaucoup de choses : https://github.com/invoke-ai/InvokeAI
	- InvokeAI a besoin de seulement ~3.5GB de VRAM pour générer une image 512x768 (et moins pour des images plus petites), et est compatible avec Windows/Linux/Mac (M1 & M2).
	- Il possède des fonctionnalités telles que : Outpainting de l'interface utilisateur, gestion de l'incorporation, un canevas unifié (infini), et un visualiseur d'images.
	- Très convivial (interface utilisateur simple) et super facile à installer (1-clicK)
	- Reddit : https://www.reddit.com/r/StableDiffusion/comments/zabmht/invokeai_22_release_the_unified_canvas/
- Unstable Diffusion atteint l'objectif de 25000 $ sur Kickstarter pour l'entrainement de SD 2.0
	- https://www.kickstarter.com/projects/unstablediffusion/unstable-diffusion-unrestricted-ai-art-powered-by-the-crowd
	- Objectifs :
		- Cloud GPU communautaire : les chercheurs et les créateurs de modèles communautaires peuvent demander des subventions de calcul et entraîner leurs propres modèles et ensembles de données sur notre système, à condition de publier les résultats en open source.
		- Entraînement supplémentaire en utilisant plus d'étapes et d'images.
		- Filtrage parentale uniquement pour éviter les abus
- Diffusion stable v2.1 publiée : https://stability.ai/blog/stablediffusion2-1-release7-dec-2022
	- https://huggingface.co/stabilityai/stable-diffusion-2-1
	- Réduction de la force des filtres pour permettre de générer de meilleures personnes.
- LORA - Low-rank Adaptation for Fast Text-to-Image Diffusion, Espace de réglage fin (basé sur le github ci-dessous) : https://huggingface.co/spaces/ysharma/Low-rank-Adaptation
	- Dreambooth en 2 fois plus rapide.
	- Fichiers modèles de très petite taille (3-4MB).
	- Supposé être meilleur que le réglage fin complet selon l'auteur de l'espace lié.
	- Reddit : https://www.reddit.com/r/StableDiffusion/comments/ziwwzh/lora_dreambooth_web_ui_finetune_stable_diffusion/
- Dreambooth sur 6 GB VRAM et moins de 16 GB RAM (LORA du haut) : https://github.com/cloneofsimo/lora
	- Reddit : https://www.reddit.com/r/StableDiffusion/comments/zfqkh3/we_can_now_do_dreambooth_on_a_gpu_with_only_6gb/
	- Comment fonctionner sous Windows en mode natif sans WSL (utilise des étapes similaires au guide lié) : https://www.reddit.com/r/StableDiffusion/comments/ydip3s/guide_dreambooth_training_with_shivamshriraos/
- StableTuner, un finetuner de diffusion stable basé sur une interface graphique, disponible : https://github.com/devilismyfriend/StableTuner
	- Facile à installer et à utiliser, interface graphique conviviale et finetuner/trainer tout-en-un.
	- Publiée : https://www.reddit.com/r/StableDiffusion/comments/zd3xut/stabletuner_a_nononsense_powerful_finetuner_with/
- openOutpaint publié : https://github.com/zero01101/openOutpaint
	- Open source, auto-hébergé, hors ligne, léger, facile à utiliser outpainting pour l'interface web d'AUTOMATIC1111
	- Guide : https://github.com/zero01101/openOutpaint/wiki/SBS-Guided-Example
	- Manuel : https://github.com/zero01101/openOutpaint/wiki/Manual
	- Reddit (a plus de fonctionnalités listées dans les commentaires) : https://www.reddit.com/r/StableDiffusion/comments/zi2nr9/openoutpaint_v0095_an_aggressively_open_source/
- OpenAI publie ChatGPT, un modèle de langage pour le dialogue (info dans le lien) : https://openai.com/blog/chatgpt/
	- Démo (nécessite un compte) : https://chat.openai.com/	
- Automatic1111 ajoute le support pour le modèle de profondeur SD
	- Reddit : https://www.reddit.com/r/StableDiffusion/comments/zi6x66/automatic1111_added_support_for_new_depth_model/
	- Instructions d'utilisation par un utilisateur de Reddit : 
		1. Télécharger https://huggingface.co/stabilityai/stable-diffusion-2-depth (modèle) et le placer dans models/Stable-diffusion
		2. Téléchargez https://raw.githubusercontent.com/Stability-AI/stablediffusion/main/configs/stable-diffusion/v2-midas-inference.yaml (config) et placez-le dans le même dossier que le point de contrôle.
		3. Renommez la configuration en 512-depth-ema.yaml.
		4. Démarrez Stable-Diffusion-Webui, sélectionnez le point de contrôle 512-depth-ema et utilisez img2img comme vous le feriez normalement.
- Publication de l'extension depthmap2mask qui permet de créer des masques de carte de profondeur 3d --> donne un meilleur résultat pour img2img
	- Semble être une alternative au conditionnement du poids des masques d'images
- L'entrainement de Dreambooth basé sur l'extension repo de Shivam a été mis à jour pour supporter SD v2.0 (vous le trouverez dans l'onglet extensions)
- Script pour convertir les modèles de diffuseurs en ckpt et (vice versa ?) publié : https://github.com/lawfordp2017/diffusers/tree/main/scripts
- L'interface web d'AUTOMATIC1111 maintenant sur HuggingFace : https://huggingface.co/spaces/camenduru/webui
- Mise à jour du GUI de Pickle Scanner : https://github.com/diStyApps/Stable-Diffusion-Pickle-Scanner-GUI
- Démonstration de Dream Textures (Diffusion stable pour Blender) : https://twitter.com/CarsonKatri/status/1600248599254007810
	- Github : https://github.com/carson-katri/dream-textures
	- Reddit : https://www.reddit.com/r/StableDiffusion/comments/zf2b9k/absolutely_crazy_addon_in_blender_to_add_textures/
- Sortie de l'application IOS de Stable Diffusion : https://www.reddit.com/r/StableDiffusion/comments/z5ndpw/i_made_a_stable_diffusion_for_anime_app_in_your/
	- Hors ligne ?
	- App Store : https://apps.apple.com/us/app/waifu-art-ai-local-generator/id6444585505
- Service simple d'entrainement Dreambooth (mais payant) disponible : https://openart.ai/photobooth
- Serveur tout en un de Diffusion Stable (coûteux mais semble bon marché et facile à utiliser) : https://rundiffusion.com/
	- https://www.reddit.com/r/StableDiffusion/comments/zea5rd/thank_you_to_all_the_alpha_testers/
- Waifu Diffusion 1.4 est reportée au 26 décembre en raison d'un problème de base de données (pas SD 2.0).

> 25+26/11
- Questianon Hypertextbook SD, un tutoriel qui apprend à un nouveau venu comment installer et utiliser Stable Diffusion : https://rentry.org/sdhypertextbook(ENG) / https://rentry.co/sdhypertextbook-fr (FR)
- SD 2.0 est supporté par l'interface web d'AUTOMATIC1111 : https://github.com/AUTOMATIC1111/stable-diffusion-webui/commit/ce6911158b5b2f9cf79b405a1f368f875492044d
- (Reupload avec de nouvelles infos) Demande de pull pour supporter safetensors, le format rapide et indécrottable pour remplacer pytorch : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4930
	- Git checkout ce commit
	- Convertissez vos modèles localement : lisez le premier commentaire du PR 
	- Convertissez vos modèles dans le cloud : https://colab.research.google.com/drive/1YYzfYZEJTb3dAo9BX6w6eZINIuRsNv6l#scrollTo=ywbCl6ufwzmW

>24/11
* Unstable Diffusion lance un Kickstarter le 9 décembre pour financer la recherche et le développement de modèles d'intelligence artificielle réglés avec précision et entraînés sur des ensembles de données extrêmement vastes, spécifiquement sélectionnés sur NSFW.
	- https://discord.com/channels/1010980909568245801/1011042718853648526/1045519049955749898
* Implémentations actuelles (WIP ou non) pour obtenir SD V2 sur l'interface web d'AUTOMATIC1111.
	- https://gist.github.com/toriato/3d1b2da54ef15c100e8996dd546da825
	- Pull request : https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/5011#issuecomment-1326384199
	- https://github.com/uservar/stable-diffusion-webui/commits/dev2
- Sortie du générateur de Harem : https://github.com/Extraltodeus/multi-subject-render
	- Génère plusieurs sujets complexes sur une seule image en une seule fois.
- Nouveau formateur de diffusion stable disponible : https://github.com/CCRcmcpe/scal-sdt
	- Destiné à remplacer https://github.com/CCRcmcpe/diffusers
	- Développé en parallèle à https://github.com/Mikubill/naifu-diffusion, mais je me concentre plus sur l'entraînement dans l'environnement local que dans Hivemind".
* **SD V2 publié : https://stability.ai/blog/stable-diffusion-v2-release**
    - https://www.reddit.com/r/StableDiffusion/comments/z36mm2/stable_diffusion_20_announcement/
    - Diffusion stable 2.0 : Un tout nouveau modèle de conversion texte-image entraîné avec un tout nouvel encodeur de texte OpenCLIP, qui améliore considérablement la qualité des images générées par rapport aux versions précédentes de la V1.
        - Entraîné à partir de zéro en utilisant l'encodeur de texte OpenCLIP-ViT/H qui génère des images 512x512, avec des améliorations par rapport aux versions précédentes (meilleurs scores FID et CLIP-g)
    - Mise à jour de la diffusion de l'inpainting : Un nouveau modèle d'inpainting guidé par le texte, mis au point sur la diffusion stable 2.0.
    - Amélioration de la diffusion : Améliore la résolution des images de 4 fois tout en préservant les détails les plus fins.
    - depth2img : Une variante du modèle d'image à image axée sur la structure et la forme globales des images d'entrée, vous permettant de modifier radicalement le contenu de vos images sans en altérer la composition.
        - Déduit la profondeur des images d'entrée --> meilleur img2img (cohérence préservée)
        - Semble similaire à la fonction "remix" de Midjourney.
        - Ce modèle est conditionné par les estimations de profondeur monoculaire déduites par MiDaS et peut être utilisé pour l'img2img avec préservation de la structure et la synthèse conditionnelle à la forme.
    * Entraîné sur 512x512 et 768x768 --> peut générer des images à ces résolutions par défaut.
        - Pour 768x768, le modèle a été affiné pour générer des images 768x768, en utilisant la v-prédiction.
    * Combiné avec l'upscaler, vous pouvez générer des images d'au moins 2048x2048 par défaut. Il est recommandé d'installer Efficient Attention (https://github.com/facebookresearch/xformers)
    * Entraîné sur un sous-ensemble esthétique de l'ensemble de données LAION-5B créé par l'équipe DeepFloyd de Stability AI, **qui est ensuite filtré pour éliminer le contenu adulte en utilisant le filtre NSFW de LAION**.
    * Optimisé pour fonctionner sur un GPU
    * Le modèle est publié sous une licence révisée "CreativeML Open RAIL++-M License".
    * Téléchargement : https://huggingface.co/stabilityai
    * Github : https://github.com/Stability-AI/stablediffusion
    * Déclaration d'Emad: https://discord.com/channels/1002292111942635562/1002292398703001601/1045151904767942818
    * Twitter: https://twitter.com/StabilityAI/status/1595590319566819328?t=PXgar920uu4SnCOSjx0Mkw&s=19
    * Les implémentations actuelles de la Diffusion Stable doivent être modifiées pour supporter SD v2, ce qui ne devrait pas être trop difficile à mettre en œuvre selon Emad.

    - Exécution de SD 2.0 :
    `python scripts/txt2img.py --prompt "a professional photograph of an astronaut riding a horse" --ckpt <path/to/model.ckpt/> --config <path/to/config.yaml/>` 
    Exemple : `python scripts/txt2img.py --prompt "a professional photograph of an astronaut riding a horse" --ckpt <path/to/768model.ckpt/> --config configs/stable-diffusion/v2-inference-v.yaml --H 768 --W 768 `
    Autre exemple : `python3.10 txt2img.py --prompt woman showing her hands --ckpt ../stable-diffusion-2/768-v-ema.ckpt --configs/stable-diffusion/v2-inference-v.yaml --H 768 --W 768`

    - Support rudimentaire sur l'interface web d'AUTOMATIC1111 : https://github.com/MrCheeze/stable-diffusion-webui/commit/069591b06bbbdb21624d489f3723b5f19468888d
    - Google collab pour les utilisateur sans comtpe pro (n'a pas été testé) : https://colab.research.google.com/drive/1YPFfjFC2NFm0nIxNHXm4fVsxmGPsf38S?usp=sharing
    - Local (n'a pas été testé) : https://github.com/AmericanPresidentJimmyCarter/stable-diffusion
    - Bot Discord (n'a pas été testé) : https://github.com/AmericanPresidentJimmyCarter/yasd-discord-bot
- StabilityAI résout des problèmes juridiques --> il est possible qu'il y ait des nouvelles et des communiqués plus fréquents : https://discord.com/channels/1002292111942635562/1002292112739549196/1045158750631243786
    - https://www.reddit.com/r/StableDiffusion/comments/z37ke7/emad_just_said_on_discord_that_it_is_possible/
- Webcomic entièrement généré par l'I.A. : https://globalcomix.com/c/paintings-photographs/chapters/en/1/4
    - https://www.reddit.com/r/StableDiffusion/comments/z2qkyj/i_created_a_completely_aigenerated_webcomic_over/
- Un autre scanner de "pickle" est sorti : https://www.reddit.com/r/StableDiffusion/comments/z2zu2x/keep_yourself_safe_when_downloading_models_pickle/
    - Dépôt de l'interface : https://github.com/diStyApps/Stable-Diffusion-Pickle-Scanner-GUI
    - Application Windows : https://github.com/diStyApps/Stable-Diffusion-Pickle-Scanner-GUI/releases/download/v0.1.0/distys-Stable-Diffusion-Pickle-Scanner-GUI.v0.1.0.zip
    - Dépôt original : https://github.com/mmaitre314/picklescan

>Reste du 22/11 + 23/11
* Bibliothèque légère pour accélérer les modèles d'inférence Stable-Diffusion, Dreambooth en une seule ligne de code : https://github.com/VoltaML/voltaML-fast-stable-diffusion
* Nouvelle PR d'un échantillonneur (DPM++ SDE) : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4961
* Extension qui corrige l'entraînement de l'hyperréseau : https://github.com/aria1th/Hypernetwork-MonkeyPatch-Extension
	* PR connexe : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4965
* Discussion pour un meilleur entraînement, plus facile et plus rapide ( ?): https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/4940
* Les modèles premium d'Animus ont été divulgués (pas sûr que ce soit sans danger) : https://rentry.org/animusmixed
* (mise à jour) "pickle inspector" a maintenant un script et une liste blanche de diffusion stable : https://github.com/lopho/pickle_inspector/blob/main/README.md
* Midjourney x Spellbrush crée https://nijijourney.com/ (midjourney pour anime)

>19/11 (suite) + 20/11 + 21/11 + une partie du 22/11
* Quelqu'un a pris sdupdates6. J'ai arrêté à sdupdates5. Je ne possède que sdupdates, 2, 3, 4, 5, et goldmine, 2, et 3. Tout le reste est faux
* (Pas sûr qu'il soit implémenté) L'apprentissage de l'inversion textuelle est implémenté de manière incorrecte dans le webui d'AUTOMATIC1111, les auteurs originaux ont édité quelque chose qui permet un meilleur apprentissage en moins de temps (quelqu'un a signalé que 4 vecteurs, 30 images, un taux d'apprentissage de 0.1, et 30 étapes d'apprentissage sur un 3090 étaient suffisants pour une bonne intégration) : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4680
	* Autre demande de retrait : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4886
	* Pull Request connexe pour les hyperréseaux : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4509
* Pull request pour le support de safetensors, le format rapide et indéchiffrable pour remplacer pytorch : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4930
	* Un autre : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4869
* HuggingFace et Pytorch ont collaboré pour rendre les modèles basés sur les transformateurs plus rapides en utilisant la bibliothèque optimale : https://twitter.com/huggingface/status/1594783600855158805
	* https://twitter.com/PyTorch/status/1594766050851102720
	* Docs : https://huggingface.co/docs/optimum/bettertransformer/overview
* SceneComposer : Lancement de la synthèse d'images sémantiques à tout niveau (essentiellement la requête mais il met les choses où vous le voulez vraiment) par l'Université John Hopkins et Adobe : https://zengyu.me/scenec/
	* Text → masque la zone que vous voulez avec le niveau de "précision" (grossier à fin) → dessine les éléments où vous le voulez → peut affiner avec plus de masques (regardez la démo pour voir un exemple).
	* Demo : https://zengyu.me/scenec/resources/demo_video.mp4
	* Git : https://github.com/zengxianyu/scenec
	* Publication : https://arxiv.org/abs/2211.11742
* Magic3D (Texte vers 3D) de NVIDIA publié : https://deepimagination.cc/Magic3D/
	* Crée des modèles maillés en 3D à partir de texte
* Implémentation pure de pytorch de deepdanbooru publiée : https://github.com/AUTOMATIC1111/TorchDeepDanbooru
	* AUTOMATIC1111 se demande s'il faut supprimer la version de tensorflow de webui ou garder les deux. Il préfère la première solution
* Extension pour tester la similarité des phrases dans l'interface web d'AUTOMATIC1111 publiée : https://gitlab.com/azamshato/simula
* (Ajout d'une extension) Démo de CLIPSeg (inpainting basé sur le texte) : https://huggingface.co/spaces/nielsr/text-based-inpainting
	* Txt2mask (extension actuelle du webui) : https://github.com/ThereforeGames/txt2mask
* (récemment mis à jour) Prompt travel (Voyage par requêtes) : https://github.com/Kahsolt/stable-diffusion-webui-prompt-travel
* Accélération du lancement implémentée : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4527
	* https://huggingface.co/docs/accelerate/index
* Téléchargement automatique sur 4chan avec une requête : https://rentry.org/promptchan
* Anime NYK et Anime LA interdisent l'art D'IA : https://www.artnews.com/art-news/news/anime-conventions-ban-ai-art-1234647165/

>19/11
* La web interface d'AUTOMATIC1111 est mise à jour, ``git pull`` pour mettre à jour + quelques nouvelles fonctionnalités
	* Mises à jour : https://github.com/AUTOMATIC1111/stable-diffusion-webui/commits/master
* (Depuis hier, correction de l'image) AltDiffusion publié : https://huggingface.co/BAAI/AltDiffusion-m9
	* Supporte l'anglais(En), le chinois(Zh), l'espagnol(Es), le français(Fr), le russe(Ru), le japonais(Ja), le coréen(Ko), l'arabe(Ar) et l'italien(It)
	* Modèle original basé sur le chinois et l'anglais : https://huggingface.co/BAAI/AltDiffusion
	* Source ouverte
	* Soutenu par le modèle CLIP bilingue nommé AltCLIP
	* Example: https://i.4cdn.org/g/1668837915177041.png

>14/11+15/11+16/11+17/11+18/11 (sdg + hdg done)
* Publication de Machine learning et analyse de données haute performance pour les CPU, GPU, accélérateurs et clusters hétérogènes (pas sûr que ce soit sûr) : https://github.com/nod-ai/SHARK
* Safetensors, le format sans pickle, est bien plus rapide que pytorch : https://huggingface.co/docs/safetensors/speed
* CLIPSeg (inpainting basé sur le texte) : https://huggingface.co/spaces/nielsr/text-based-inpainting
* Img2img utilisant des instructions "humaines" grâce à un modèle de langage + un modèle de conversion de texte en image : https://www.timothybrooks.com/instruct-pix2pix
* Les requêtes dynamiques prennent désormais en charge la logique de modélisation de première classe : https://github.com/adieyal/sd-dynamic-prompts/blob/main/jinja2.md
* Publication de Latent-NERF, similaire à stable-dreamfusion qui crée des sorties plus contraintes ( ?): https://github.com/eladrich/latent-nerf
* Installation locale de SD facile à utiliser : https://artroom.ai/download-app
	* Documentation : https://docs.equilibriumai.com/artroom
	* Github : https://github.com/artmamedov/artroom-stable-diffusion
	* Discord : https://discord.com/invite/XNEmesgTFy
	* https://www.reddit.com/r/StableDiffusion/comments/yxdgps/easytouse_local_install_of_stable_diffusion/
	* Inpainting, outpainting (avec le modèle runway), inversion textuelle et hypernetworks sont à venir dans une mise à jour
* Du cerveau à Stable Diffusion : https://mind-vis.github.io/
* Modèle de langage scientifique à usage général (peut faire des choses comme écrire du code, https://i.4cdn.org/g/1668563334234815s.jpg) (complètement open source) : https://github.com/paperswithcode/galai
	* https://twitter.com/paperswithcode/status/1592546938473549824
	* Peut : résumer la littérature universitaire, résoudre des problèmes mathématiques, générer des articles Wiki, écrire du code scientifique, annoter des molécules et des protéines, etc.
    * "Pour accélérer la science, nous mettons en open source tous les modèles, y compris le modèle de 120 milliards, sans aucune friction."
* Script pour charger plusieurs hyper-réseaux à la fois dans l'interface web d'AUTOMATIC1111 (je ne l'ai pas testé) : https://github.com/antis0007/sd-webui-multiple-hypernetworks
* Extension de l'étiqueteur WD 1.4 (je ne l'ai pas testé moi-même) : https://github.com/toriato/stable-diffusion-webui-wd14-tagger
* (ajouté quelques infos) Applicateur de filigrane pour empêcher img2img de bien fonctionner : https://github.com/MadryLab/photoguard
   * Setup( ?), avec un exemple d'image à tester soi-même : https://github.com/MadryLab/photoguard/blob/main/notebooks/demo_complex_attack_inpainting.ipynb
	* Des personnes ont signalé que cela ne fonctionne pas très bien/ou qu'avec un modèle spécifique et introduit des artefacts.
	*  Semble similaire à https://github.com/ShieldMnt/invisible-watermark
    *Recherche de tags dans danbooru directement dans l'extension webui d'AUTOMATIC1111 publiée : https://github.com/stysmmaker/stable-diffusion-webui-booru-prompt
	* Supporte les IDs des messages
	* Supporte toute la syntaxe de recherche que Danbooru utilise normalement
* Fusionner des modèles SD sans distorsion (méthode git-re-basin de tierce partie : https://github.com/samuela/git-re-basin) : https://github.com/ogkalu2/Merge-Stable-Diffusion-models-without-distortion
* SD rapide par Facebook : https://github.com/facebookincubator/AITemplate/tree/main/examples/05_stable_diffusion
	* Anon rapporte 35.81 it/s sur 3090, 512x512, 50 étapes.

>13/11+14/11
* Applicateur de filigrane empêchant img2img de bien fonctionner : https://github.com/MadryLab/photoguard
	* Semble similaire à https://github.com/ShieldMnt/invisible-watermark
* Extension TLS/HHTPS auto-signée (pas sûr qu'elle couvre le magasin de certificats système pour Windows/Linux/Mac) : https://github.com/papuSpartan/stable-diffusion-webui-auto-tls-https
* Démonstration intéressante de la diffusion stable + société de production ( ?): https://www.youtube.com/watch?v=QBWVHCYZ_Zs
* (Vieux mais pas encore implémenté) Stabiliser l'échantillonnage de DPM Solver++ 2M avec une astuce de stabilisation : https://github.com/crowsonkb/k-diffusion/issues/43#issuecomment-1304916783
	* Editer pour faire : https://rentry.org/wf7pv
* Repo pour entraîner le modèle de diffusion stable avec Diffusers, Hivemind et Pytorch Lightning (selon anon : affiner les modèles NAI avec les améliorations mentionnées dans leur blog) : https://github.com/Mikubill/naifu-diffusion

>11/11+11/12
* Publication d'un modèle SD open source basé sur des textes et des images en chinois : https://huggingface.co/IDEA-CCNL/Taiyi-Stable-Diffusion-1B-Chinese-v0.1
	* Pour le faire fonctionner avec le webui d'AUTOMATIC1111 (je pense) : https://github.com/IDEA-CCNL/stable-diffusion-webui/commit/61ece0cec1097ab8f5e2b52c8d340ca203c5917b
* Remplissage explicite des requêtes (un peu vieux) : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/2642
	* Pourrait aider avec le prompteur : https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/2305
* DeviantArt a publié un générateur d'images AI : https://twitter.com/DeviantArt/status/1591113199218487300
	* Coûteux pour le premium et n'est probablement pas aussi bon que l'interface web d'AUTOMATIC 1111.
	*  : https://www.deviantart.com/team/journal/UPDATE-All-Deviations-Are-Opted-Out-of-AI-Datasets-934500371
		* https://twitter.com/arvalis/status/1591242450055892992
* Stable Diffusion avec ColossalAI pour l'entraînement : https://github.com/hpcaitech/ColossalAI/tree/main/examples/images/diffusion
	* Formation 6,5 fois plus rapide et réduction des coûts de préformation, le coût matériel du réglage fin peut être presque 7 fois moins cher (de RTX3090/4090 24 Go à RTX3050/2070 8 Go).
* Test d'animation de generation de visage : https://www.reddit.com/r/StableDiffusion/comments/ys434h/animating_generated_face_test/
* Étiqueteur Waifu Diffusion 1.4 (prochaine itération de deepdanbooru ?): https://mega.nz/file/ptA2jSSB#G4INKHQG2x2pGAVQBn-yd_U5dMgevGF8YYM9CR_R1SY
	* Waifu Diffusion dev (serveur SD laboratoires d'entraînement) : https://discord.com/channels/1038249716149928046/1038249717001359402/1041160494150594671
* L'extension DreamArtist modifie le code ui.py dans le répertoire des modules.
	* Extension : https://github.com/7eu7d7/DreamArtist-sd-webui-extension
	* Code correspondant: https://github.com/7eu7d7/DreamArtist-sd-webui-extension/blob/9f65d05127a551e5dcf044ed6340510f3ba082f4/install.py#L15-L28
	* Se casse lui-même et l'inversion textuelle est normale jusqu'à ce que tous les fichiers dans le repo soient remplacés par des copies fraîches
	* L'interface web ne démarre pas après avoir désactivé l'extension, à cause de l'ajout 'dream_artist_trigger'.
	* Jusqu'à présent, il n'est pas dans la liste des extensions wiki et doit être téléchargé via l'url du repo. Si vous voulez la télécharger, faites-le à vos risques et périls.
	* Pour corriger votre installation, faites un `git stash` et un `git pull`.
* Ajustement automatique des taux d'apprentissage de l'hyper-réseau en fonction de la différence entre l'image de prévisualisation et les données d'apprentissage (automatise ce que les formateurs font déjà) : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4509
* Cartes d'attribution attentives à la diffusion pour l'interprétation de la SD (alias cartes de chaleur pour ce que fait votre prompteur) : https://github.com/castorini/daam
	* Demande : https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/4592
* DeepDanbooru cassé (pas sûr qu'il soit encore réparé) : https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/4458
* Publication de l'extension du menu de clic droit du Finder de macOS : https://github.com/anastasiuspernat/UnderPillow

>10/11
* Informations sur WD 1.4 :
	* Nouveau "Deepdanbooru" pour un meilleur étiquetage (prerelease en ce moment)
	* Meilleures mains - regardez 'Cafe Unofficial Instagram TEST Model Release' pour un exemple de ce qu'il peut faire dans un modèle non fini.
	* Entraîner à partir de SD 1.5
	* Créateur : "En termes de flexibilité générale d'être en mesure d'inciter un large éventail de choses, wd1.4 devrait être meilleur pout tout" (prévu de remplacer tous les modèles actuels, y compris NAI et anything.ckpt, au point où vous n'avez pas besoin de fusionner)
	* Créateur : "nous allons peut être créer notre propre d'hyper-réseau et créer des réglages fins pour les styles anime et réaliste"
	* Créateur : la formation du modèle instagram comprend des améliorations telles que :
		1. formation dynamique de l'aspect de l'image (nous avons formé des images avec ZERO rognage, l'image entière est introduite dans SD en une seule fois, même si c'est un paysage ou un portrait)
		2. entraînement inconditionnel, de sorte que le modèle puisse s'améliorer de lui-même.
		3. des résolutions plus élevées pendant la formation (640x640 max)
		4. un code d'entraînement beaucoup plus rapide (augmentation des performances de 6 à 8 fois)
		5. de meilleurs hyperparamètres d'entraînement
		6. Légende automatique de toutes les images par blip.
	* Les données d'entraînement et les étiquettes associés seront publics.
	* Haru et Cafe ont trouvé un plan temporaire qui pourrait améliorer considérablement les performances de CLIP sans avoir à réentraîner CLIP à partir de zéro, mais cela devra se faire après wd1.4.
	* Pour éviter le "saignement" des images, chaque source sera associée à une étiquette dans les données de légende lorsqu'elle sera introduite dans SD.
* Intel Arc (A770) peut obtenir ~5.2 it/s en ce moment avec SD non optimisé, fp16 : https://github.com/rahulunair/stable_diffusion_arc
* NovelAI publie son modèle Furry (Beta V1.2) : https://twitter.com/novelaiofficial/status/1590814613201117184
* PR pour l'inpainting avec la couleur : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/3865
* Les modèles formés sur des données synthétiques peuvent être plus précis que d'autres modèles dans certains cas, ce qui pourrait éliminer certains problèmes de confidentialité, de droits d'auteur et d'éthique liés à l'utilisation de données réelles : https://news.mit.edu/2022/synthetic-data-ai-improvements-1103
* Synthèse vocale en japonais (sonne plutôt bien, peut probablement être utilisée pour un VN) : https://huggingface.co/spaces/skytnt/moe-tts
	* Colab : https://colab.research.google.com/drive/14Pb8lpmwZL-JI5Ub6jpG4sz2-8KS0kbS?usp=sharing
* Corrections du sélecteur VAE : https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4214
* Collection de problèmes de xformers : https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2958#discussioncomment-4024359
* Berkeley travaille sur un moyen bon marché de s'entraîner à l'échelle de SD en utilisant quelque chose comme un 2070 (entraînement distribué facile, efficace et évolutif) : https://github.com/hpcaitech/ColossalAI
	* https://medium.com/@yangyou_berkeley/diffusion-pretraining-and-hardware-fine-tuning-can-be-almost-7x-cheaper-85e970fe207b
#  Stable Diffusion FR

!!! info Tous les remerciements vont aux auteurs des pages originales.

!!! warning Dus à l'évolution rapide et constante de l'univers autour de Stable Diffusion, certaines informations/liens présents dans les pages ci-dessous peuvent être erronés, manquant ou obsolète.

!!! danger Avertissement : 

	1. Les ckpts/hyper-réseaux/embeddings ne sont ==pas== tous sûrs à l'heure actuelle. Ils peuvent être "pickled"/altérer et peuvent contenir du code malveillant. Utilisez votre bon sens et protégez-vous comme vous le feriez avec n'importe quel lien de téléchargement aléatoire que vous verriez sur Internet.

	2. Les extensions peuvent modifier du code lorsqu'elles sont exécutées. Soyez prudent, consultez les dernières actualités pour plus d'informations.

**Afin de faciliter l'accès aux informations concernant la mise en place et le fonctionnement de 'Stable Diffusion' pour un plus grand publique, diverses ressources ont été traduites et sont maintenant à votre entière disposition.**

### **Guide d'installation + Démarrage + Bonnes pratiques**
* https://rentry.co/sdhypertextbook-fr <- recommandé (par l’auteur de sdgoldmine)

### **Guide d'installation :**
* https://rentry.org/GuideNAI (à jour)
* https://rentry.org/voldy-fr (à jour)

### **Liste de modèles :**
* https://rentry.org/sdmodels-fr (à jour)

### **Mine d'or de fichier et d'informations:**
* https://rentry.org/sdgoldmine-fr (datant du 20/11)
	* ↑ L'auteur réorganise la page original

###**Dernières actualités :**
* https://rentry.org/sdupdates3-fr (Mis à jour le 13/12)

###**Glossaire** (WIP)
**Certains termes présents dans les différentes localisations n'ont pas d'équivalent français ou sont peut pratique pour la compréhension.**
**Ici sont référencer les différents termes importants autour de Stable Diffusion avec leur traduction ainsi qu’une brève description.**


==**Termes courant**== :
- **Prompt** → Requête → Ce à quoi vous voulez que l'IA pense.
- **Negative Prompt** → Requête négative → Ce que vous voulez que l'IA évite.
- **Steps/sampling steps** → Étapes/Pas → Le temps que l'IA passe à travailler sur l'image. En général, plus d'étapes = plus de précision.
- **Sampling method** → Méthode d'échantillonnage → Comment l'IA pense à votre image.
-  **CFG scale** → Échelle CFG → Le degré de "concentration" sur votre requête.
- **Seed** → Valeur aléatoire → Numéro de source pour le début du traitement de l'IA.
- **Tiles** → Mode tuiles → Conçu pour les générations avec des motifs 
- **Hires.fix** → Correction haute résolution → Seulement vraiment utile pour les générations supérieures à 512x512. Il décompose la résolution de sortie en morceaux de 512x512, exécute txt2img sur chacun d'eux, puis les combine ensemble via img2img (je crois)
- **Denoising Strenght** → Force de débruitage →

==**Termes avancés**==
- **Wildcards** → "macro" → les wildcards sont des fichier pré configurer pour accéder plus facilement a certains termes ou ensemble de termes dans la boite de requête.
	* *Exemple* : il est possible de créer une wildcard "Heureux"et prédéfinir les différents termes `happy, enjoyed, smiling`. Ensuite dans la boite de requête commencer par __ puis le nom de votre wildcard, une suggestion va apparaître vous montrant les wildcard avec ce nom, cliquez dessus et votre ou vos termes pré configurés vont être instantanément placés.
	* Pratique pour les vêtements, décors, émotions ou tout autres paramètre que vous souhaitez alterner durant les générations sans pour autant avoir à changer la requête à chaque fois

- **Textual inversion** → Inversion textuelle → l'inversion textuelle vous permet d'entraîner une petite partie du réseau neuronal sur vos propres images (3 à 5), afin de les utiliser comme référence dans vos prochaines requêtes. 
	* **Le résultat de l'entraînement est un fichier .pt ou .bin, Ce fichier est un "Embedding".**

- **Embeddings** → "Incorporation" → Les embeddings sont des fichiers "référence" fait par l'inversion textuel. 
	* **Les embeddings sont situés dans Webui/Embeddings**
	* *Exemple* : je souhaite générer des images avec mon chat en vedette, mais l'IA ne peut pas connaître son visage, couleur de pelage, etc. Je prend alors plusieurs photos, j'utilise l'inversion textuelle et j'obtiens un fichier que je vais appeler "Mon_chat". Lors de ma prochaine requête, j'utilise Mon_chat au lieu de "cat". Lors de la génération, l'IA va prendre en compte mon embedding et me donner des résultats très proches de mon chat plutôt que des images des chats aléatoire.
	* Pratique pour avoir un point de référence lors de votre requête, les embeddings sont facilement combinable avec d'autres embeddings.

### Contact
Pour toute nouvelle information ou changements/corrections sur la traduction française, contactez moi.

Socials : (FR)
Discord : Kaïros#4463
Reddit : u/Kkairosu

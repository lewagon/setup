## Version de Windows

Avant de commencer, on va vérifier que la version de Windows installée sur ton ordinateur est compatible avec ces instructions de configuration.

### Windows 10 ou Windows 11

Pour pouvoir configurer ton ordinateur, **Windows 10 ou Windows 11** doit être installé dessus.

Pour connaître ta version de Windows :
- Appuie sur `Windows` + `R`
- Saisis `winver`
- Appuie sur `Enter`

:heavy_check_mark: Si les premiers mots qui apparaissent dans cette fenêtre sont **Windows 10 ou Windows 11**, c’est bon :+1:

:x: Sinon, tu ne pourras pas utiliser cette configuration. Il faut que tu mettes à jour ton Windows à la version 10 :point_down:

<details>
  <summary>Mise à niveau vers Windows 10</summary>

  - Télécharge Windows 10 depuis [Microsoft](https://www.microsoft.com/fr-fr/software-download/windows10)
  - Installe-le. L’installation devrait prendre une heure environ, mais cela dépend de ton ordinateur
  - Une fois l’installation terminée, exécute les commandes ci-dessus pour vérifier que tu es sous **Windows 10**
</details>

:information_source: [La mise à jour Windows 11 est toujours en cours de déploiement](https://www.microsoft.com/en-us/windows/get-windows-11), ce qui signifie qu'elle peut être disponible, ou pas, pour ton ordinateur.

:warning: **Si tu as Windows 10 installé, tu n'as pas besoin de faire la mise à jour Windows 11 pour continuer cette configuration**.

### Dernières mises à jour

Une fois que tu as vérifié que tu utilises Windows 10 ou 11, tu vas devoir installer les dernières mises à jour.

Ouvre Windows Update :
- Appuie sur `Windows` + `R`
- Saisis `ms-settings:windowsupdate`
- Appuie sur `Enter`
- Clique sur « Rechercher les mises à jour »

:heavy_check_mark: Si tu vois apparaître une coche verte et le message « Vous êtes à jour », c’est bon :+1:

:warning: Si tu vois apparaître un point d’exclamation rouge et le message « Mise à jour disponible », installe-la et recommence jusqu’à ce que le message « Vous êtes à jour » apparaisse :loop:

:x: Si tu vois apparaître un message d’erreur indiquant que Windows ne peut pas appliquer les mises à jour, **demande au prof**.

<details>
  <summary>Activer le service Windows Update pour corriger les mises à jour</summary>

  Certains antivirus et logiciels désactivent le service de mise à jour dont on a besoin, entraînant l’erreur que tu vois apparaître. On va corriger ça !
  - Appuie sur `Windows` + `R`
  - Saisis `services.msc`
  - Appuie sur `Enter`
  - Double-clique sur `Windows Update Service`
  - Définis `Startup` sur `Automatic`
  - Clique sur `Start`
  - Clique sur `Ok`
  On va maintenant réessayer d’effectuer les mises à jour.
</details>

### Version minimum

Certains des outils qu’on doit installer sont compatibles avec la version `1903` **ou une version ultérieure** de Windows 10 ; on doit donc vérifier que tu as bien cette version au minimum.

- Appuie sur `Windows` + `R`
- Saisis `winver`
- Appuie sur `Enter`

Vérifie le **numéro de version** :

:heavy_check_mark: Si la version indique au moins `1903`, c’est bon :+1:

:x: S’il s’agit d’une version antérieure, **demande au prof**.

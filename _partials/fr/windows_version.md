## Version de Windows

Avant de commencer, on va vérifier que la version de Windows installée sur ton ordinateur est compatible avec ces instructions de configuration.

### Windows 10 ou Windows 11

Pour pouvoir configurer ton ordinateur, **Windows 10 ou Windows 11** doit être installé dessus.

Pour connaître ta version de Windows :
- Appuie sur `Windows` + `R`
- Saisis `winver`
- Appuie sur `Enter`

:heavy_check_mark: Si les premiers mots qui apparaissent dans cette fenêtre sont **Windows 11**, c’est bon :+1:

Si les premiers mots qui apparaissent dans cette fenêtre sont **Windows 10**, vérifie le numéro de version:

- :heavy_check_mark: Si la version indique au moins `2004`, c’est bon :+1:

- :x: Sinon, il faut que tu mettes à jour ton Windows.

- <details>
  <summary>Comment installer les dernières mises à jour</summary>

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

  Vérifie le numéro de version :

  - Appuie sur `Windows` + `R`
  - Saisis `winver`
  - Appuie sur `Enter`


  :heavy_check_mark: Si la version indique au moins `1903`, c’est bon :+1:

  :x: S’il s’agit d’une version antérieure, **demande au prof**.

  </details>

## Ubuntu

### Installation

:information_source: Les instructions suivantes dépendent de ta version de Windows. N'exécute que les instructions qui correspondent à ta version :point_down:

#### Windows 11

Si tu as Windows 11, après avoir redémarré ton ordinateur, tu devrais voir une fenêtre de terminal indiquant que WSL poursuit le processus d'installation d'Ubuntu. Lorsque c'est terminé, Ubuntu va se lancer.

#### Windows 10

Si tu as Windows 10, installons Ubuntu via le Microsoft Store :

- Clique sur `Start`
- Saisis `Microsoft Store`
- Clique sur `Microsoft Store` dans la liste
- Recherche `Ubuntu` dans la barre de recherche
- **Sélectionne la version nommée « Ubuntu » sans aucun chiffre**
- Clique sur `Installer`

:warning: N’installe pas **Ubuntu 18.04 LTS** ni **Ubuntu 20.04** !

<details>
 <summary>Désinstaller les mauvaises versions d’Ubuntu</summary>

  Pour désinstaller une mauvaise version d’Ubuntu, il te suffit d’aller dans la liste des programmes installés de Windows 10 :
  - Appuie sur `Windows` + `R`
  - Saisis `ms-settings:appsfeatures`
  - Appuie sur `Enter`

  Trouve le logiciel à désinstaller et clique sur le bouton de désinstallation.
</details>

Une fois l’installation terminée, le bouton « Installer » se transforme en bouton « Lancer » ; clique dessus.

### Premier lancement

Au premier lancement, on te demandera de fournir des informations :
- Choisis un **nom d’utilisateur** :
  - un mot
  - en minuscules
  - sans caractères spéciaux
  - par exemple : `lewagon` ou ton `prenom`
- Choisis un **mot de passe**
- Confirme ton mot de passe

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `Enter`.

Tu peux fermer la fenêtre Ubuntu maintenant qu’elle est installée sur ton ordinateur.

### Vérifier la version de WSL sous Ubuntu

- Appuie sur `Windows` + `R`
- Saisis `cmd`
- Appuie sur `Enter`

Saisis la commande suivante :

```bash
wsl -l -v
```

:heavy_check_mark: Si la version de WSL sous Ubuntu est la 2, c’est bon. :+1:

:x: Si la version de WSL sous Ubuntu est la 1, il va falloir passer à la version 2.

<details>
  <summary>Passer de la version 1 à la version 2 de WSL sous Ubuntu</summary>

  Dans la fenêtre d’invite de commande, saisis :

  ```bash
  wsl --set-version Ubuntu 2
  ```

  :heavy_check_mark: Au bout de quelques secondes, tu devrais voir apparaître le message suivant : `The conversion is complete`.

  :x: Si ce n’est pas le cas, il faut vérifier que les fichiers Ubuntu ne sont pas compressés.
</details>

<details>
  <summary>Vérifier que les fichiers sont décompressés</summary>

  - Appuie sur `Windows` + `R`
  - Saisis `%localappdata%\Packages`
  - Appuie sur `Enter`
  - Ouvre le dossier nommé `CanonicalGroupLimited.UbuntuonWindows...`
  - Fais un clic droit sur le dossier `LocalState`
  - Clique sur `Properties`
  - Clique sur `Advanced`
  - Vérifie que l’option `Compresser le contenu` n’est **pas** cochée, puis clique sur `Ok`.

  Applique les modifications à ce dossier uniquement et réessaie de convertir la version de WSL sous Ubuntu.

  :x: Si la conversion ne fonctionne pas, **demande au prof**.
</details>

### Vérifier la locale

Le concept e "locale" permert de personnaliser les programms en fonction de ta langue et ton pays.

Vérifions que la locale est bien en **anglais** ans le terminal :

```bash
locale
```

Si la commande ne renvoie pas quelque chose qui contient `LANG=en_US.UTF-8`, lance ceci dans un terminal Ubuntu :

```bash
sudo locale-gen en_US.UTF-8
```

Si après, tu reçois un avertissement (`bash: warning: setlocale: LC_ALL: cannot change locale (en_US.utf-8)`) dans ton terminal, veuillez faire ce qui suit :

<details>
  <summary>Générer la localisation</summary>

Veuillez exécuter ces lignes dans ton terminal.

```bash
sudo update-locale LANG=en_US.UTF8
sudo apt-get update
sudo apt-get install language-pack-en language-pack-en-base manpages
```
</details>

Tu peux maintenant fermer cette fenêtre de terminal.

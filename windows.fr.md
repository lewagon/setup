# Instructions de configuration

Les instructions ci-dessous vont te permettre de configurer ton ordinateur pour [la formation Développement Web du Wagon](https://www.lewagon.com/web-development-course/full-time).

**Lis-les attentivement et exécute toutes les commandes dans l’ordre suivant**. En cas de blocage, n’hésite pas à demander au prof :raising_hand:

C’est parti :rocket:


## Zoom

Pour interagir quand on ne sera pas dans la même pièce, on utilisera [Zoom](https://zoom.us), un outil de visioconférence.

:warning: Si Zoom est déjà installé sur ton ordinateur, vérifie qu’il s’agit au moins de la version **5.6**.

- Va sur [zoom.us/download](https://zoom.us/download)
- Sous **Client Zoom**, clique sur le bouton **Télécharger**
- Ouvre le fichier que tu viens de télécharger pour installer l’application
- Ouvre l’application Zoom
- Si tu as déjà un compte Zoom, connecte-toi avec tes identifiants
- Sinon, clique sur le lien **Inscrivez-vous, c’est gratuit** :

![Inscrivez-vous à Zoom, c’est gratuit](images/zoom_sign_up_free.png)

Sur le site Web de Zoom, remplis le formulaire.

Une fois que tu as terminé, retourne sur l’application Zoom et connecte-toi avec tes identifiants.

Tu devrais voir apparaître un écran ressemblant à ça :

![Écran d’accueil Zoom](images/zoom_home_screen.png)

Tu peux fermer l’application Zoom.


## Compte GitHub

Est-ce que tu as déjà un compte GitHub ? Si ce n’est pas le cas, [inscris-toi maintenant](https://github.com/join).

:point_right: **[Télécharge une photo](https://github.com/settings/profile)** et indique correctement ton nom sur ton compte GitHub. C’est important, car notre tableau de bord interne utilise ton avatar. Fais-le **maintenant** avant de poursuivre la configuration de ton ordinateur.

![image de GitHub](images/github_picture.png)


## Version de Windows

Avant de commencer, on va vérifier que la version de Windows installée sur ton ordinateur est compatible avec ces instructions de configuration.

### Windows 10

Pour pouvoir configurer ton ordinateur, **Windows 10** doit être installé dessus.

Pour connaître ta version de Windows :
- Appuie sur `Windows` + `R`
- Saisis `winver`
- Appuie sur `ENTRÉE`

:heavy_check_mark: Si les premiers mots qui apparaissent dans cette fenêtre sont **Windows 10**, c’est bon :+1:

:x: Si **Windows 10** n’apparaît pas, tu ne pourras pas utiliser cette configuration. Mais pas de panique ! Tu peux toujours passer à Windows 10 :relieved:

<details>
  <summary>Mise à niveau vers Windows 10</summary>

  - Télécharge Windows 10 depuis [Microsoft](https://www.microsoft.com/fr-fr/software-download/windows10)
  - Installe-le. L’installation devrait prendre une heure environ, mais cela dépend de ton ordinateur
  - Une fois l’installation terminée, exécute les commandes ci-dessus pour vérifier que tu es sous **Windows 10**
</details>

### Dernières mises à jour

Une fois que tu as vérifié que tu utilises Windows 10, tu vas devoir installer les dernières mises à jour.

Ouvre Windows Update :
- Appuie sur `Windows` + `R`
- Saisis `ms-settings:windowsupdate`
- Appuie sur `ENTRÉE`
- Clique sur « Rechercher les mises à jour »

:heavy_check_mark: Si tu vois apparaître une coche verte et le message « Vous êtes à jour », c’est bon :+1:

:warning: Si tu vois apparaître un point d’exclamation rouge et le message « Mise à jour disponible », installe-la et recommence jusqu’à ce que le message « Vous êtes à jour » apparaisse :loop:

:x: Si tu vois apparaître un message d’erreur indiquant que Windows ne peut pas appliquer les mises à jour, **demande au prof**.

<details>
  <summary>Activer le service Windows Update pour corriger les mises à jour</summary>

  Certains antivirus et logiciels désactivent le service de mise à jour dont on a besoin, entraînant l’erreur que tu vois apparaître. On va corriger ça !
  - Appuie sur `Windows` + `R`
  - Saisis `services.msc`
  - Appuie sur `ENTRÉE`
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
- Appuie sur `ENTRÉE`

Vérifie le **numéro de version** :

:heavy_check_mark: Si la version indique au moins `1903`, c’est bon :+1:

:x: S’il s’agit d’une version antérieure, **demande au prof**.


## Virtualisation

On doit vérifier que les options de virtualisation sont activées dans le BIOS de ton ordinateur.

C’est déjà le cas sur de nombreux ordinateurs. Vérifions-le :
- Appuie sur `Windows` + `R`
- Saisis `taskmgr`
- Appuie sur `ENTRÉE`
- Clique sur l’onglet `Performance`
- Clique sur `CPU`

![Gestionnaire des tâches de Windows](images/windows_task_manager.png)

:heavy_check_mark: Si tu vois « Virtualisation : activée », c’est bon :+1:

:x: Si la ligne est manquante ou si la virtualisation est désactivée, **demande au prof avant d’essayer d’activer la virtualisation**

<details>
  <summary>Activer la virtualisation</summary>

  On a besoin d’accéder au BIOS / à l’UEFI de l’ordinateur pour activer la virtualisation.

  - Appuie sur `Windows + R`
  - Saisis `shutdown.exe /r /o /t 1`
  - Appuie sur `ENTRÉE`
  - Attends que l’ordinateur s’arrête
  - Clique sur `Troubleshoot`
  - Clique sur `Advanced Options`
  - Clique sur `UEFI Firmware Settings`
  - Clique sur `Restart`

  Tu dois activer l’option de virtualisation de ton processeur ici :
  - La plupart du temps, dans les paramètres avancés, les paramètres du processeur ou les paramètres Northbridge
  - L’option peut avoir un nom différent en fonction de ton ordinateur :
    - Intel : `Intel VT-x`, `Intel Virtualization Technology`, `Virtualization Extensions`, `Vanderpool`...
    - AMD : `SVM Mode` ou `AMD-V`
  - Enregistre les modifications après activation et redémarre l’ordinateur en utilisant l’option correspondante
</details>


## Sous-système Windows pour Linux (WSL)

### Installer WSL 1

WSL est l’environnement de développement que l’on utilise pour exécuter Ubuntu. Pour en savoir plus sur WSL, [consulte cette page](https://docs.microsoft.com/fr-fr/windows/wsl/faq).

On va installer WSL à partir du terminal PowerShell :

:warning: Dans les instructions suivantes, utilise la combinaison de touches `Ctrl` + `Shift` + `ENTRÉE` pour exécuter **Windows PowerShell** en tant qu’administrateur au lieu de cliquer simplement sur `Ok` ou d’appuyer sur `ENTRÉE`.

- Appuie sur `Windows` + `R`
- Saisis `powershell`
- Appuie sur **`Ctrl` + `Shift` + `ENTRÉE`**

:warning: Tu devras peut-être accepter la confirmation UAC concernant l’octroi des droits d’administrateur.

Une fenêtre de terminal bleue apparaîtra :
- Copie les commandes suivantes une par une (`Ctrl` + `C`)
- Colle-les dans la fenêtre PowerShell (`Ctrl` + `V` ou en faisant un clic droit dans la fenêtre)
- Exécute-les en appuyant sur `ENTRÉE`

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

:heavy_check_mark: Si les trois commandes s’exécutent sans erreur, redémarre ton ordinateur et suis les instructions ci-dessous :+1:

:x: Si tu obtiens un message d’erreur (ou si tu vois apparaître du texte en rouge dans la fenêtre), **demande au prof**

### Mise à niveau vers WSL 2

Une fois que ton ordinateur a redémarré, on doit télécharger le programme d’installation de WSL 2.

- Va sur la [page de téléchargement](https://aka.ms/wsl2kernel)
- Télécharge le « WSL2 Linux kernel update package 2 »
- Ouvre le fichier que tu viens de télécharger
- Clique sur `Suivant`
- Clique sur `Terminer`

![Mettre à jour WSL de la version 1 à 2](images/windows_update_wsl.png)

:heavy_check_mark: Si tu ne rencontres aucun message d’erreur, c’est bon :+1:

:x: Si tu obtiens l’erreur « Cette mise à jour s’applique seulement aux machines avec le sous-système Windows pour Linux », **fais un clic droit** sur le programme et sélectionne `uninstall` ; tu devrais pouvoir l’installer normalement cette fois-ci.

### Définir WSL 2 comme sous-système Windows pour Linux par défaut

Maintenant que WLS 2 est installé, on va le définir comme version par défaut :
- Appuie sur `Windows` + `R`
- Saisis `cmd`
- Appuie sur `ENTRÉE`

Dans la fenêtre qui apparaît, saisis :

```bash
wsl --set-default-version 2
```

:heavy_check_mark: Si tu vois apparaître « The operation completed successfully », tu peux fermer ce terminal et suivre les instructions ci-dessous :+1:

:x: Si le message qui s’affiche concerne la virtualisation, **demande au prof**

<details>
 <summary>Activer la fonction Virtual Machine Platform sous Windows</summary>

  Suis les étapes décrites [ici](https://www.configserverfirewall.com/windows-10/please-enable-the-virtual-machine-platform-windows-feature-and-ensure-virtualization-is-enabled-in-the-bios/#:~:text=To%20enable%20WSL%202,%20Open,Windows%20feature%20on%20or%20off.&text=Ensure%20that%20the%20Virtual%20Machine,Windows%20will%20enable%20WSL%202) pour activer <strong>Virtual Machine Platform</strong> et <strong>le sous-système Windows pour Linux</strong>
</details>

<details>
 <summary>Activer la fonction Hyper-V sous Windows</summary>

  Suis les étapes décrites [ici](https://winaero.com/enable-use-hyper-v-windows-10/) pour activer le groupe <strong>Hyper-V</strong>
</details>


## Ubuntu

### Installation

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
  - Appuie sur `ENTRÉE`

  Trouve le logiciel à désinstaller et clique sur le bouton de désinstallation.
</details>

Une fois l’installation terminée, le bouton « Installer » se transforme en bouton « Lancer » ; clique dessus.

Au premier lancement, on te demandera de fournir des informations.
- Choisis un **nom d’utilisateur** :
  - un mot
  - en minuscules
  - sans caractères spéciaux
  - par exemple : `lewagon` ou ton `prenom`
- Choisis un **mot de passe**
- Confirme ton mot de passe

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `ENTRÉE`.

Tu peux fermer la fenêtre Ubuntu maintenant qu’elle est installée sur ton ordinateur.

### Vérifier la version de WSL sous Ubuntu

- Appuie sur `Windows` + `R`
- Saisis `cmd`
- Appuie sur `ENTRÉE`

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
  - Appuie sur `ENTRÉE`
  - Ouvre le dossier nommé `CanonicalGroupLimited.UbuntuonWindows...`
  - Fais un clic droit sur le dossier `LocalState`
  - Clique sur `Properties`
  - Clique sur `Advanced`
  - Vérifie que l’option `Compresser le contenu` n’est **pas** cochée, puis clique sur `Ok`.

  Applique les modifications à ce dossier uniquement et réessaie de convertir la version de WSL sous Ubuntu.

  :x: Si la conversion ne fonctionne pas, **demande au prof**.
</details>

Tu peux maintenant fermer cette fenêtre de terminal.


## Visual Studio Code

### Installation

On va maintenant installer l’éditeur de texte [Visual Studio Code](https://code.visualstudio.com).

- Va sur la [page de téléchargement de Visual Studio Code](https://code.visualstudio.com/download).
- Clique sur le bouton « Windows »
- Ouvre le fichier que tu viens de télécharger.
- Installe-le avec quelques options :

![Options d’installation de VS Code](images/windows_vscode_installation.png)

Une fois l’installation terminée, lance VS Code.

### Connecter VS Code à Ubuntu

Tu devrais voir un cadre dans le coin inférieur droit de VS Code indiquant qu’il détecte WSL. Accepte l’installation de l’extension de WSL pour VS Code.

:warning: Cette extension est obligatoire pour utiliser VS Code !

```bash
code --install-extension ms-vscode-remote.remote-wsl
```

Then open VS Code from your terminal:

```bash
code .
```

:heavy_check_mark: Si tu vois `WSL: Ubuntu` dans une case verte dans le coin inférieur gauche de la fenêtre VS Code, c'est tout bon :+1:

![WSL Ubuntu Remote](images/windows_remote_wsl.png)

:x: Sinon, **demande au prof**


## Windows Terminal

Le terminal standard installé par Ubuntu est très rudimentaire ; on va installer **Windows Terminal**, un terminal vraiment moderne.

### Installation

- Clique sur `Démarrer`
- Saisis `Microsoft Store`
- Clique sur `Microsoft Store` dans la liste
- Recherche `Windows Terminal` dans la barre de recherche
- **Sélectionne Windows Terminal**
- Clique sur `Installer`

:warning: N’installe PAS **Windows Terminal Preview**, uniquement **Windows Terminal** !

<details>
  <summary>Désinstaller la mauvaise version de Windows Terminal</summary>

  Pour désinstaller une mauvaise version de Windows Terminal, il te suffit d’aller dans la liste des programmes installés de Windows 10 :

  - Appuie sur `Windows` + `R`
  - Saisis `ms-settings:appsfeatures`
  - Appuie sur `ENTRÉE`

  Trouve le logiciel à désinstaller et clique sur le bouton de désinstallation.
</details>

Une fois l’installation terminée, le bouton « Installer » se transforme en bouton « Lancer » ; clique dessus.

### Définir Ubuntu comme terminal par défaut

On va définir Ubuntu comme terminal par défaut de ton application Windows Terminal.

Appuie sur `Ctrl` + `,`

pour ouvrir les paramètres du terminal :

![Paramètres de Windows Terminal](images/windows_terminal_settings.png)

- Remplace le profil par défaut par « Ubuntu »
- Clique sur « Enregistrer »
- Clique sur « Ouvrir le fichier JSON »

La partie à modifier est entourée en rouge :

[Fichier de paramètres JSON de Windows Terminal](images/windows\_terminal\_settings\_json.png)

On va commencer par demander à Ubuntu de démarrer directement dans ton répertoire personnel Ubuntu au lieu du répertoire Windows :
- Recherche `"name": "Ubuntu",`
- Ajoute la ligne suivante après :

```bash
"startingDirectory": "//wsl$/Ubuntu/home/the-username-you-chose-at-the-ubuntu-install",
```
:warning: N’oublie pas la virgule à la fin de la ligne !

:warning: N’oublie pas de remplacer le nom d’utilisateur par le tien dans la ligne ci-dessus !

On va ensuite désactiver les avertissements pour les commandes de copier-coller entre Windows et Ubuntu :
- Recherche la ligne `"defaultProfile": "{2c4de342-...}"`
- Ajoute la ligne suivante après :

```bash
"multiLinePasteWarning": false,
```

:warning: N’oublie pas la virgule à la fin de la ligne !

Tu peux enregistrer ces modifications en appuyant sur `Ctrl` + `S`

:heavy_check_mark: Ton **Windows Terminal** est maintenant configuré :+1:

Ce terminal a des onglets ; tu peux choisir d’ouvrir un nouvel onglet de terminal en cliquant sur **+** à côté de l’onglet actuel.

**Désormais, chaque fois que l'on fera référence au terminal ou à la console, il s’agira de celui-ci.** N’utilise PLUS l’application Ubuntu.


## Extensions VS Code

### Installation

On va maintenant installer quelques extensions utiles à VS Code.

Copie-colle les commandes suivantes dans le terminal :

```bash
code --install-extension ms-vscode.sublime-keybindings
code --install-extension emmanuelbeziat.vscode-great-icons
code --install-extension MS-vsliveshare.vsliveshare
code --install-extension rebornix.ruby
code --install-extension dbaeumer.vscode-eslint
```

Voici une liste des extensions que tu vas installer :
- [Sublime Text Keymap and Settings Importer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)
- [VSCode Great Icons](https://marketplace.visualstudio.com/items?itemName=emmanuelbeziat.vscode-great-icons)
- [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
- [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)


### Configuration de Live Share

[Visual Studio Live Share](https://visualstudio.microsoft.com/services/live-share/) est une extension de VS Code, qui te permet de partager du code dans ton éditeur de texte pour débugger et faire de la programmation en binôme. Configurons-le !

Lance VS Code depuis ton terminal en saisissant `code` et en appuyant sur `ENTRÉE`.

Clique sur la petite flèche en bas de la barre de gauche :point_down:

![VS Code Live Share](images/vscode_live_share.png)

- Clique sur le bouton « Partager », puis sur « GitHub (connecte-toi avec ton compte GitHub) ».
- Une popup t’invitant à te connecter avec GitHub apparaît. Clique sur « Autoriser ».
- Tu arriveras alors sur une page GitHub dans ton navigateur, où on te demandera d’autoriser Visual Studio Code ; clique sur « Continuer », puis « Autoriser GitHub ».
- Il se peut que VS Code affiche d’autres popups ; ferme-les en cliquant sur « OK ».

C’est bon !


## Git

### Installation

[`git`](https://git-scm.com/) est un logiciel en ligne de commande utilisé pour la gestion de versions.

Pour installer `git` :
- Ouvre un terminal
- Copie-colle les commandes suivantes :

```bash
sudo apt update
sudo apt install -y git
````

Ces commandes te demanderont ton mot de passe ; saisis-le.

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `ENTRÉE`.

### Installation de GitHub CLI

On va maintenant installer la [CLI officielle de GitHub](https://cli.github.com) (Command Line Interface, interface en ligne de commande). Il s’agit d’un logiciel qui te permet d’interagir avec ton compte GitHub via la ligne de commande.

Copie-colle les commandes suivantes dans ton terminal et saisis ton mot de passe s’il t’est demandé :

```bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
```

Puis copie-colle la commande suivante :

```bash
sudo apt install -y gh
```

Pour vérifier que `gh` a bien été installé sur ta machine, tu peux exécuter :

```bash
gh --version
```

:heavy_check_mark: Si tu vois apparaître `gh version X.Y.Z (YYYY-MM-DD)`, c’est bon :+1:

:x: Sinon, **demande au la prof**.


## zsh

Au lieu d’utiliser le [shell](https://fr.wikipedia.org/wiki/Interface_syst%C3%A8me) `bash` par défaut, on utilisera `zsh`.

Dans un terminal, exécute la commande suivante et saisis ton mot de passe s’il t’est demandé :

```bash
sudo apt install -y zsh curl vim imagemagick jq unzip
```


## Oh-my-zsh

On va maintenant installer le plug-in `zsh` [Oh My Zsh](https://ohmyz.sh/).

Exécute la commande suivante dans un terminal :

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Si tu vois apparaître la question « Do you want to change your default shell to zsh? ? », appuie sur `Y`

À la fin, ton terminal devrait ressembler à ceci :

![Terminal Ubuntu avec OhMyZsh](images/oh_my_zsh.png)

:heavy_check_mark: Si c’est le cas, tu peux continuer :+1:

:x: Sinon, **demande au prof**


## Associer ton navigateur par défaut à Ubuntu

Pour que tu puisses interagir avec le navigateur installé sous Windows depuis ton terminal Ubuntu, on doit le définir comme navigateur par défaut.

:warning: Tu dois exécuter au moins une des commandes ci-dessous :

<details>
 <summary>Google Chrome est ton navigateur par défaut</summary>

Exécute la commande :

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe
  ```

Si tu obtiens une erreur du type `ls: cannot access...`, exécute la commande suivante :

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files/Google/Chrome/Application/chrome.exe\"'" >> ~/.zshrc
  ```

  Sinon, exécute :

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe\"'" >> ~/.zshrc
  ```
</details>

<details>
 <summary>Mozilla Firefox est ton navigateur par défaut</summary>

  Exécute la commande :

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe
  ```

  Si tu obtiens une erreur du type `ls: cannot access...`, exécute la commande suivante :

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files/Mozilla Firefox/firefox.exe\"'" >> ~/.zshrc
  ```

  Sinon, exécute :

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Mozilla Firefox/firefox.exe\"'" >> ~/.zshrc
  ```
</details>

<details>
 <summary>Microsoft Edge est ton navigateur par défaut</summary>

  Exécute la commande :

  ```bash
  echo "export BROWSER='\"/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe\"'" >> ~/.zshrc
  ```
</details>

Redémarre ton terminal.

Puis vérifie que la commande suivante renvoie « Browser defined 👌 » :

```bash
[ -z "$BROWSER" ] && echo "ERROR: please define a BROWSER environment variable ⚠️" || echo "Browser defined 👌"
```

Si ce n’est pas le cas,

:heavy_check_mark: Si tu vois apparaître ce message, tu peux continuer :+1:

:x: Sinon, choisis un navigateur dans la liste ci-dessus et exécute la commande correspondante. N’oublie pas de fermer ton terminal et de le rouvrir. N’hésite pas à **demander au prof**.


## GitHub CLI

CLI est l’acronyme de [Command-line Interface](https://en.wikipedia.org/wiki/Command-line_interface), interface en ligne de commande.

Dans cette section, tu vas installer [GitHub CLI](https://cli.github.com/) pour interagir avec GitHub directement depuis le terminal.

Elle doit déjà être installée sur ton ordinateur grâce aux commandes précédentes.

Pour **te connecter**, commence par copier-coller la commande suivante dans ton terminal :

:warning: **NE modifie PAS `email`**

```bash
gh auth login -s 'user:email' -w
```

Tu obtiendras le résultat suivant :

```bash
! First copy your one-time code: 0EF9-D015
- Press Enter to open github.com in your browser...
```

Sélectionne et copie le code (`0EF9-D015` dans l’exemple), puis appuie sur `ENTRÉE`.

Ton navigateur s’ouvrira et te demandera d’autoriser GitHub CLI à utiliser ton compte GitHub. Accepte et patiente un instant.

Reviens au terminal, appuie à nouveau sur `ENTRÉE` et voilà.

Pour vérifier que tu es bien connecté, saisis :

```bash
gh auth status
```

:heavy_check_mark: Si tu vois apparaître `Logged in to github.com as <TON USERNAME>`, alors c’est bon :+1:

:x: Sinon, **demande au prof**.

Puis exécute la ligne de configuration suivante :

```bash
gh config set git_protocol ssh
```


## Clé SSH

### Génération

On doit générer des clés SSH qui serviront à t’authentifier dans GitHub. Vois ça comme un moyen de te connecter, mais différent de la combinaison courante nom d’utilisateur/mot de passe.

Si tu as déjà généré des clés que tu utilises avec d’autres services, tu peux passer cette étape.

Ouvre un terminal et copie-colle cette commande, en remplaçant l’adresse e-mail par **la tienne** (celle que tu as utilisée pour créer ton compte GitHub).

```bash
mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -C "TYPE_YOUR_EMAIL@HERE.com"
```

On te demandera de fournir des informations. Appuie simplement sur Entrée jusqu’à ce qu’un **mot de passe** te soit demandée.

:warning: Saisis une phrase secrète dont tu te souviendras. Ce mot de passe sert à protéger ta clé privée enregistrée sur ton disque sur.

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe, mais aussi sa longueur. Saisis simplement ton mot de passe, puis appuie sur `ENTRÉE`.

### Donner ta clé publique à GitHub

Tu vas maintenant donner ta clé **publique** à GitHub.

Copie-colle la commande suivante dans ton terminal :

```bash
gh auth refresh -s write:public_key
```

Un code à usage unique (####-####) s’affichera à l’écran. Copie-le et appuie sur `ENTRÉE`, puis colle le code dans ton navigateur et suis les instructions pour **autoriser GitHub**.

De retour dans le terminal, appuie sur `ENTRÉE` et exécute la commande suivante :

```bash
gh ssh-key add ~/.ssh/id_ed25519.pub
```

Tu devrais voir apparaître `✓ Public key added to your account`. Si ce n’est pas le cas, n’hésite pas à **demander au prof**.


## Dotfiles (configuration standard)

Les hackers adorent perfectionner leur shell et leurs outils.

On va commencer avec une super configuration par défaut fournie par Le Wagon : [`lewagon/dotfiles`](https://github.com/lewagon/dotfiles).

Ta configuration est personnelle ; tu as donc besoin de ton **propre** dépôt de code (repository) pour la sauvegarder. Tu vas donc faire un fork, c’est-à-dire une copie, du dépôt Le Wagon.

Faire un fork consiste à créer un nouveau dépôt dans ton compte GitHub personnel `$GITHUB_USERNAME/dotfiles`, identique au dépôt Le Wagon d’origine et que tu pourras modifier librement.

Ouvre ton terminal et exécute les commandes suivantes :

```bash
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
echo $GITHUB_USERNAME
```

:heavy\_check\_mark: Tu devrais voir apparaître ton nom d’utilisateur GitHub.

:x: Si ce n’est pas le cas, **arrête-toi ici** et demande de l’aide. Il se peut que tu aies rencontré un problème à l’étape précédente (`gh auth`).

Il est temps de faire un fork du dépôt et de le cloner sur ton ordinateur :

```bash
mkdir -p ~/code/$GITHUB_USERNAME && cd $_
gh repo fork lewagon/dotfiles --clone
```

### Programme d'installation des Dotfiles

Exécute le programme d’installation `dotfiles` :

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles
zsh install.sh
```

Vérifie les adresses e-mail associées à ton compte GitHub. Tu devras en choisir une à l’étape suivante :

```bash
gh api user/emails | jq -r '.[].email'
```

:heavy_check_mark: Si tu vois la liste de tes adresses e-mail enregistrées, tu peux continuer :+1:

:x: Sinon, [reconnecte-toi à GitHub](https://github.com/lewagon/setup/blob/master/windows.fr.md#github-cli) avant d'exécuter cette commande à nouveau :point_up:.

### Programme d'installation git

Exécute le programme d’installation de `git` :

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh git_setup.sh
```

:point_up: On te **demandera** de fournir ton nom (`FirstName LastName`) et ton adresse e-mail.

:warning: Tu **dois** saisir l’une des adresses e-mail indiquées ci-dessus avec la commande `gh api ...` précédente. Sinon, Kitt ne pourra pas suivre tes progrès.

**Quitte** toutes les fenêtres de terminal ouvertes.


## Désactiver l’invite de phrase secrète SSH

Tu veux éviter d’avoir à fournir ta phrase secrète chaque fois que tu communiques avec un dépôt de code distant. Pour cela, tu as besoin d’ajouter le plug-in `ssh-agent` à `oh my zsh` :

Commence par ouvrir le fichier `.zshrc` :

```bash
code ~/.zshrc
```

Puis :
- Localise la ligne commençant par `plugins=`
- Ajoute `ssh-agent` à la fin de la liste des plug-ins

La liste doit ressembler à ça :

```bash
plugins=(gitfast last-working-dir common-aliases zsh-syntax-highlighting history-substring-search pyenv ssh-agent)
```

:heavy_check_mark: Enregistre le fichier `.zshrc` à l’aide des touches `Ctrl` + `S` et ferme ton éditeur de texte.


## rbenv

On va maintenant installer [`rbenv`](https://github.com/sstephenson/rbenv), un logiciel qui permet d’installer et de gérer des environnements `ruby`.

Pour commencer, tu dois nettoyer toute installation antérieure éventuelle de Ruby :

```bash
rvm implode && sudo rm -rf ~/.rvm
# If you got "zsh: command not found: rvm", carry on.
# It means `rvm` is not on your computer, that's what we want!
rm -rf ~/.rbenv
```

Puis dans le terminal, exécute :

```bash
sudo apt install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
```

```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```

```bash
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

**Ferme ton terminal et rouvre-le**

Si tu vois apparaître un avertissement, **ignore-le** (Ruby n’est pas encore installé).


## Ruby

### Installation

Tu peux maintenant installer la dernière version de [ruby](https://www.ruby-lang.org/en/) et en faire la version par défaut.

Exécute cette commande ; cela **peut prendre un moment (5-10 minutes)**

```bash
rbenv install 3.0.3
```

Une fois que l’installation de Ruby est terminée, exécute cette commande pour indiquer au système
d’utiliser la version 3.0.3 par défaut.

```bash
rbenv global 3.0.3
```

Puis **redémarre** à nouveau ton terminal (ferme-le, puis rouvre-le).

```bash
ruby -v
```

:heavy_check_mark: Si tu vois apparaître un message commençant par `3.0.3p`, tu peux continuer :+1:

:x: Sinon, **demande au prof**

### Installer des gems

<details>
  <summary>Si tu es en <bold>Chine</bold></summary>

  :warning: Si tu es en Chine, mets à jour la procédure d’installation des gems avec les commandes suivantes.

```bash
# En Chine seulement !
gem sources --remove https://rubygems.org/
gem sources -a https://gems.ruby-china.com/
gem sources -l
# *** SOURCES ACTUELLES ***
# https://gems.ruby-china.com/
# Ruby-china.com doit maintenant figurer dans la liste
```
</details>

Dans l’environnement ruby, les bibliothèques externes sont appelées des `gems` : ce sont des bouts de code ruby, que tu peux télécharger et exécuter sur ton ordinateur. On va en installer quelques-unes.

Copie-colle la commande suivante dans ton terminal :

```bash
gem install rake bundler rspec rubocop rubocop-performance pry pry-byebug colored http 'rails:~>6.1'
```

:heavy_check_mark: Si tu vois apparaître `xx gems installed`, c’est bon :+1:

:x: Si tu obtiens l’erreur suivante :

```bash
ERROR: While executing gem ... (TypeError)
incompatible marshal file format (can't be read)
format version 4.8 required; 60.33 given
```

Exécute la commande suivante :
```bash
rm -rf ~/.gemrc
```

Exécute à nouveau la commande pour installer les gems.

:warning: N’installe **JAMAIS** une gem avec `sudo gem install` ! Et ce même si tu tombes sur une réponse de Stack Overflow (ou du terminal) t’invitant à le faire.


## Node.js

[Node.js](https://nodejs.org/en/) est un programme d’exécution JavaScript qui permet d’exécuter du code JavaScript dans le terminal. On va l’installer avec [nvm](https://github.com/nvm-sh/nvm), un gestionnaire de versions pour Node.js.

Exécute la commande suivante dans ton terminal :

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v16.3.1/install.sh | zsh
```

Redémarre ton terminal et exécute la commande suivante :

```bash
nvm -v
```

Tu devrais voir apparaître une version. Sinon, demande au prof.

On va maintenant installer node :

```bash
nvm install 16.3.1
```

Une fois l’installation terminée, exécute :

```bash
node -v
```

Si tu vois apparaître `v14.15`, l'installation a réussi :heavy_check_mark: Tu peux alors exécuter :

```bash
nvm cache clear
```

:x: Sinon, **demande au prof**


## yarn

[`yarn`](https://yarnpkg.com/) est un gestionnaire de paquets, qui permet d’installer des bibliothèques JavaScript. Installons-le :

Exécute la commande suivante dans le terminal :

```bash
npm install --global yarn
```

Redémarre ton terminal et exécute la commande suivante :

```bash
yarn -v
```

:heavy_check_mark: Si tu vois apparaître une version, c’est bon :+1:

:x: Sinon, **demande au prof**


## PostgreSQL

Dans quelques semaines, on abordera les bases de données et le SQL, et tu auras besoin de [PostgreSQL](https://www.postgresql.org/), un système de gestion de base de données adapté à la production, puissant et open source.

Installons-le maintenant.

Exécute les commandes suivantes :

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo /etc/init.d/postgresql start
```

```bash
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```

Tu peux configurer le démarrage automatique de PostgreSQL afin de ne pas avoir à exécuter `sudo /etc/init.d/postgresql start` chaque fois que tu ouvres un nouveau terminal :

```bash
sudo echo "`whoami` ALL=NOPASSWD:/etc/init.d/postgresql start" | sudo tee /etc/sudoers.d/postgresql
```

```bash
sudo chmod 440 /etc/sudoers.d/postgresql
```

```bash
echo "sudo /etc/init.d/postgresql start" >> ~/.zshrc
```

Ouvre un nouveau terminal.

:heavy_check_mark: Si tu vois apparaître le message `* Starting PostgreSQL 12 database server`, c’est bon :+1:

:x: Sinon, **demande au prof**.


## Vérification

On va maintenant vérifier que tu as tout installé correctement.

Quitte toutes les fenêtres Terminal ouvertes, ouvres-en une nouvelle et exécute les commandes suivantes :

```bash
curl -Ls https://raw.githubusercontent.com/lewagon/setup/master/check.rb > _.rb && ruby _.rb && rm _.rb || rm _.rb
```

:heavy_check_mark: Si tu vois apparaître en vert `Awesome! Your computer is now ready!`, c’est bon :+1:

:x: Sinon, **demande au prof**.


## Kitt

:warning: Si tu as reçu un e-mail du Wagon t’invitant à t’inscrire sur Kitt (notre plateforme pédagogique), tu peux passer cette étape. Suis plutôt les instructions contenues dans l’e-mail que tu as reçu, si tu ne l’as pas déjà fait.

Si tu n’es pas certain de ce que tu dois faire, suis [ce lien](https://kitt.lewagon.com/). Si tu es déjà connecté, tu peux passer cette section. Si tu n’es pas connecté, clique sur `Enter Kitt as a Student`. Si tu réussis à te connecter, tu peux passer cette étape. Sinon, demande au prof si tu aurais dû recevoir un e-mail ou si tu dois suivre les instructions ci-dessous.

Inscris-toi en tant qu’alumni du Wagon sur [kitt.lewagon.com/onboarding](http://kitt.lewagon.com/onboarding). Sélectionne ton batch, connecte-toi avec GitHub et renseigne toutes tes informations.

Le prof vérifiera ensuite avec toi que tu fais bien partie de ce batch. Tu peux lui demander de vérifier dès que tu as fini de remplir le formulaire d’inscription.

Une fois que le prof a vérifié ton profil, consulte ta messagerie. Tu devrais avoir reçu 2 e-mails :

- un de Slack, t’invitant à rejoindre la communauté Slack des anciens étudiants du Wagon (où tu pourras discuter avec tes amis et tous les anciens élèves). Clique sur **Devenir membre** et renseigne toutes les informations ;
- un de GitHub, t’invitant à rejoindre l’équipe `lewagon`. **Accepte** pour accéder aux cours.


## Slack

[Slack](https://slack.com/) est une plateforme de communication assez populaire dans le secteur de la technologie.

### Installation

[Télécharge l’application Slack](https://slack.com/downloads/windows) et installe-la.

:warning: Si tu utilises déjà Slack dans ton navigateur, télécharge et installe **l'application de bureau**, qui comprend toutes les fonctionnalités.


### Paramètres

Lance l’application et connecte-toi à l’organisation `lewagon-alumni`.

Pense à **télécharger une photo de profil** :point_down:

![Comment télécharger une photo de profil sur Slack](images/slack_profile_picture.gif)

L’idée est de laisser Slack ouvert toute la journée pour partager des liens utiles / demander de l’aide / décider où aller manger, etc.

On va vérifier que tout fonctionne correctement ; pour cela, on va tester ta caméra et ton microphone :
- Ouvre l’application Slack
- Dans la barre de message de n’importe quel channel, saisis `/call --test` et appuie sur `ENTRÉE`
- Clique sur le bouton vert « Démarrer le test »

![Vérifier le fonctionnement du microphone et de la webcam avec Slack](images/slack_call_test.png)

:heavy_check_mark: Une fois le test terminé, tu devrais voir apparaître des messages de succès en vert, au moins pour ton microphone et ta caméra. :+1:

:x: Sinon, **demande au prof**.

Tu peux également installer l’application Slack sur ton téléphone et te connecter à `lewagon-alumni` !


## Paramètres Windows

### Échanger des fichiers entre Windows et Ubuntu

On a besoin d’un moyen simple pour transférer des fichiers de Windows à Ubuntu et inversement.

Pour cela, on va créer des raccourcis vers les répertoires Ubuntu dans l’**explorateur de fichiers** Windows :
- Ouvre l’explorateur de fichiers Windows (ou utilise le raccourci `WIN` + `E`)
- Dans la barre d’adresse, saisis `\\wsl$\` (ou `\\wsl$\Ubuntu` si la première option ne fonctionne pas)
- Tu as désormais accès au système de fichiers Ubuntu
- Parcours le système de fichiers Ubuntu à la recherche des répertoires qui t’intéressent
- Fais glisser les répertoires souhaités dans la barre d’adresse pour créer des raccourcis

![Comment ajouter un raccourci au système de fichiers Ubuntu sous Windows](images/windows_ubuntu_file_system_shortcut.gif)

### Ouvrir l’explorateur de fichiers Windows à partir du terminal Ubuntu

Un autre moyen pour déplacer les fichiers consiste à ouvrir l’**explorateur de fichiers Windows** à partir du terminal Ubuntu :
- Ouvre un terminal Ubuntu
- Va dans le répertoire que tu souhaites parcourir
- Exécute la commande `explorer.exe .` (ou `wslview .`)
- Si tu obtiens un message d’erreur, exécute `wsl --shutdown` dans un Windows PowerShell et rouvre un terminal Ubuntu

![Comment lancer l’explorateur Windows à partir du terminal Ubuntu](images/windows_explorer_from_terminal.png)

### Trouver ton chemin dans le système de fichiers Ubuntu

Il se peut que tu aies besoin de connaître l’emplacement exact d’un répertoire Windows dans le système de fichiers Ubuntu ou l’inverse.

Pour convertir un chemin Windows en chemin Ubuntu et inversement :
- Ouvre un terminal Ubuntu
- Utilise la commande `wslpath "C:\Program Files"` pour traduire un chemin Windows en chemin Ubuntu
- Utilise la commande `wslpath -w "/home"` pour traduire un chemin Ubuntu en chemin Windows
- La commande `wslpath -w $(pwd)` renvoie le chemin Windows vers le répertoire Ubuntu actuel

![Comment accéder à un chemin Ubuntu depuis un terminal Ubuntu](images/windows_path_from_terminal.png)

### Épingler des applications à ta barre des tâches

Tu utiliseras très souvent la plupart des applications que tu as installées aujourd’hui. Épingle-les à ta barre des tâches pour y accéder en un seul clic !

Pour épingler une application à ta barre des tâches, lance l’application, fais un clic droit sur l’icône dans la barre des tâches pour faire apparaître le menu contextuel et sélectionne « Épingler à la barre des tâches ».

![Comment épingler une application à la barre des tâches dans Windows](images/windows_taskbar.png)

Tu dois épingler :
- ton terminal
- ton explorateur de fichiers
- VS Code
- ton navigateur Internet
- Slack
- Zoom


## La configuration est terminée !

Ton ordinateur est prêt pour [la formation Développement Web du Wagon](https://www.lewagon.com/web-development-course/full-time) :muscle: :clap:

Profite du bootcamp, tu vas assurer :rocket:



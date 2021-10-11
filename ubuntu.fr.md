Instructions de configuration
=============================

Les instructions ci-dessous vont te permettre de configurer ton ordinateur pour [la formation Développement Web du Wagon] (https://www.lewagon.com/web-development-course/full-time)

**Lis-les attentivement et exécute toutes les commandes dans l’ordre suivant**. Si tu es bloqué·e, n’hésite pas à demander au/à la prof :raising\_hand:

C’est parti :rocket:

Zoom
----

Pour interagir quand on ne sera pas dans la même pièce, on utilisera [Zoom](https://zoom.us), un outil de visioconférence.

:warning: Si Zoom est déjà installé sur ton ordinateur, vérifie qu’il s’agit au moins de la version **5.6**.

-   Va sur [<https://zoom.us/download>](https://zoom.us/download)
-   Sous **Client Zoom**, clique sur le bouton \*\*Télécharger\*
-   Ouvre le fichier que tu viens de télécharger pour installer l’application
-   Ouvre l’application Zoom
-   Si tu as déjà un compte Zoom, connecte-toi avec tes identifiants
-   Sinon, clique sur le lien **Inscrivez-vous, c’est gratuit** :

![Inscrivez-vous à Zoom, c’est gratuit](images/zoom_sign_up_free.png)

Sur le site Web de Zoom, remplis le formulaire.

Une fois que tu as terminé, retourne sur l’application Zoom et connecte-toi avec tes identifiants.

Tu devrais voir apparaître un écran ressemblant à ça :

![Écran d’accueil Zoom](images/zoom_home_screen.png)

Tu peux fermer l’application Zoom.

Compte GitHub
-------------

Est-ce que tu as déjà un compte GitHub ? Si ce n’est pas le cas, [inscris-toi maintenant](https://github.com/join).

:point\_right: **[Télécharge une photo](https://github.com/settings/profile)** et indique correctement ton nom sur ton compte GitHub. C’est important, car notre tableau de bord interne utilise tes avatars. Fais-le **maintenant** avant de poursuivre la configuration de ton ordinateur.

![image de GitHub](images/github_picture.png)

Visual Studio Code
------------------

### Installation

On va maintenant installer l’éditeur de texte [Visual Studio Code](https://code.visualstudio.com).

Copie (`CTRL` + `C`) les commandes ci-dessous, puis colle-les dans ton terminal (`CTRL` + `SHIFT` + `v`) :

``` {.bash}
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
```

Ces commandes te demanderont ton mot de passe ; saisis-le.

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `ENTRÉE`.

### Lancement depuis le terminal

On va maintenant lancer VS Code depuis **le terminal** :

``` {.bash}
code
```

:heavy\_check\_mark: Si une fenêtre VS Code s’ouvre, c’est bon. :+1:

:x: Sinon, **demande au/à la prof**.

Extensions VS Code
------------------

### Installation

On va maintenant installer quelques extensions utiles à VS Code.

Copie-colle les commandes suivantes dans le terminal :

``` {.bash}
code --install-extension ms-vscode.sublime-keybindings
code --install-extension emmanuelbeziat.vscode-great-icons
code --install-extension MS-vsliveshare.vsliveshare
code --install-extension rebornix.ruby
code --install-extension dbaeumer.vscode-eslint
```

Voici une liste des extensions que tu vas installer :

-   [Sublime Text Keymap and Settings Importer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)
-   [VSCode Great Icons](https://marketplace.visualstudio.com/items?itemName=emmanuelbeziat.vscode-great-icons)
-   [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
-   [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
-   [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

### Configuration de Live Share

[Visual Studio Live Share](https://visualstudio.microsoft.com/services/live-share/) est une extension de VS Code, qui te permet de partager du code dans ton éditeur de texte pour débugger et faire du pair programming. On va le configurer.

Lance VS Code depuis ton terminal en saisissant `code` et en appuyant sur `ENTRÉE`.

Clique sur la petite flèche en bas de la barre de gauche :point\_down:

![VS Code Live Share](images/vscode_live_share.png)

-   Clique sur le bouton « Partager », puis sur « GitHub (connecte-toi avec ton compte GitHub) ».
-   Une popup t’invitant à te connecter avec GitHub apparaît. Clique sur « Autoriser ».
-   Tu arriveras alors sur une page GitHub dans ton navigateur, où on te demandera d’autoriser Visual Studio Code ; clique sur « Continuer », puis « Autoriser GitHub ».
-   Il se peut que VS Code affiche d’autres popups ; ferme-les en cliquant sur « OK ».

C’est bon !

Git
---

### Installation

[`git`](https://git-scm.com/) est un logiciel de ligne de commande utilisé pour le versioning.

Pour installer `git` :

-   Ouvre un terminal
-   Copie-colle les commandes suivantes :

``` {.bash}
sudo apt update
sudo apt install -y git
```

Ces commandes te demanderont ton mot de passe ; saisis-le.

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `ENTRÉE`.

### GitHub CLI

On va maintenant installer la [CLI officielle GitHub](https://cli.github.com) (Command Line Interface, interface en ligne de commande). Il s’agit d’un logiciel qui te permet d’interagir avec ton compte GitHub via la ligne de commande.

Copie-colle les commandes suivantes dans ton terminal et saisis ton mot de passe s’il t’est demandé :

``` {.bash}
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
```

Puis copie-colle la commande suivante :

``` {.bash}
sudo apt install -y gh
```

Pour vérifier que `gh` a bien été installé sur ta machine, tu peux exécuter :

``` {.bash}
gh --version
```

:heavy\_check\_mark: Si tu vois apparaître `gh version X.Y.Z (YYYY-MM-DD)`, c’est bon :+1:

:x: Sinon, **demande au/à la prof**.

zsh
---

Au lieu d’utiliser le [shell](https://fr.wikipedia.org/wiki/Interface_syst%C3%A8me) `bash` par défaut, on utilisera `zsh`.

Dans un terminal, exécute la commande suivante et saisis ton mot de passe s’il t’est demandé :

``` {.bash}
sudo apt install -y zsh curl vim imagemagick jq
```

Oh-my-zsh
---------

On va maintenant installer le plug-in `zsh` [Oh My Zsh](https://ohmyz.sh/).

Exécute la commande suivante dans un terminal :

``` {.bash}
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Si tu vois apparaître la question « Voulez-vous remplacer le shell par défaut par zsh ? », appuie sur `Y`

À la fin, ton terminal devrait ressembler à ceci :

![Terminal Ubuntu avec OhMyZsh](images/oh_my_zsh.png)

:heavy\_check\_mark: Si c’est le cas, tu peux continuer :+1:

:x: Sinon, **demande au/à la prof**

GitHub CLI
----------

CLI est l’acronyme de [Command-line Interface](https://en.wikipedia.org/wiki/Command-line_interface), interface en ligne de commande.

Dans cette section, tu vas installer [GitHub CLI](https://cli.github.com/) pour réaliser des actions utiles avec des données GitHub directement depuis le terminal.

Elle doit déjà être installée sur ton ordinateur grâce aux commandes précédentes.

Pour **te connecter**, commence par copier-coller la commande suivante dans ton terminal :

:warning: **NE modifie PAS le champ `email`**

``` {.bash}
gh auth login -s 'user:email' -w
```

Tu obtiendras le résultat suivant :

``` {.bash}
! Commence par copier ton code à usage unique : 0EF9-D015
- Appuie sur Entrée pour ouvrir github.com dans ton navigateur…
```

Sélectionne et copie le code (`0EF9-D015` dans l’exemple), puis appuie sur `ENTRÉE`.

Ton navigateur s’ouvrira et te demandera d’autoriser GitHub CLI à utiliser ton compte GitHub. Accepte et patiente un instant.

Reviens au terminal, appuie à nouveau sur `ENTRÉE` et voilà.

Pour vérifier que tu es bien connecté·e, saisis :

``` {.bash}
gh auth status
```

:heavy\_check\_mark: Si tu vois apparaître `Logged in to github.com as <TON USERNAME>`, alors c’est bon :+1:

:x: Sinon, **demande au/à la prof**.

Puis exécute la ligne de configuration suivante :

``` {.bash}
gh config set git_protocol ssh
```

Clé SSH
-------

### Génération

On doit générer des clés SSH qui serviront à t’authentifier dans GitHub. Vois ça comme un moyen de te connecter, mais différent de la combinaison courante nom d’utilisateur/mot de passe.

Si tu as déjà généré des clés que tu utilises avec d’autres services, tu peux passer cette étape.

Ouvre un terminal et copie-colle cette commande, en remplaçant l’adresse e-mail par **la tienne** (celle que tu as utilisée pour créer ton compte GitHub).

``` {.bash}
mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -C "TYPE_YOUR_EMAIL@HERE.com"
```

On te demandera de fournir des informations. Appuie simplement sur Entrée jusqu’à ce qu’une **phrase secrète** te soit demandée.

:warning: Saisis une phrase secrète dont tu te souviendras. Ce mot de passe sert à protéger tes clés privées enregistrées sur ton disque sur.

:warning: Lorsque tu saisiras ta phrase secrète, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ta phrase secrète, mais aussi sa longueur. Saisis simplement ta phrase secrète, puis appuie sur `ENTRÉE`.

### Donner ta clé publique à GitHub

Tu vas maintenant donner ta clé **publique** à GitHub.

Copie-colle la commande suivante dans ton terminal :

``` {.bash}
gh auth refresh -s write:public_key
```

Un code à usage unique (\#\#\#\#-\#\#\#\#) s’affichera à l’écran. Copie-le et appuie sur `ENTRÉE`, puis colle le code dans ton navigateur et suis les instructions pour **autoriser GitHub**.

De retour dans le terminal, appuie sur `ENTRÉE` et exécute la commande suivante :

``` {.bash}
gh ssh-key add ~/.ssh/id_ed25519.pub
```

Tu devrais voir apparaître `✓ Public key added to your account`. Si ce n’est pas le cas, n’hésite pas à **demander au/à la prof**.

Dotfiles (configuration standard)
---------------------------------

Les hackers adorent perfectionner leur shell et leurs outils.

On va commencer avec une super configuration par défaut fournie par Le Wagon : [`lewagon/dotfiles`](https://github.com/lewagon/dotfiles).

Ta configuration est personnelle ; tu as donc besoin de ton **propre** répertoire pour la sauvegarder. Tu vas donc faire un fork, c’est-à-dire une copie, du répertoire Le Wagon.

Faire un fork consiste à créer un nouveau répertoire dans ton compte GitHub personnel `$GITHUB_USERNAME/dotfiles`, identique au répertoire Le Wagon d’origine et que tu pourras modifier librement.

Ouvre ton terminal et exécute les commandes suivantes :

``` {.bash}
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
echo $GITHUB_USERNAME
```

:heavy\_check\_mark: Tu devrais voir apparaître ton nom d’utilisateur GitHub.

:x: Si ce n’est pas le cas, **arrête-toi ici** et demande de l’aide. Il se peut que tu aies rencontré un problème à l’étape précédente (`gh auth`).

Il est temps de faire un fork du répertoire et de le cloner sur ton ordinateur :

``` {.bash}
mkdir -p ~/code/$GITHUB_USERNAME && cd $_
gh repo fork lewagon/dotfiles --clone
```

Exécute le programme d’installation `dotfiles` :

``` {.bash}
cd ~/code/$GITHUB_USERNAME/dotfiles
zsh install.sh
```

Vérifie les adresses e-mail associées à ton compte GitHub. Tu devras en choisir une à l’étape suivante :

``` {.bash}
gh api user/emails | jq -r '.[].email'
```

Exécute le programme d’installation `git` :

``` {.bash}
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh git_setup.sh
```

:point\_up: On te **demandera** de fournir ton nom (`FirstName LastName`) et ton adresse e-mail.

:warning: Tu **dois** saisir l’une des adresses e-mail indiquées ci-dessus avec la commande `gh api ...` précédente. Sinon, Kitt ne pourra pas suivre tes progrès.

**Quitte** toutes les fenêtres de terminal ouvertes.

rbenv
-----

On va maintenant installer [`rbenv`](https://github.com/sstephenson/rbenv), un logiciel qui permet d’installer et de gérer des environnements `ruby`.

Pour commencer, tu dois nettoyer toute installation antérieure éventuelle de Ruby :

``` {.bash}
rvm implode && sudo rm -rf ~/.rvm
# Si tu vois apparaître « zsh: command not found: rvm », continue.
# Cela signifie que `rvm` n’est pas installé sur ton ordinateur, et c’est ce qu’on veut !
rm -rf ~/.rbenv
```

Puis dans le terminal, exécute :

``` {.bash}
sudo apt install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
```

``` {.bash}
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```

``` {.bash}
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

**Ferme ton terminal et rouvre-le**

Si tu vois apparaître un avertissement, **ignore-le** (Ruby n’est pas encore installé).

Ruby
----

### Installation

Tu peux maintenant installer la dernière version de [ruby](https://www.ruby-lang.org/en/) et en faire la version par défaut.

Exécute cette commande ; cela **peut prendre un moment (5-10 minutes)**

``` {.bash}
rbenv install 2.7.4
```

Une fois que l’installation de Ruby est terminée, exécute cette commande pour indiquer au système
d’utiliser la version 2.7.4 par défaut.

``` {.bash}
rbenv global 2.7.4
```

Puis **redémarre** à nouveau ton terminal (ferme-le, puis rouvre-le).

``` {.bash}
ruby -v
```

:heavy\_check\_mark: Si tu vois apparaître un message commençant par `ruby 2.7.4p`, tu peux continuer +1:

:x: Sinon, **demande au/à la prof**

### Installer des gems

<details>
 <summary>Si tu es en <bold>Chine</bold></summary>

:warning: Si tu es en Chine, mets à jour la procédure d’installation des gems avec les commandes suivantes.

``` {.bash}
# En Chine seulement !
gem sources --remove https://rubygems.org/
gem sources -a https://gems.ruby-china.com/
gem sources -l
# *** SOURCES ACTUELLES ***
# https://gems.ruby-china.com/
# Ruby-china.com doit maintenant figurer dans la liste
```

</details>

Dans l’environnement ruby, les librairies externes sont appelées des `gems` : ce sont des bouts de code ruby, que tu peux télécharger et exécuter sur ton ordinateur. On va en installer quelques-unes.

Copie-colle la commande suivante dans ton terminal :

``` {.bash}
gem install rake bundler rspec rubocop rubocop-performance pry pry-byebug colored http
```

:heavy\_check\_mark: Si tu vois apparaître `xx gems installed`, c’est bon :+1:

:x: Si tu obtiens l’erreur suivante :

``` {.bash}
ERROR: While executing gem ... (TypeError)
incompatible marshal file format (can't be read)
format version 4.8 required; 60.33 given
```

Exécute la commande suivante :

``` {.bash}
rm -rf ~/.gemrc
```

Exécute à nouveau la commande pour installer les gems.

:warning: N’installe **JAMAIS** une gem avec `sudo gem install` ! Et ce même si tu tombes sur une réponse de Stack Overflow (ou du terminal) t’invitant à le faire.

Node.js
-------

[Node.js](https://nodejs.org/en/) est un programme d’exécution JavaScript qui permet d’exécuter du code JavaScript dans le terminal. On va l’installer avec [nvm](https://github.com/nvm-sh/nvm), un gestionnaire de versions pour Node.js.

Exécute la commande suivante dans ton terminal :

``` {.bash}
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | zsh
```

Redémarre ton terminal et exécute la commande suivante :

``` {.bash}
nvm -v
```

Tu devrais voir apparaître une version. Sinon, demande au/à la prof.

On va maintenant installer node :

``` {.bash}
nvm install 14.15
```

Une fois l’installation terminée, exécute :

``` {.bash}
node -v
```

:heavy\_check\_mark: Si tu vois apparaître `v14.15`, l’installation a réussi :+1:

:x: Sinon, **demande au/à la prof**

yarn
----

[`yarn`](https://yarnpkg.com/) est un gestionnaire de paquets, qui permet d’installer des bibliothèques JavaScript. On va l’installer :

Exécute la commande suivante dans le terminal :

``` {.bash}
npm install --global yarn
```

Redémarre ton terminal et exécute la commande suivante :

``` {.bash}
yarn -v
```

:heavy\_check\_mark: Si tu vois apparaître une version, c’est bon :+1:

:x: Sinon, **demande au/à la prof**

PostgreSQL
----------

Dans quelques semaines, on abordera les bases de données et le SQL, et tu auras besoin de [PostgreSQL](https://www.postgresql.org/), un système de gestion de base de données adapté à la production, puissant et open source.

On va l’installer.

Exécute les commandes suivantes :

``` {.bash}
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

``` {.bash}
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```

Vérification
------------

On va maintenant vérifier que tu as tout installé correctement .

Quitte toutes les fenêtres Terminal ouvertes, ouvres-en une nouvelle et exécute les commandes suivantes :

``` {.bash}
curl -Ls https://raw.githubusercontent.com/lewagon/setup/master/check.rb > _.rb && ruby _.rb && rm _.rb || rm _.rb
```

:check\_mark: Si tu vois apparaître en vert `Awesome! Your computer is now ready!`, c’est bon :+1:

:x: Sinon, **demande au/à la prof**.

Kitt
----

:warning: Si tu as reçu un e-mail du Wagon t’invitant à t’inscrire sur Kitt (notre plateforme de formation), tu peux passer cette étape. Suis les instructions contenues dans l’e-mail que tu as reçu, si tu ne l’as pas déjà fait.

Si tu n’es pas certain·e de ce que tu dois faire, suis [ce lien](https://kitt.lewagon.com/). Si tu es déjà connecté·e, tu peux passer cette section. Si tu n’es pas connecté·e, clique sur `Enter Kitt as a Student`. Si tu réussis à te connecter, tu peux passer cette étape. Sinon, demande au/à la prof si tu aurais dû recevoir un e-mail ou si tu dois suivre les instructions ci-dessous.

Inscris-toi en tant qu’alumni du Wagon sur [kitt.lewagon.com/onboarding](http://kitt.lewagon.com/onboarding). Sélectionne ton batch, connecte-toi avec GitHub et renseigne toutes tes informations.

Ton prof vérifiera ensuite avec toi que tu fais bien partie de ce batch. Tu peux lui demander de vérifier dès que tu as fini de remplir le formulaire d’inscription.

Une fois que le prof a vérifié ton profil, consulte ta messagerie. Tu devrais avoir reçu 2 e-mails :

-   un de Slack, t’invitant à rejoindre la communauté Slack des anciens étudiants du Wagon (où tu pourras discuter avec tes amis et tous les anciens élèves). Clique sur **Devenir membre** et renseigne toutes les informations ;
-   un de GitHub, t’invitant à rejoindre l’équipe `lewagon`. **Accepte** pour accéder aux cours.

Slack
-----

### Installation

[Télécharge l’application Slack](https://slack.com/intl/fr-fr/help/articles/212924728-T%C3%A9l%C3%A9charger-Slack-pour-Linux--version-b%C3%AAta-) et installe-la.

### Paramètres

Lance l’application et connecte-toi à l’organisation `lewagon-alumni`.

Pense à **télécharger une photo de profil** :point\_down:

![Comment télécharger une photo de profil sur Slack](images/slack_profile_picture.gif)

L’idée est de laisser Slack ouvert toute la journée pour partager des liens utiles / demander de l’aide / décider où aller manger, etc.

On va vérifier que tout fonctionne correctement ; pour cela, on va tester ta caméra et ton micro :

-   Ouvre l’application Slack
-   Dans la barre de message de n’importe quel channel, saisis `/call --test` et appuie sur `ENTER`
-   Clique sur le bouton vert « Démarrer le test »

![Vérifier le fonctionnement du microphone et de la webcam avec Slack](images/slack_call_test.png)

:heavy\_check\_mark: Une fois le test terminé, tu devrais voir apparaître des messages de succès en vert, au moins pour ton micro et ta caméra. :+1:

:x: Sinon, **demande au/à la prof**.

Tu peux également installer l’application Slack sur ton téléphone et te connecter à `lewagon-alumni` !

Paramètres Ubuntu
-----------------

### Installer le codec vidéo H264

Sur notre plateforme pédagogique (Kitt, que tu découvriras bientôt), on propose des vidéos. Par défaut, Firefox sur Linux ne peut pas les lire, car elles utilisent un codec qui n’est pas pris en charge (H264). Pour pouvoir lire ces vidéos, tu dois exécuter la commande suivante :

``` {.bash}
sudo apt install libavcodec-extra -y
```

### Installer des outils de terminal utiles

`tree` est un outil pratique qui permet de visualiser une arborescence de dossiers à l’intérieur du terminal.

`ncdu` est un utilitaire de disque à interface texte.

`htop` est un visualiseur de processus interactif.

`tig` est une interface en mode texte pour `git`.

``` {.bash}
sudo apt install tree ncdu htop tig
```

### inotify Ubuntu

Ubuntu surveille toutes les modifications apportées à tes dossiers ; pour cela, il utilise inotify.
Par défaut, la limite Ubuntu est fixée à 8 192 fichiers surveillés.

La programmation implique de travailler avec un grand nombre de fichiers ; on doit donc relever cette limite.
Dans ton terminal, exécute :

``` {.bash}
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

### Épingler des applications à ton Dock

Tu utiliseras très souvent la plupart des applications que tu as installées aujourd’hui. Épingle-les pour y accéder en un seul clic !

Pour épingler une application à ton Dock, lance l’application, fais un clic droit sur l’icône dans le Dock pour faire apparaître le menu contextuel et choisis « Ajouter aux favoris ».

![Comment épingler une application au Dock dans Ubuntu](images/ubuntu_dock.png)

Tu dois épingler :

-   ton terminal
-   ton explorateur de fichiers
-   VS Code
-   ton navigateur Internet
-   Slack
-   Zoom

La configuration est terminée !
-------------------------------

Ton ordinateur est prêt pour [la formation Développement Web du Wagon] (https://www.lewagon.com/web-development-course/full-time) :muscle: :clap:

Profite du bootcamp, tu vas assurer :rocket:

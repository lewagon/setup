# Instructions de configuration

Les instructions ci-dessous vont te permettre de configurer ton ordinateur pour [la formation Développement Web du Wagon](https://www.lewagon.com/web-development-course/full-time).

**Lis-les attentivement et exécute toutes les commandes dans l’ordre suivant**. En cas de blocage, n’hésite pas à demander au prof :raising_hand:

C’est parti :rocket:


## Zoom

Pour interagir quand on ne sera pas dans la même pièce, on utilisera [Zoom](https://zoom.us), un outil de visioconférence.

:warning: Si Zoom est déjà installé sur ton ordinateur, vérifie qu’il s’agit au moins de la version **5.6**.

Va sur [zoom.us/download](https://zoom.us/download).

Sous **Client Zoom**, clique sur le bouton **Télécharger**.

Ouvre le fichier que tu viens de télécharger pour installer l’application.

Ouvre l’application Zoom.

Si tu as un Mac avec un processeur Apple Silicon, [on te demande d'installer Rosetta](https://support.apple.com/en-us/HT211861). Clique sur installer, puis tape ton nom d'utilisateur et ton mot de passe pour autoriser l'installation.

![Installer Rosetta](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macos/Big-Sur/macos-big-sur-software-update-rosetta-alert.jpg)

Si tu as déjà un compte Zoom, connecte-toi avec tes identifiants.

Sinon, clique sur le lien **Inscrivez-vous, c’est gratuit** :

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


## Comment quitter des applications sur un Mac

Cliquer sur la petite croix rouge dans le coin supérieur gauche de la fenêtre d’une application sur un Mac **ne permet pas vraiment de quitter l’application**, mais seulement de fermer une fenêtre active. Pour *vraiment* quitter une application, appuie sur `Cmd + Q` lorsque l’application est active, ou clique sur `APP_NAME` -\> `Quitter` dans la barre de menu.

![Quitter le terminal sur macOS](images/macos_quit.png)

Pendant le processus de configuration, on te demandera de **quitter et rouvrir** des applications plusieurs fois ; assure-toi de le faire correctement :pray:

## Outils de ligne de commande

Ouvre un nouveau terminal, copie-colle la commande suivante et appuie sur `ENTRÉE` :

```bash
xcode-select --install
```

Si tu vois apparaître le message suivant, passe directement à l’étape suivante.

```bash
# command line tools are already installed, use "Software Update" to install updates
```

Sinon, une nouvelle fenêtre s’ouvrira, te demandant si tu souhaites installer certains logiciels : clique sur « Installer » et patiente.

![Installer xcode-select sur macOS](images/macos_xcode_select_install.png)

:heavy_check_mark: Si tu vois apparaître le message « Le logiciel a été installé », alors c’est bon :+1:

:x: Si la commande `xcode-select --install` échoue, réessaie. Les serveurs Apple sont parfois saturés.

:x: Si tu vois apparaître le message « Xcode is not currently available from the Software Update server », tu dois mettre à jour le catalogue de mise à jour de logiciels :

```bash
sudo softwareupdate --clear-catalog
```

Une fois la mise à jour effectuée, réessaie d’installer le logiciel.


## Homebrew

[Homebrew](http://brew.sh/) est un gestionnaire de paquets : un logiciel servant à installer d’autres logiciels à partir de la ligne de commande. Installons-le !

Ouvre un terminal et exécute :

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

On te demandera de confirmer (appuie sur `ENTRÉE`) et de saisir ton **mot de passe de compte utilisateur macOS** (celui que tu utilises pour [te connecter](https://support.apple.com/en-gb/HT202860) lorsque tu redémarres ton MacBook).

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `ENTRÉE`.

Si tu as déjà Homebrew, le système te l’indiquera. Continue.

Installe ensuite quelques logiciels utiles :

```bash
brew update
```

Si tu vois apparaître une erreur `/usr/local must be writable`, exécute simplement :

```bash
sudo chown -R $USER:admin /usr/local
brew update
```

Message d’erreur ou pas, exécute la commande suivante dans le terminal (tu peux copier-coller toutes les lignes en une seule fois).

```bash
brew upgrade git         || brew install git
brew upgrade gh          || brew install gh
brew upgrade wget        || brew install wget
brew upgrade imagemagick || brew install imagemagick
brew upgrade jq          || brew install jq
brew upgrade openssl     || brew install openssl
```


## Visual Studio Code

### Installation

On va maintenant installer l’éditeur de texte [Visual Studio Code](https://code.visualstudio.com).

Copie (`Cmd` + `C`) la commande ci-dessous, puis colle-la dans ton terminal (`Cmd` + `V`) :

```bash
brew install --cask visual-studio-code
```

Puis lance VS Code en exécutant la commande suivante dans ton terminal :

```bash
code
```

:heavy_check_mark: Si une fenêtre VS Code s’ouvre, c’est bon. :+1:

:x: Sinon, **demande au prof**.


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
code --install-extension Rubymaniac.vscode-paste-and-indent
```

Voici la liste des extensions que tu es en train d'installer :
- [Sublime Text Keymap and Settings Importer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)
- [VSCode Great Icons](https://marketplace.visualstudio.com/items?itemName=emmanuelbeziat.vscode-great-icons)
- [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
- [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Paste and Indent](https://marketplace.visualstudio.com/items?itemName=Rubymaniac.vscode-paste-and-indent)


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


## Thème du terminal macOS

Lance un terminal, clique sur `Terminal > Preferences`, puis sélectionne le thème « Pro » comme profil par défaut.

![Définir le thème Pro pour le terminal macOS](images/macos_terminal_pro.png)

**Quitte et redémarre** ton terminal ; tu devrais maintenant voir apparaître un fond noir, plus agréable à l’œil.


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

:x: Sinon, [reconnecte-toi à GitHub](https://github.com/lewagon/setup/blob/master/macos.fr.md#github-cli) avant d'exécuter cette commande à nouveau :point_up:.

### Programme d'installation git

Exécute le programme d’installation de `git` :

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh git_setup.sh
```

:point_up: On te **demandera** de fournir ton nom (`FirstName LastName`) et ton adresse e-mail.

:warning: Tu **dois** saisir l’une des adresses e-mail indiquées ci-dessus avec la commande `gh api ...` précédente. Sinon, Kitt ne pourra pas suivre tes progrès.

**Réinitialise** ton terminal en exécutant :

```bash
exec zsh
```


## rbenv

On va maintenant installer [`rbenv`](https://github.com/sstephenson/rbenv), un logiciel qui permet d’installer et de gérer des environnements `ruby`.

Pour commencer, tu dois nettoyer toute installation antérieure éventuelle de Ruby :

```bash
rvm implode && sudo rm -rf ~/.rvm
# Si tu vois apparaître « zsh: command not found: rvm », continue. Cela signifie que `rvm` n’est pas installé
# sur ton ordinateur, et c’est qu’on veut !

sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
```

:warning: Cette commande est susceptible de te demander ton mot de passe.

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `ENTRÉE`.

Dans le terminal, exécute :

```bash
brew uninstall --force rbenv ruby-build
exec zsh
```

Puis exécute ensuite :

```bash
brew install rbenv
```


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

**Réinitialise** ton ton terminal et vérifie ta version de Ruby :

```bash
exec zsh
```

Puis exécute :

```bash
ruby -v
```

:heavy_check_mark: Si tu vois apparaître un message commençant par `ruby 3.0.3p`, tu peux continuer :+1:

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

Exécute les commandes suivantes dans ton terminal :

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh
exec zsh
```

Puis exécute la commande suivante :

```bash
nvm -v
```

Tu devrais voir apparaître une version. Sinon, demande au prof.

On va maintenant installer node :

```bash
nvm install 16.13.1
```

Une fois l’installation terminée, exécute :

```bash
node -v
```

Si tu vois apparaître `v16.13.1`, l'installation a réussi :heavy_check_mark: Tu peux alors exécuter :

```bash
nvm cache clear
```

:x: Sinon, **demande au prof**


## yarn

[`yarn`](https://yarnpkg.com/) est un gestionnaire de paquets, qui permet d’installer des bibliothèques JavaScript. Installons-le :

Exécute les commandes suivantes dans le terminal :

```bash
npm install --global yarn
exec zsh
```

Puis exécute la commande suivante :

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
brew install postgresql
brew services start postgresql
```

Une fois que c’est fait, on va vérifier que tout a bien fonctionné :

```bash
psql -d postgres
```

Si tu vois apparaître un nouveau message comme celui-ci, c’est bon !

```bash
psql (13.3)
Type "help" for help.

postgres=#
```

Pour quitter PostgreSQL, saisis `\q` puis `ENTRÉE`.


## Vérification

On va maintenant vérifier que tu as tout installé correctement.

Dans ton terminal, exécute la commande suivante :

```bash
exec zsh
```

Puis exécute :

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

[Télécharge l’application Slack](https://itunes.apple.com/fr/app/slack/id803453959?mt=12) et installe-la.

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


## Paramètres de macOS

### Sécurité

Tu dois obligatoirement protéger ta session avec un mot de passe. Si ce n’est pas déjà le cas, va dans ` > Préférences système > Utilisateurs & groupes` et modifie le mot de passe de ton compte. Va aussi dans ` > Préférences système > Sécurité > Général` et configure la sécurité de façon à ce que ton mot de passe te soit demandé `5 secondes` après la mise en veille ou le démarrage de l’économiseur d’écran.

Tu peux également aller dans ` > Préférences système > Mission Control` et cliquer sur le bouton `Hot Corners` en bas à gauche. Choisis le coin inférieur droit pour démarrer l’économiseur d’écran. De cette façon, lorsque tu quitteras ton bureau, tu pourras rapidement verrouiller ton écran en plaçant ta souris dans le coin inférieur droit. Cinq secondes plus tard, ton Mac sera verrouillé et tu devras fournir ton mot de passe pour accéder à ta session.

### Clavier

Au fur et à mesure de ta formation de programmeur, tu comprendras que quitter le clavier fait perdre beaucoup de temps ; tu vas donc chercher à limiter ton utilisation du pavé tactile ou de la souris. Voici quelques astuces macOS pour t’aider.

#### Vitesse du clavier

Va dans ` > Préférences système > Clavier`. Définis `Répétition de touches` sur la position la plus rapide (à droite) et `Pause avant répétition` sur la position la plus courte (à droite).

#### Accès complet au clavier

Va dans ` > Préférences système > Clavier`. Clique sur le troisième onglet `Raccourcis`. En bas de la fenêtre, clique sur le bouton radio `tous les contrôles`. De cette façon, lorsque tu verras apparaître une popup avec plusieurs options, tu pourras saisir `ENTRÉE` pour confirmer ou `SPACE` pour annuler. Si tu as plus de deux options, tu peux utiliser la touche de tabulation pour aller et venir entre elles.

#### macOS pour les hackers

[Lis ce script](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) et sélectionne ce qui t’intéresse. Par exemple, tu peux saisir ce qui suit dans le terminal :

```bash
# Agrandir la fenêtre de sauvegarde par défaut
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Enregistrer les captures d’écran sur le bureau (ou ailleurs)
defaults write com.apple.screencapture location "${HOME}/Desktop"

# etc..
```

### Épingler des applications à ton Dock

Tu utiliseras très souvent la plupart des applications que tu as installées aujourd’hui. Épingle-les à ton Dock pour y accéder en un seul clic !

Pour épingler une application à ton Dock, lance l’application, fais un clic droit sur l’icône dans la barre des tâches pour faire apparaître le menu contextuel et choisis « Options », puis « Garder dans le Dock ».

![Comment épingler une application à la barre des tâches dans macOS](images/macos_dock.png)

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



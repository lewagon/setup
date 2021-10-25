## Paramètres macOS

### Sécurité

Tu dois obligatoirement protéger ta session avec un mot de passe. Si ce n’est pas déjà le cas, va à ` > System Preferences > Users & Groups` et modifie le mot de passe de ton compte. Va aussi à ` > System Preferences > Security > General` et configure la sécurité de façon à ce que ton mot de passe te soit demandé `5 secondes` après la mise en veille ou le démarrage de l’économiseur d’écran.

Tu peux également aller à ` > System Preferences > Mission Control` et cliquer sur le bouton `Hot Corners` en bas à gauche. Choisis le coin inférieur droit pour démarrer l’économiseur d’écran. De cette façon, lorsque tu quitteras ton bureau, tu pourras rapidement verrouiller ton écran en plaçant ta souris dans le coin inférieur droit. Cinq secondes plus tard, ton Mac sera verrouillé et tu devras fournir ton mot de passe pour accéder à ta session.

### Clavier

Au fur et à mesure de ta formation de programmeur, tu comprendras que quitter le clavier fait perdre beaucoup de temps ; tu vas donc chercher à limiter ton utilisation du pavé tactile ou de la souris. Voici quelques astuces macOS pour t’aider.

#### Vitesse du clavier

Va à  > Préférences système > Clavier. Définis `Répétition de touches` sur la position la plus rapide (à droite) et `Pause avant répétition` sur la position la plus courte (à droite).

#### Accès complet au clavier

Va à  > Préférences système > Clavier. Clique sur le troisième onglet (Raccourcis). En bas de la fenêtre, clique sur le bouton radio `tous les contrôles`. De cette façon, lorsque tu verras apparaître une popup avec plusieurs options, tu pourras saisir `ENTRÉE` pour confirmer ou `SPACE` pour annuler. Si tu as plus de deux options, tu peux utiliser la touche de tabulation pour aller et venir entre elles.

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

-   ton terminal
-   ton explorateur de fichiers
-   VS Code
-   ton navigateur Internet
-   Slack
-   Zoom

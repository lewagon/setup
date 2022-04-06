## Comment quitter des applications sur un Mac

Cliquer sur la petite croix rouge dans le coin supérieur gauche de la fenêtre d’une application sur un Mac **ne permet pas vraiment de quitter l’application**, mais seulement de fermer une fenêtre active. Pour *vraiment* quitter une application, appuie sur `Cmd + Q` lorsque l’application est active, ou clique sur `APP_NAME` -\> `Quitter` dans la barre de menu.

![Quitter le terminal sur macOS](images/macos_quit.png)

Pendant le processus de configuration, on te demandera de **quitter et rouvrir** des applications plusieurs fois ; assure-toi de le faire correctement :pray:

## Outils de ligne de commande

Ouvre un nouveau terminal, copie-colle la commande suivante et appuie sur `Enter` :

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

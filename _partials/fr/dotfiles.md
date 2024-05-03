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

:x: Sinon, [reconnecte-toi à GitHub](https://github.com/lewagon/setup/blob/master/<OS.md>#github-cli) avant d'exécuter cette commande à nouveau :point_up:.

### Programme d'installation git

Exécute le programme d’installation de `git` :

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh git_setup.sh
```

:point_up: On te **demandera** de fournir ton nom (`FirstName LastName`) et ton adresse e-mail.

:warning: Tu **dois** saisir l’une des adresses e-mail indiquées ci-dessus avec la commande `gh api ...` précédente. Sinon, Kitt ne pourra pas suivre tes progrès. 💡 Sélectionnez l'adresse `@users.noreply.github.com` si vous ne souhaitez pas que votre adresse e-mail apparaisse dans les dépôts publics auxquels vous pourriez contribuer.

**Réinitialise** ton terminal en exécutant :

```bash
exec zsh
```

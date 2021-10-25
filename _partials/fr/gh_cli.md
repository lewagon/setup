## GitHub CLI

LI est l’acronyme de [Command-line Interface](https://en.wikipedia.org/wiki/Command-line_interface), interface en ligne de commande.

Dans cette section, tu vas installer [GitHub CLI](https://cli.github.com/) pour réaliser des actions utiles avec des données GitHub directement depuis le terminal.

Elle doit déjà être installée sur ton ordinateur grâce aux commandes précédentes.

Pour **te connecter**, commence par copier-coller la commande suivante dans ton terminal :

:warning: **NE modifie PAS `email`**

```bash
gh auth login -s 'user:email' -w
```

Tu obtiendras le résultat suivant :

```bash
! Commence par copier ton code à usage unique : 0EF9-D015
- Appuie sur Entrée pour ouvrir github.com dans ton navigateur…
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

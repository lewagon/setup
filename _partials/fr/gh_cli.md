## GitHub CLI

CLI est l’acronyme de [Command-line Interface](https://en.wikipedia.org/wiki/Command-line_interface), interface en ligne de commande.

Dans cette section, tu vas installer [GitHub CLI](https://cli.github.com/) pour interagir avec GitHub directement depuis le terminal.

Elle doit déjà être installée sur ton ordinateur grâce aux commandes précédentes.

Pour **te connecter**, commence par copier-coller la commande suivante dans ton terminal :

:warning: **NE modifie PAS `email`**

```bash
gh auth login -s 'user:email' -w
```

gh va te poser quelques questions :

`What is your preferred protocol for Git operations?` Avec les flèches, choisis `SSH` et appuie sur `Enter`. SSH est un protocole pour s'authentifier en utilisant des clés SSH au lieu de la fameuse paire nom d'utilisateur et mot de passe.

`Generate a new SSH key to add to your GitHub account?` Appuie sur `Enter` pour demander à gh de générer les clés SSH pour toi.

Si tu as déjà des clés SSH, tu verras à la place `Upload your SSH public key to your GitHub account?` Avec les flèches, sélectionne le chemain de ta clé publique et appuie sur `Enter`.

`Enter a passphrase for your new SSH key (Optional)`. Saisis un mot de passe dont tu te souviendras. Ce mot de passe sert à protéger ta clé privée enregistrée sur ton disque sur. Ensuite, appuie sur `Enter`.

`Title for your SSH key`. Tu peux laisser ce qui est proposé par défaut, à savoir "GitHub CLI", appuie sur `Enter`.

Tu obtiendras le résultat suivant :

```bash
! First copy your one-time code: 0EF9-D015
- Press Enter to open github.com in your browser...
```

Sélectionne et copie le code (`0EF9-D015` dans l’exemple), puis appuie sur `Enter`.

Ton navigateur s’ouvrira et te demandera d’autoriser GitHub CLI à utiliser ton compte GitHub. Accepte et patiente un instant.

Reviens au terminal, appuie à nouveau sur `Enter` et voilà.

Pour vérifier que tu es bien connecté, saisis :

```bash
gh auth status
```

:heavy_check_mark: Si tu vois apparaître `Logged in to github.com as <YOUR USERNAME>`, alors c’est bon :+1:

:x: Sinon, **demande au prof**.

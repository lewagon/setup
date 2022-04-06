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

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `Enter`.

### Installation de GitHub CLI

On va maintenant installer la [CLI officielle de GitHub](https://cli.github.com) (Command Line Interface, interface en ligne de commande). Il s’agit d’un logiciel qui te permet d’interagir avec ton compte GitHub via la ligne de commande.

Copie-colle les commandes suivantes dans ton terminal et saisis ton mot de passe s’il t’est demandé :

```bash
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install -y gh
```

Pour vérifier que `gh` a bien été installé sur ta machine, tu peux exécuter :

```bash
gh --version
```

:heavy_check_mark: Si tu vois apparaître `gh version X.Y.Z (YYYY-MM-DD)`, c’est bon :+1:

:x: Sinon, **demande au la prof**.

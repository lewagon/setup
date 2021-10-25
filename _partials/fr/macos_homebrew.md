## Homebrew

[Homebrew](http://brew.sh/) est un gestionnaire de paquets : un logiciel servant à installer d’autres logiciels à partir de la ligne de commande. On va l’installer.

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

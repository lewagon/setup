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

:warning: Lorsque tu saisiras ton mot de passe, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ton mot de passe et sa longueur. Saisis simplement ton mot de passe, puis appuie sur `Enter`.

Dans le terminal, exécute :

```bash
brew uninstall --force rbenv ruby-build
exec zsh
```

Puis exécute ensuite :

```bash
brew install rbenv
```

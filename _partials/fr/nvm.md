## Node.js

[Node.js](https://nodejs.org/en/) est un programme d’exécution JavaScript qui permet d’exécuter du code JavaScript dans le terminal. On va l’installer avec [nvm](https://github.com/nvm-sh/nvm), un gestionnaire de versions pour Node.js.

Exécute la commande suivante dans ton terminal :

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v<NVM_VERSION>/install.sh | zsh
```

Redémarre ton terminal et exécute la commande suivante :

```bash
nvm -v
```

Tu devrais voir apparaître une version. Sinon, demande au prof.

On va maintenant installer node :

```bash
nvm install <NODE_VERSION>
```

Une fois l’installation terminée, exécute :

```bash
node -v
```

Si tu vois apparaître `v<NODE_VERSION>`, l'installation a réussi :heavy_check_mark: Tu peux alors exécuter :

```bash
nvm cache clear
```

:x: Sinon, **demande au prof**

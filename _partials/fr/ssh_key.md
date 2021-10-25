## Clé SSH

### Génération

On doit générer des clés SSH qui serviront à t’authentifier dans GitHub. Vois ça comme un moyen de te connecter, mais différent de la combinaison courante nom d’utilisateur/mot de passe.

Si tu as déjà généré des clés que tu utilises avec d’autres services, tu peux passer cette étape.

Ouvre un terminal et copie-colle cette commande, en remplaçant l’adresse e-mail par **la tienne** (celle que tu as utilisée pour créer ton compte GitHub).

```bash
mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -C "TYPE_YOUR_EMAIL@HERE.com"
```

On te demandera de fournir des informations. Appuie simplement sur Entrée jusqu’à ce qu’une **phrase secrète** te soit demandée.

:warning: Saisis une phrase secrète dont tu te souviendras. Ce mot de passe sert à protéger tes clés privées enregistrées sur ton disque sur.

:warning: Lorsque tu saisiras ta phrase secrète, rien ne s’affichera à l’écran ; **c’est normal**. Il s’agit d’une mesure de sécurité permettant de masquer ta phrase secrète, mais aussi sa longueur. Saisis simplement ta phrase secrète, puis appuie sur `ENTRÉE`.

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

## rbenv

Vamos instalar o [`rbenv`](https://github.com/sstephenson/rbenv), um software para instalar e gerenciar ambientes `ruby`.

Primeiro, precisamos limpar qualquer instalação anterior do Ruby que você possa ter:

```bash
rvm implode && sudo rm -rf ~/.rvm
# If you got "zsh: command not found: rvm", carry on. It means `rvm` is not
# on your computer, that's what we want!

sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
```

:warning: Este comando pode solicitar sua senha.

:warning: Quando você digita sua senha, nada aparecerá na tela, **isso é normal**. Este é um recurso de segurança para mascarar não apenas sua senha como um todo, mas também seu comprimento. Basta digitar sua senha e quando terminar, pressione `Enter`.

No terminal, execute:

```bash
brew uninstall --force rbenv ruby-build
```

```bash
exec zsh
```

Então rode:

```bash
brew install rbenv
```

## Homebrew

[Homebrew](http://brew.sh/) é um gerenciador de pacotes: é um software usado para instalar outros softwares a partir da linha de comando. Vamos instalá-lo!

Abra um terminal e execute:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Isso solicitará sua confirmação (pressione `Enter`) e sua **senha da conta de usuário do macOS** (aquela que você usa para [fazer login](https://support.apple.com/en-gb/HT202860) quando você reinicia seu Macbook).

:warning: Quando você digita sua senha, nada aparecerá na tela, **isso é normal**. Este é um recurso de segurança para mascarar não apenas sua senha como um todo, mas também seu comprimento. Basta digitar sua senha e quando terminar, pressione `Enter`.

:warning: Se você vir este aviso :point_down:, execute os dois comandos na seção `Próximas etapas` para adicionar o Homebrew ao seu PATH:

![Aviso de instalação do macOS Homebrew](images/macos_homebrew_warning.png)

```bash
# ⚠️ Execute esses comandos apenas se você viu este aviso ☝
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Se você já tem o Homebrew, ele lhe dirá, tudo bem, vá em frente.

Em seguida, instale algum software útil:

```bash
brew update
```

Se você receber um erro `/usr/local deve ser gravável`, basta executar isto:

```bash
sudo chown -R $USER:admin /usr/local
```

```bash
brew update
```

Continue executando o seguinte no terminal (você pode copiar/colar todas as linhas de uma vez).

```bash
brew upgrade git || brew install git
```

```bash
brew upgrade gh || brew install gh
```

```bash
brew upgrade wget || brew install wget
```

```bash
brew upgrade imagemagick || brew install imagemagick
```

```bash
brew upgrade jq || brew install jq
```

```bash
brew upgrade openssl || brew install openssl
```

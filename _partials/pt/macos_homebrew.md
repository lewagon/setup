## Homebrew

[Homebrew](http://brew.sh/) é um gerenciador de pacotes: é um software usado para instalar outros softwares a partir da linha de comando. Vamos instalá-lo!

Abra um terminal e execute:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Isso solicitará sua confirmação (pressione `Enter`) e sua **senha da conta de usuário do macOS** (aquela que você usa para [fazer login](https://support.apple.com/en-gb/HT202860) quando você reinicia seu Macbook).

:warning: Quando você digita sua senha, nada aparecerá na tela, **isso é normal**. Este é um recurso de segurança para mascarar não apenas sua senha como um todo, mas também seu comprimento. Basta digitar sua senha e quando terminar, pressione `Enter`.

Se você já tem o Homebrew, ele lhe dirá, tudo bem, vá em frente.

Quando a instalação do Homebrew terminar, execute estes dois comandos para adicioná-lo ao seu `PATH`:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Certifique-se de que está usando a versão mais recente:

```bash
brew update
```

Em seguida, instale alguns softwares úteis (você pode copiar/colar todas as linhas de uma vez):

```bash
brew upgrade git         || brew install git
brew upgrade gh          || brew install gh
brew upgrade wget        || brew install wget
brew upgrade imagemagick || brew install imagemagick
brew upgrade jq          || brew install jq
brew upgrade openssl     || brew install openssl
```

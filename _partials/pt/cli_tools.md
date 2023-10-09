## Ferramentas de linha de comando

###Zsh e Git

Em vez de usar o `bash` [shell] padrão (https://en.wikipedia.org/wiki/Shell_(computing)), usaremos `zsh`.

Também usaremos [`git`](https://git-scm.com/), um software de linha de comando usado para controle de versão.

Vamos instalá-los, juntamente com outras ferramentas úteis:
- Abra um **terminal Ubuntu**
- Copie e cole os seguintes comandos:

```bash
sudo apt update
```

```bash
sudo apt install -y curl git imagemagick jq unzip vim zsh tree
```

Esses comandos solicitarão sua senha: digite-a.

:warning: Quando você digita sua senha, nada aparecerá na tela, **isso é normal**. Este é um recurso de segurança para mascarar não apenas sua senha como um todo, mas também seu comprimento. Basta digitar sua senha e quando terminar, pressione `Enter`.

### Instalação da CLI do GitHub

Vamos agora instalar a [CLI oficial do GitHub](https://cli.github.com) (interface de linha de comando). É um software usado para interagir com sua conta GitHub através da linha de comando.

Em seu terminal, copie e cole os seguintes comandos e digite sua senha, se solicitado:

```bash
sudo apt remove -y gitsome # gh command can conflict with gitsome if already installed
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
```

```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
```

```bash
sudo apt update
```

```bash
sudo apt install -y gh
```

Para verificar se `gh` foi instalado com sucesso em sua máquina, você pode executar:

```bash
gh --version
```

:heavy_check_mark: Se você vir `gh versão X.Y.Z (AAAA-MM-DD)`, está pronto para prosseguir :+1:

:x: Caso contrário, por favor **entre em contato com um professor**

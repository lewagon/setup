## CLI do GitHub

CLI é o acrônimo de [Interface de linha de comando](https://en.wikipedia.org/wiki/Command-line_interface).

Nesta seção, usaremos [GitHub CLI](https://cli.github.com/) para interagir com o GitHub diretamente do terminal.

Usaremos o GitHub CLI (`gh`) para conectar ao GitHub usando *SSH*, um protocolo para fazer login usando chaves SSH em vez do conhecido par nome de usuário/senha.


Ele já deve estar instalado no seu computador a partir dos comandos anteriores.

Primeiro, para **fazer login**, copie e cole o seguinte comando em seu terminal:

:warning: **NÃO edite o `email`**

```bash
gh auth login -s 'user:email' -w --git-protocol ssh
```

`gh` fará algumas perguntas:

- `Generate a new SSH key to add to your GitHub account?` Pressione `Enter` para pedir ao gh para gerar as chaves SSH para você.

  Se você já possui chaves SSH, verá `Upload your SSH public key to your GitHub account?` Com as setas, selecione o caminho do arquivo de sua chave pública e pressione `Enter`.

- `Enter a passphrase for your new SSH key (Optional)`. Digite algo que você deseja e que você lembrará. É uma senha para proteger sua chave privada armazenada no disco rígido. Em seguida, pressione `Enter`.

- `Title for your SSH key`. Você pode deixá-lo no "GitHub CLI" proposto, pressione `Enter`.

Você obterá então a seguinte saída:

```bash
! First copy your one-time code: 0EF9-D015
- Press Enter to open github.com in your browser...
```

Selecione e copie o código (`0EF9-D015` no exemplo) e pressione `Enter`.

Seu navegador será aberto e solicitará que você autorize o GitHub CLI a usar sua conta GitHub. Aceite e espere um pouco.

Volte ao terminal, pressione `Enter` novamente e pronto.

Para verificar se você está conectado corretamente, digite:

```bash
gh auth status
```

:heavy_check_mark: Se você estiver `Logado no github.com como <SEU NOME DE USUÁRIO> `, então tudo bem :+1:

:x: Caso contrário, **entre em contato com um professor**.

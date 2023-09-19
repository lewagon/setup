## Chips Apple Silicon

Se você comprou seu computador depois do final de 2020, é provável que ele tenha um novo chip de silício da Apple em vez de um processador Intel: vamos descobrir.

Abra uma nova janela de terminal em Aplicativos > Utilitários ou pesquise-a com [Spotlight](https://support.apple.com/en-gb/HT204014):

![Abra Terminal no macOS](images/macos_open_terminal.png)

Copie e cole o seguinte comando no terminal e pressione `Enter` para executar.

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lewagon/setup/master/utils/macos_list_processor_type.sh)"
```

☝️ O resultado do comando deve indicar se o seu computador usa Apple Silicon.

Se o seu computador usa Apple Silicon, expanda o parágrafo abaixo e leia-o. Caso contrário, ignore-o.

<details>
  <summary>👉Configuração para Apple Silicon 👈</summary>

### Desinstalar o Homebrew

Precisamos desinstalar o Homebrew caso uma versão nativa tenha sido instalada.

Execute o seguinte comando no terminal:

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
```

Se o brew não estiver instalado, você receberá a mensagem `brew: comando não encontrado!`

### Configurar Terminal para Rosetta

Abra o aplicativo Finder (ou pesquise-o com o [Spotlight](https://support.apple.com/en-gb/HT204014)).

Vá para Aplicativos > Utilitários.

Duplique o aplicativo de terminal (selecione-o e, em seguida, `Cmd` + `C`, `Cmd` + `V`) e renomeie uma cópia como Terminal Rosetta.

Pressione `Cmd` + `I` no aplicativo Terminal Rosetta e marque a caixa "Abrir usando Rosetta".

⚠️ A partir de agora durante o bootcamp, sempre que for solicitado a abrir um Terminal, você usará o aplicativo **Terminal Rosetta**.

</details>

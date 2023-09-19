## Uma observação sobre como encerrar aplicativos em um Mac

Clicar na pequena cruz vermelha no canto superior esquerdo da janela do aplicativo em um Mac **não o encerra**, apenas fecha uma janela ativa. Para sair do aplicativo _de verdade_ pressione `Cmd + Q` quando o aplicativo estiver ativo ou navegue até `APP_NAME` -> `Quit` na barra de menu.

![Sair do Terminal no macOS](images/macos_quit.png)

Durante esta configuração, você será solicitado a **sair e reabrir** os aplicativos várias vezes. Certifique-se de fazer isso corretamente :pray:

## Ferramentas de linha de comando

Abra um novo terminal, copie e cole o seguinte comando e pressione `Enter`:

```bash
xcode-select --install
```

Se você receber a mensagem a seguir, basta pular esta etapa e ir para a próxima.

```bash
# ferramentas de linha de comando já estão instaladas, use "Atualização de Software" para instalar atualizações
```

Caso contrário, abrirá uma janela perguntando se deseja instalar algum software: clique em “Instalar” e aguarde.


![Instale o xcode-select no macOS](images/macos_xcode_select_install.png)

:heavy_check_mark: Se você vir a mensagem "O software foi instalado", tudo bem :+1:

:x: Se o comando `xcode-select --install` falhar, tente novamente: às vezes os servidores Apple ficam sobrecarregados.

:x: Se você vir a mensagem "O Xcode não está disponível no servidor de atualização de software", será necessário atualizar o catálogo de atualização de software:

```bash
sudo softwareupdate --clear-catalog
```

Feito isso, você pode tentar instalar novamente.

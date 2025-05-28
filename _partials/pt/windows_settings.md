## Configurações do Windows

### Troque arquivos entre Windows e Ubuntu

Precisamos de uma maneira fácil de transferir arquivos do Windows para o Ubuntu e vice-versa.

Para fazer isso, vamos criar atalhos para diretórios do Ubuntu no **File Explorer** do Windows:
- Abra o Windows File Explorer (ou use o atalho `WIN` + `E`)
- Na barra de endereços, digite `\\wsl$\` (ou `\\wsl$\Ubuntu` se não funcionar)
- Agora você tem acesso ao sistema de arquivos Ubuntu
- Mergulhe no sistema de arquivos Ubuntu para procurar diretórios de interesse
- Arraste as pastas desejadas para a barra de endereços para criar atalhos

![Como adicionar um atalho ao sistema de arquivos Ubuntu no Windows](images/windows_ubuntu_file_system_shortcut.gif)

### Abra o Windows File Explorer no terminal Ubuntu

Outra opção para mover arquivos é abrir o Windows **File Explorer** no terminal Ubuntu:
- Abra um terminal Ubuntu
- Vá para o diretório que deseja explorar
- Execute o comando `explorer.exe .` (alternativamente, use `wslview .`)
- Se você receber uma mensagem de erro de entrada e saída, execute `wsl --shutdown` em um Windows PowerShell e reabra um terminal Ubuntu

![Como iniciar o Windows Explorer a partir do terminal Ubuntu](images/windows_explorer_from_terminal.png)

### Encontre o seu caminho no sistema de arquivos Ubuntu

Você pode querer descobrir a localização exata de um diretório do Windows no sistema de arquivos Ubuntu ou vice-versa.

Para converter um caminho do Windows de e para um caminho do Ubuntu:
- Abra um terminal Ubuntu
- Use o comando `wslpath "C:\Program Files"` para traduzir um caminho do Windows em um caminho do Ubuntu
- Use o comando `wslpath -w "/home"` para traduzir um caminho do Ubuntu em um caminho do Windows
- Em particular, o comando `wslpath -w $(pwd)` retorna o caminho do Windows do diretório atual do Ubuntu

![Como acessar um caminho do Windows a partir do terminal Ubuntu](images/windows_path_from_terminal.png)

### Fixe aplicativos na sua barra de tarefas

Você usará a maioria dos aplicativos que instalou hoje com muita frequência. Vamos fixá-los na barra de tarefas para que estejam a apenas um clique de distância!

Para fixar um aplicativo na barra de tarefas, inicie o aplicativo, clique com o botão direito no ícone da barra de tarefas para abrir o menu de contexto e escolha “Fixar na barra de tarefas”.

![Como fixar um aplicativo na barra de tarefas do Windows](images/windows_taskbar.png)

Você deve fixar:
- Seu terminal
- Seu explorador de arquivos
- VS Code
- Seu navegador de Internet
- Slack

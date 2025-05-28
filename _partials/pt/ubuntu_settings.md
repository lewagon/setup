## Configurações do Ubuntu

### Instale o codec de vídeo H264

Na nossa plataforma pedagógica (Kitt, você vai descobrir em breve!), temos alguns vídeos. Por padrão, o Firefox no Linux não pode reproduzi-los porque eles usam um codec não suportado (H264). Para que esses vídeos funcionem para você, você precisa executar o seguinte:

```bash
sudo apt install libavcodec-extra -y
```

### Instale ferramentas de terminal úteis

`tree` é uma boa ferramenta para visualizar uma árvore de diretórios dentro do terminal:

`ncdu` é um utilitário de disco de interface baseado em texto.

`htop` é um visualizador de processos interativo.

`tig` é uma interface em modo texto para `git`.

```bash
sudo apt install tree ncdu htop tig
```

### Ubuntu inotify

O Ubuntu está sempre rastreando alterações em suas pastas e para isso usa o inotify.
Por padrão, o limite do Ubuntu é definido para 8.192 arquivos monitorados.

Como a programação envolve muitos arquivos, precisamos aumentar esse limite.
Em seu terminal, execute:

```bash
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

### Fixe aplicativos no seu dock

Você usará a maioria dos aplicativos que instalou hoje com muita frequência. Então, vamos fixá-los no seu dock para que fiquem a apenas um clique de distância!

Para fixar um aplicativo no seu dock, inicie o aplicativo, clique com o botão direito no ícone do dock para abrir o menu de contexto e escolha "Adicionar aos Favoritos".

![Como fixar um aplicativo no dock no Ubuntu](images/ubuntu_dock.png)

Você deve fixar:
- Seu terminal
- Seu explorador de arquivos
- VS Code
- Seu navegador de Internet
- Slack

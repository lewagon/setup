## Configurações do MacOS

### Segurança

É obrigatório que você proteja sua sessão com uma senha. Se ainda não for o caso, vá para ` > Preferências do Sistema > Usuários e Grupos` e altere a senha da sua conta. Você também deve ir para ` > Preferências do Sistema > Segurança > Geral`. Você deve exigir uma senha `5 segundos` após o início da suspensão ou da proteção de tela.

Você também pode ir para ` > Preferências do Sistema > Controle da Missão` e clicar no botão `Hot Corners` no canto inferior esquerdo. Escolha no canto inferior direito para iniciar o protetor de tela. Dessa forma, ao sair da mesa, você pode bloquear rapidamente a tela colocando o mouse no canto inferior direito. 5 segundos depois, seu Macbook estará bloqueado e solicitará uma senha para voltar à sessão.

### Teclado

Ao se tornar um programador, você entenderá que deixar o teclado leva muito tempo, então você vai querer minimizar o uso do trackpad ou do mouse. Aqui estão alguns truques no macOS para ajudá-lo a fazer isso.

#### Velocidade do teclado

Vá para ` > Preferências do Sistema > Teclado`. Defina `Key Repeat` para a posição mais rápida (à direita) e `Delay Until Repeat` para a posição mais curta (à direita).

#### macOS Para hackers

[Leia este script](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) e escolha algumas coisas que você acha que combinam com você. Por exemplo, você pode digitar no terminal este:

```bash
# Expanding the save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save screenshots to the Desktop (or elsewhere)
defaults write com.apple.screencapture location "${HOME}/Desktop"

# etc..
```

### Fixe aplicativos no seu dock

Você usará a maioria dos aplicativos que instalou hoje com muita frequência. Vamos fixá-los no seu dock para que fiquem a apenas um clique de distância!

Para fixar um aplicativo no seu dock, inicie o aplicativo, clique com o botão direito no ícone na barra de tarefas para abrir o menu de contexto e escolha "Opções" e depois "Manter no Dock".

![Como fixar um aplicativo na barra de tarefas do macOS](images/macos_dock.png)

Você deve fixar:
- Seu terminal
- Seu explorador de arquivos
- VS Code
- Seu navegador de Internet
- Slack
- Zoom

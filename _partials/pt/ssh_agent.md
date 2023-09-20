## Desativar prompt de senha SSH

Você não quer que sua senha seja solicitada sempre que se comunicar com um repositório distante. Então, você precisa adicionar o plugin `ssh-agent` ao `oh my zsh`:

Primeiro, abra o arquivo `.zshrc`:

```bash
code ~/.zshrc
```

Então:
- Identifique a linha que começa com `plugins=`
- Adicione `ssh-agent` no final da lista de plugins

:heavy_check_mark: Salve o arquivo `.zshrc` com `Ctrl` + `S` e feche seu editor de texto.

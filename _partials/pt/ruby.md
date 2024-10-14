## Ruby

### Instalação

Agora, você está pronto para instalar a versão mais recente do [ruby](https://www.ruby-lang.org/en/) e defini-la como a versão padrão.

Execute este comando, **demorará um pouco (5 a 10 minutos)**

```bash
rbenv install <RUBY_SETUP_VERSION>
```

Assim que a instalação do Ruby estiver concluída, execute este comando para informar ao sistema
para usar a versão <RUBY_SETUP_VERSION> por padrão.

```bash
rbenv global <RUBY_SETUP_VERSION>
```

**Reinicialize** seu terminal e verifique sua versão do Ruby:

```bash
exec zsh
```

Então corra:

```bash
ruby -v
```

:heavy_check_mark: Se você vir algo começando com `ruby <RUBY_SETUP_VERSION>` então você pode prosseguir :+1:

:x: Se não, **pergunte a um professor**

### Instalando algumas gems

<details>
  <summary>Se você estiver na <bold>China</bold> 🇨🇳 clique aqui</summary>

  :warning: Se você estiver na China, você deve atualizar a forma como instalaremos o gem com os seguintes comandos.

```bash
# Somente China!
fontes de gemas --remove https://rubygems.org/
fontes de gemas -a https://gems.ruby-china.com/
fontes de gemas -l
#***FONTES ATUAIS***
# https://gems.ruby-china.com/
# Ruby-china.com deve estar na lista agora
```
</details>

**Todos, na China ou não**, continuem aqui para instalar gems.

No mundo Ruby, chamamos bibliotecas externas de `gems`: são pedaços de código Ruby que você pode baixar e executar em seu computador. Vamos instalar alguns!

No seu terminal, copie e cole o seguinte comando:

```bash
gem install <GEMS>
```

:heavy_check_mark: Se você tiver `xx gems installed`, então tudo bem :+1:

:x: Se você encontrar o seguinte erro:

```bash
ERROR: While executing gem ... (TypeError)
incompatible marshal file format (can't be read)
format version 4.8 required; 60.33 given
```

Execute o seguinte comando:
```bash
rm -rf ~/.gemrc
```

Execute novamente o comando para instalar as gemas.

:warning: **NUNCA** instale uma gem com `sudo gem install`! Mesmo se você encontrar uma resposta do Stackoverflow (ou o terminal) solicitando que você faça isso.

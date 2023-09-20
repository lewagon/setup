## Node.js

[Node.js](https://nodejs.org/en/) é um tempo de execução JavaScript para executar código JavaScript no terminal. Vamos instalá-lo com [nvm](https://github.com/nvm-sh/nvm), um gerenciador de versões para Node.js.

Em um terminal, execute os seguintes comandos:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v<NVM_VERSION>/install.sh | zsh
```

```bash
exec zsh
```

Em seguida, execute o seguinte comando:

```bash
nvm -v
```

Você deverá ver uma versão. Se não, pergunte a um professor.

Agora vamos instalar o nó:

```bash
nvm install <NODE_VERSION>
```

Quando a instalação terminar, execute:

```bash
node -v
```

Se você vir `v<NODE_VERSION>`, a instalação foi bem-sucedida :heavy_check_mark: Você pode então executar:

```bash
nvm cache clear
```

:x: Caso contrário, **entre em contato com um professor**

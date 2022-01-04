## Node.js

[Node.js](https://nodejs.org/en/) is a JavaScript runtime to execute JavaScript code in the terminal. Let's install it with [nvm](https://github.com/nvm-sh/nvm), a version manager for Node.js.

In a terminal, execute the following command:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v<NVM_VERSION>/install.sh | zsh
```

Restart your terminal and run the following:

```bash
nvm -v
```

You should see a version. If not, ask a teacher.

Now let's install node:

```bash
nvm install <NODE_VERSION>
```

When the installation is finished, run:

```bash
node -v
```

If you see `v<NODE_VERSION>`, the installation succeeded :heavy_check_mark: You can then run:

```bash
nvm cache clear
```

:x: If not, **contact a teacher**

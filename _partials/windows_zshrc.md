## Windows `zshrc`

### Disable compinit warning

During the setup, you may have seen the following annoying warning message:

```bash
zsh compinit: insecure directories and files, run compaudit for list.
```

Let's disable this warning:

- Open the `~/.zshrc` profile file in your text editor and change slightly its content:

```bash
code ~/.zshrc
```

- Locate the line `# Actually load Oh-My-Zsh`
- **Above it** write the following line:

```bash
ZSH_DISABLE_COMPFIX=true
```

### Disable SSH passphrase prompt

You don't want to be asked for your passphrase every time you communicate with a distant repository. So, you need to add the plugin `ssh-agent` to `oh my zsh`:

- Spot the line starting with `plugins=`
- Add `ssh-agent` at the end of the plugins list

The list should look like:

```bash
plugins=(gitfast last-working-dir common-aliases zsh-syntax-highlighting history-substring-search ssh-agent)
```

:heavy_check_mark: Save the `.zshrc` file with `CTRL` + `S` and close your text editor.

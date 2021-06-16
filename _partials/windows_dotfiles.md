&nbsp;


Let us open the `~/.zshrc` profile file in your text editor and change slightly its content:

```bash
code ~/.zshrc
```

- Locate the line `# Actually load Oh-My-Zsh`
- **Above it** write the following line:

```bash
ZSH_DISABLE_COMPFIX=true
```

&nbsp;

You don't want to be asked for your passphrase every time you communicate with a distant repository. So, you need to add the plugin `ssh-agent` to `oh my zsh`:


- Spot the line starting with `plugins=`
- Add `ssh-agent` to the plugins list.

The list should look like:

```
plugins=(gitfast last-working-dir common-aliases zsh-syntax-highlighting history-substring-search ssh-agent)
```

&nbsp;

&nbsp;&nbsp;&nbsp; :white_check_mark: Save the `.zshrc` file with `Ctrl` + `S` and close your text editor.

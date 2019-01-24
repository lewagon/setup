## Oh-my-zsh - Fancy your Terminal

We will use the shell named `zsh` instead of `bash`, the default one.

```bash
sudo apt install -y zsh curl vim nodejs imagemagick jq
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# it will ask for your session password
```

Be careful, those commands will ask you to type your password twice. At the end
your prompt should look like this:

![](images/ubuntu_oh_my_zsh.png)

If it doesn't, **ask a teacher**.

Then run:

```bash
chmod 0770 ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

To make this change stick, quit your virtual machine with `CTRL` + `D` and restart it.

After the reboot: run this line in your terminal to make sure the Xming X Server also works with Zsh

```bash
echo "export DISPLAY=:0" >> ~/.zshrc
```

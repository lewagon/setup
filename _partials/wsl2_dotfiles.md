## Dotfiles (Standard configuration)

Hackers love to refine and polish their shell and tools. We'll start with a great default configuration provided by [Le Wagon](http://github.com/lewagon/dotfiles), stored on GitHub. As your configuration is personal, you need your own repository storing it, so you first need to fork it to your GitHub account.

>\- [Click here to **fork**](https://github.com/lewagon/dotfiles/fork) the `lewagon/dotfiles` repository to your account
>\- You should arrive on a page that looks like below
>\- Make sure to **select your GitHub account**.

![](images/fork.png)


Forking means that it will create a new repo in your GitHub account, identical to the original one. You'll have a new repository on your GitHub account, `your_github_username/dotfiles`.

We need to fork because each of you will need to put specific information (e.g. your name) in those files.

>\- Open your terminal.

```bash
export GITHUB_USERNAME=replace_this_with_your_github_username

# Example:
#   export GITHUB_USERNAME=ssaunier
```
:warning: **Don't blindly copy paste this line**, replace `replace_this_with_your_github_username` with *your* own GitHub usernickname.


&nbsp;


Now let's get your new default configuration on your computer:

```bash
mkdir -p ~/code/$GITHUB_USERNAME && cd $_ && git clone git@github.com:$GITHUB_USERNAME/dotfiles.git
```

Run the `dotfiles` installer:

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh install.sh
```

Then run the git installer:

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh git_setup.sh
```

:point_up: This will **prompt** you for your name (`Firstname Lastname`), then your email.


:warning: Be careful, you **need** to put the **same** email as the one you sign up with on GitHub.


&nbsp;


Let us open the `~/.zshrc` profile file in Visual Code Studio and change slightly its content:

```bash
code ~/.zshrc
```

>\- Locate the line `# Actually load Oh-My-Zsh`
>\- **Above it** write the following line:

```bash
ZSH_DISABLE_COMPFIX=true
```

&nbsp;


You don't want to be asked for your passphrase every time you communicate with a distant repository. So, you need to add the plugin `ssh-agent` to `oh my zsh`:


>\- Spot the line starting with `plugins=`
>\- Add `ssh-agent` to the plugins list.

The list should look like:

```
plugins=(gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search ssh-agent)
```

&nbsp;


&nbsp;&nbsp;&nbsp; :white_check_mark: Save the `.zshrc` file with `Ctrl` + `S` and close Visual Code Studio.


## Dotfiles (Standard configuration)

Hackers love to refine and polish their shell and tools.

We'll start with a great default configuration provided by Le Wagon: [`lewagon/dotfiles`](https://github.com/lewagon/dotfiles).

As your configuration is personal, you need your **own** repository storing it. So you will **fork** Le Wagon repository.

Forking means that you will create a new repo in your own GitHub account `$GITHUB_USERNAME/dotfiles`, identical to the original Le Wagon one that you will be able to modify at will.

Open your terminal and set a variable for your GitHub username:

```bash
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
```

```bash
echo $GITHUB_USERNAME
```

:heavy_check_mark: You should see your GitHub username printed.

:x: If not, **stop here** and ask for help. There may be a problem with the previous step (`gh auth`).

:warning: Please note that this variable is only set for the time your terminal is open. If you close it before or during the next steps, you need to set it again with the two steps above!


Time to fork the repo and clone it on your computer:

```bash
mkdir -p ~/code/$GITHUB_USERNAME && cd $_
```

```bash
gh repo fork lewagon/dotfiles --clone
```

### Dotfiles installer

Run the `dotfiles` installer:

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles
```

```bash
zsh install.sh
```

Check the emails registered with your GitHub Account. You'll need to pick one at the next step:

```bash
gh api user/emails | jq -r '.[].email'
```

:heavy_check_mark: If you see the list of your registered emails, you can proceed :+1:

:x: If not, please [reauthenticate to GitHub](https://github.com/lewagon/setup/blob/master/<OS.md>#github-cli) before running this command :point_up: again.

### git installer

Run the `git` installer:

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh git_setup.sh
```

:point_up: This will **prompt** you for your name (`FirstName LastName`) and your email.

:warning: You **need** to put one of the emails listed above thanks to the previous `gh api ...` command. If you don't do that, Kitt won't be able to track your progress. 💡 Select the `@users.noreply.github.com` address if you don't want your email to appear in public repositories you may contribute to.


Please now **reset** your terminal by running:

```bash
exec zsh
```

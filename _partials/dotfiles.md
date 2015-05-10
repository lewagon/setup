## Your Configuration

Hackers love to refine and polish their shell and tools. We'll start with a great default configuration provided by [Le Wagon](http://github.com/lewagon/dotfiles), stored on GitHub. As your configuration is personal, you need your own repository storing it, so you first need to fork it to your GitHub account.

:arrow_right: [Fork](https://github.com/lewagon/dotfiles/fork) the `lewagon/dotfiles` repository to your account. Forking means that it will create a new repo in your GitHub account, identical to the original one.

Then open your terminal. Don't blindly copy paste this line, type it and put *your*
own github usernickname

```
$ export GITHUB_USERNAME=my_github_username
```

```
$ mkdir -p ~/code/$GITHUB_USERNAME && cd $_ && git clone git@github.com:$GITHUB_USERNAME/dotfiles.git && cd dotfiles
```

Run the `dotfiles` installer. It will **prompt** you for your name and your email.

```bash
$ zsh install.sh
```

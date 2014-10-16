# Setup instructions

The following instructions will help you to get ready for [Le Wagon](http://www.lewagon.org) fullstack bootcamp:

- Grab a text editor, where you'll spend your day and nights
- Install a package manager
- Pimp your terminal
- Setup Git and Github
- Install Ruby

## GitHub account

Have you signed up to GitHub? If not, [do it right away](https://github.com/join).

**[Upload a picture](https://github.com/settings/profile)** and put your name correctly on your Github account. This is important as we'll use an internal dashboard with your avatars.

## Mac Users, install command line tools

If you are running Ubuntu, **skip** this step.

Open the terminal

![](images/open-terminal.png)

Type what is after the dollar sign `$`. The dollar sign means that you need to type what's after into the terminal.

```bash
$ xcode-select --install
```

It will open a window asking you if you want to install some software. Accept and wait. If it fails, try again the command line above, sometimes the Apple server are overloaded.

![](images/xcode-select-install.png)

## Sublime Text 2 - Your text editor

A text editor is one of the most important tool of a developer. Go to [this page](http://www.sublimetext.com/2) and download Sublime Text 2 for your OS. Install it. It is free without any time limit but a popup will appear to remind there is a license to buy. Just hit `Esc` when this happens, but feel free to buy it if you really like this one (there are alternatives).

On Mac OS X, to install software you just have to drag & drop it in the "Applications" folder.
Please make sure that Sublime Text is there, not in the disk image you downloaded. To make sure it's correct, once Sublime Text is installed, unmount the "Sublime Text 2" disk in the left panel of Finder. If Finder complains, that's because you did something wrong. Ask a teacher.

### Package control

We will install the package manager right away to install addons. Launch Sublime Text, then open the console via the `View > Show Console` menu. It will open at the bottom of Sublime Text a prompt where you can type stuff. You need to [copy some code](https://sublime.wbond.net/installation#st2) and paste it in that Sublime Text console. Then hit `Enter`. Restart Sublime Text (`⌘` + `Q` to quit on Mac).

If you have trouble with this step, ask a teacher. That would be the only thing we'll type in this prompt. All other commands will be in the terminal.

### Preferences

In Sublime Text menu, go to `Preferences > Settings - Users`, that will open a file. Erase all the content of that file, then copy paste the code below in it. Save this file.

```json
{
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "detect_indentation": false,

  "trim_trailing_white_space_on_save": true,
  "draw_white_space": true,
  "use_tab_stops": true,

  "show_minimap": false,
  "rulers": [ 80 ],

  "folder_exclude_patterns": [ "tmp", "log", ".git", "_site", ".bundle", ".sass-cache" ]
}
```

The convention we are enforcing with this configuration is that we use 2 spaces
for indentation (no tabs). So each time you will hit the `tab` key,
Sublime Text will insert 2 spaces.

You can now quit Sublime Text.

## Package Manager

## Ubuntu - Aptitude

If you are running Ubuntu, just run the following, and go to next step:

```bash
$ sudo apt-get install git
```

## Mac - Homebrew

On Mac, you need to install [Homebrew](http://brew.sh/). To do so, open your terminal and run:

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

This will ask for your confirmation (hit `Enter`) and your password (because it needs to
perform some operation as root, i.e. administrator). This is your laptop session password,
the one you type when you boot your computer. Something to be aware of is that when you
type your password in the terminal, nothing print out. No asterixes like you are used to, this
is perfectly normal. Type your password and hit `Enter`.

Then install some useful software:

```bash
$ brew install vim git
```

## Oh-my-zsh - Fancy your terminal

We will use the shell named `zsh` instead of `bash`, the default one.

### Ubuntu

```bash
$ sudo apt-get install zsh
```

You may need to change the terminal settings to execute `/usr/bin/zsh` at startup, see [this](http://askubuntu.com/a/342342).

## OS X

```bash
$ curl -L http://install.ohmyz.sh | sh
```

Be extremely careful, at the end of this script, it will prompt for your laptop password again.
You have to write it correctly and hit `Enter`. Now quit the terminal (`⌘` + `Q`), and restart it.
You should see something like this:

![](images/on-my-zsh.png)

If not, **stop right away** and call a teacher.

On Mac, open `Terminal > Preferences` and set the "Pro" theme as default in `Réglages`.

![](images/terminal-pro.png)

Quit and relaunch the terminal. It should now have a nice black background, more easy on the eyes.

## Git

We need to configure Git with SSH keys, this way you won't have to put your password each
time you want to `git push` some modifications.

It is a tricky concept and a tricky setup, fortunately GitHub wrote a great article.
Just [go to this article](https://help.github.com/articles/generating-ssh-keys), and select your environment at the top (Mac or Linux). If you need help, ask a teacher.

**NB:** when asked for a passphrase, don't put your laptop password or your github password. It is
important to protect your keys with a password, otherwise anyone having access to these files
will be able to impersonate your GitHub account (and get his hand on your private code for instance).

## Your Configuration

Hackers love to refine and polish their shell and tools. We'll start with a great default configuration provided by [Le Wagon](http://github.com/lewagon/dotfiles), stored on Github. As your configuration is personal, you need your own repository storing it, so you first need to fork it to your GitHub account.

Go to [this page](https://github.com/lewagon/dotfiles/fork) and fork the repository.
Forking means that it will create a new repo in your Github account, identical to
the original one.

Open your terminal, and set your github username in a variable
(don't just copy paste!):

```bash
$ GITHUB_USERNAME=your_github_username
```

Then run the three commands to clone the repository you just forked to your computer.
You just have to copy them, do not try to edit anything.

```bash
$ mkdir -p ~/code/${GITHUB_USERNAME} && cd $_
$ git clone git@github.com:${GITHUB_USERNAME}/dotfiles.git
$ cd dotfiles
```

We now need to configure the `gitconfig` file with your own identity.
Open it in Sublime Text, and update line 2 and 3 with your own identity:

```bash
[user]
  name =  "COMPLETE THIS (no accented characters)"
  email = "COMPLETE THIS"
```

Time to install this default configuration, just run:

```bash
$ ./install.sh
```

You should commit this change:

```bash
$ git add gitconfig
$ git commit --message "Added my identity to the gitconfig"
$ git push origin master
```

Quit and relaunch your terminal. You should be all set!

## Installing Ruby

You may already have installed ruby, but we are going to do it again using `rbenv`, a manager for installing different Ruby versions on your computer.

Open a terminal, and run:

```bash
$ source ~/.zshrc
$ curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
```

If you are using Ubuntu, run this, if on Mac, skip this step:

```bash
$ rbenv bootstrap-ubuntu-12-04
```

Now, you are ready to install the latest ruby version, and set it as the default version.

```bash
$ rbenv install 2.1.2
$ rbenv global 2.1.2
$ source ~/.zshrc
$ ruby -v
```

You should see something starting with `ruby 2.1.2p`. If not, try to restart your terminal

## Installing some useful gems

Make sure you are on ruby 2.1.2, then run

```bash
$ gem install bundler rspec rubocop
```

## Mac Users, password-protect your computer

It is mandataory that you protect your session behind a password. If it is not already the case, go to ` > System Preferences > Users & Groups`, and change your account password. You should also go to ` > System Preferences > Security > General`. You should require a password `5 seconds` after sleep or screen saver begins.

You can also go to ` > System Preferences > Mission Control`, and click on the `Hot Corners` button at the bottom left. Choose for the bottom right corner to start the screen saver. That way, when you leave your desk, you can quickly lock you screen by putting your mouse in the bottom right corner. 5 seconds after, your mac will be locked and will ask for a password to get back on the session.

## Mac Users, this is a hacker bonus

You can have a look at [this](https://github.com/mathiasbynens/dotfiles/blob/master/.osx) and run whichever command you see fit.

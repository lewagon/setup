# Setup instructions

The following instructions will help you to get ready for [Le Wagon](http://www.lewagon.org) fullstack bootcamp:

- Grab a text editor, where you'll spend your day and nights
- Install a package manager
- Pimp your terminal
- Setup Git and Github
- Install Ruby


## Virtual Box

If you installed Ubuntu in Virtual Box, not natively as dual boot, open
a terminal and run these commands. If you did not, **ignore** this step.

```bash
$ sudo apt-get install virtualbox-guest-dkms
$ sudo apt-get install virtualbox-guest-utils
$ sudo apt-get install virtualbox-guest-x11
```

Then restart your virtual machine.

```bash
$ sudo shutdown -r 0
```

If you have poor performance with your Virtual Machine, [try this](http://askubuntu.com/a/289758).

## GitHub account

Have you signed up to GitHub? If not, [do it right away](https://github.com/join).

**[Upload a picture](https://github.com/settings/profile)** and put your name correctly on your Github account. This is important as we'll use an internal dashboard with your avatars.


## Sublime Text 2 - Your text editor

A text editor is one of the most important tool of a developer.
Follow these instructions in the terminal:

```bash
$ sudo add-apt-repository ppa:webupd8team/sublime-text-2
$ sudo apt-get update
$ sudo apt-get install sublime-text
```

### Package control

We will install the package manager right away to install addons. Launch Sublime Text, then open the console via the `View > Show Console` menu. It will open at the bottom of Sublime Text a prompt where you can type stuff. You need to [copy some code](https://sublime.wbond.net/installation#st2) and paste it in that Sublime Text console. Then hit `Enter`. Restart Sublime Text (`⌘` + `Q` to quit on Mac).

If you have trouble with this step, ask a teacher. That would be the only thing we'll type in this prompt. All other commands will be in the terminal.

To check that the Package Control is installed, you can hit `⌘`+`⇧`+`P` (`Ctrl`+`⇧`+`P` on Ubuntu), and type `installp`. If you see something like below, you're good to go!

![](images/sublime-install-package.png)

### Preferences

We need to set some default on Sublime Text. Sharing defaults within your
colleagues, fellow students and teachers is important: it eases the process
of getting help or helping other.

1. Open Sublime Text
1. Go to `Preferences > Settings - Users`
1. Erase all the content of the file which got opened.
1. Copy paste the code below.
1. Save the file

```json
{
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "detect_indentation": false,

  "trim_trailing_white_space_on_save": true,
  "draw_white_space": true,
  "use_tab_stops": true,
  "hot_exit": false,
  "remember_open_files": false,

  "highlight_modified_tabs": true,
  "show_minimap": false,

  "show_minimap": false,
  "rulers": [ 80 ],
  "wordWrap": false,

  "folder_exclude_patterns": [ "tmp", "log", ".git", "_site", ".bundle", ".sass-cache" ]
}
```

The convention we are enforcing with this configuration is that we use 2 spaces
for indentation (no tabs). So each time you will hit the `tab` key,
Sublime Text will insert 2 spaces.

You can now quit Sublime Text.


## Git

Download `git`, the versionning program we'll use everyday to archive our code:

```
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```

## Oh-my-zsh - Fancy your terminal

We will use the shell named `zsh` instead of `bash`, the default one.

```bash
$ sudo apt-get install zsh curl vim
$ curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh > install.sh
$ bash install.sh
$ rm install.sh
```

Be careful, those commands will ask you to type your password twice. At the end
your prompt should look like this:

![](images/ubuntu_oh_my_zsh.png)

If it doesn't, **ask a teacher**.

To make this change stick, restart your virtual machine:

```bash
$ sudo shutdown -r 0
```

## GitHub

We need to configure Git with SSH keys, this way you won't have to put your password each
time you want to `git push` some modifications.

It is a tricky concept and a tricky setup, fortunately GitHub wrote a great article.
Just [go to this article](https://help.github.com/articles/generating-ssh-keys/#step-2-generate-a-new-ssh-key), and select your environment at the top (Mac or Linux). If you need help, ask a teacher. *Do not* download GitHub for Mac, follow the part with SSH Keys.

**NB:** when asked for a passphrase, don't put your laptop password or your github password. It is
important to protect your keys with a password, otherwise anyone having access to these files
will be able to impersonate your GitHub account (and get access to your private code for instance).


## Your Configuration

Hackers love to refine and polish their shell and tools. We'll start with a great default configuration provided by [Le Wagon](http://github.com/lewagon/dotfiles), stored on Github. As your configuration is personal, you need your own repository storing it, so you first need to fork it to your GitHub account.

:arrow_right: [Go to this page](https://github.com/lewagon/dotfiles/fork) and **fork** the repository to your account.
Forking means that it will create a new repo in your Github account, identical to the original one.

Then follow the instructions in the readme of the repo you've just forked. Once done,
come back to this tutorial.


## Installing Ruby (with [rbenv](https://github.com/sstephenson/rbenv), not rvm)

You may already have installed ruby, but we are going to do it again using `rbenv`, a manager for installing different Ruby versions on your computer. If you installed `rvm` before, run `rvm implode` to remove it beforehand.

Open a terminal, and run:

```bash
$ curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
```


Now, run:

```bash
$ rbenv bootstrap-ubuntu-12-04
```


Now, you are ready to install the latest ruby version, and set it as the default version.

```bash
$ rbenv install 2.2.0
$ rbenv global 2.2.0
$ zsh ~/.zshrc
```

```bash
$ ruby -v
```

You should see something starting with `ruby 2.2.0p`. If not, ask a teacher.

## Installing some gems

```bash
$ gem install bundler rspec rubocop
$ which hub > /dev/null || gem install hub
```



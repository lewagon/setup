# Setup instructions

## Mac Users, install XCode

If you are running Ubuntu, skip this step.

Mac users need to install XCode so that you have some command line tools which are not available by default when buying a Mac. Click on the  at the top left of your toolbar and open the App Store. Search for `XCode`, download it. It is pretty big, so don't do it while tethering...

## Sublime Text 2 - Your text editor

A text editor is one of the two most important tool of a developer (the other one being the command line). Go to [this page](http://www.sublimetext.com/2) and download Sublime Text 2. Install it. It is free without any time limit but a popup will appear to remind there is a license to buy. Just hit `Esc` when this happens, but feel free to buy it if you really like this one (there are alternatives).

### Package control

We will install the package manager right away to install addons. Launch Sublime Text, then open the console via the `View > Show Console` menu. Then you need to [copy paste some code](https://sublime.wbond.net/installation#st2) in the console. If you have trouble with this step, ask a teacher.

### Preferences

Go to `Preferences > Settings - Users`, it will open a file. Copy paste the following configuration and save. Restart Sublime Text 2.

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

The convention we are enforcing with this configuration is that we use 2 spaces for indentation (no tabs). So each time you will hit the `tab` key, Sublime Text will insert 2 spaces.


## Oh-my-zsh - Fancy your terminal

We will use the shell named `zsh` instead of `bash`, the default one. Open your terminal and run:

```bash
$ curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```

On Mac, open Terminal -> Preferences and set the "Pro" theme as default. Quit and relaunch the terminal.

## Homebrew, Mac's missing Package Manager

If you are running Ubuntu, just run the followin, and go to next step:

```bash
$ apt-get install git
```

On Mac, you need to install [Homebrew](http://brew.sh/). To do so, open your terminal and run:

```bash
$ ruby <(curl -fsS https://raw.github.com/Homebrew/homebrew/go/install)
```

Then install some useful software:

```bash
$ brew install vim git node
```

## Git

We need to configure Git with SSH keys, this way you won't have to put your password each
time you want to `git push` some modifications.

It is a tricky concept and a tricky setup, fortunately GitHub wrote a great article.
Just [go to this article](https://help.github.com/articles/generating-ssh-keys), and select your environment at the top (Mac or Linux). If you need help, ask a teacher.

**NB:** when asked for a passphrase, don't put your laptop password or your github password. It is
important to protect your keys with a password, otherwise anyone having access to these files
will be able to impersonate your GitHub account (and get his hand on your private code for instance).

## Your Configuration

Hackers love to refine and polish their shell and tools. We'll start with a great default configuration provided by [Le Wagon](http://github.com/lewagon/dotfiles), stored on Github.

As your configuration is personal, you need your own repository storing it, so you first need to fork it to your GitHub account.

Go to [this page](https://github.com/lewagon/dotfiles/fork) and fork the repository.
Forking means that it will create a new repo in your Github account, identical to
the original one.

Then open your terminal, and set your github username in a variable
(don't just copy paste!):

```bash
$ GITHUB_USERNAME=your_github_username
```

Then run the three commands to clone the repository you just forked to your computer.

```bash
$ mkdir -p ~/code/${GITHUB_USERNAME} && cd $_
$ git clone git@github.com:${GITHUB_USERNAME}/dotfiles.git
$ cd dotfiles
```

We now need to configure the `gitconfig` with your own identity.
Open it in Sublime Text, and update line 2 and 3 with your own identity:

```bash
[user]
  name =  "COMPLETE THIS (no accented characters)"
  email = "COMPLETE THIS"
```

You should commit this change:

```bash
$ git add gitconfig
$ git commit --message "Added my identity to the gitconfig"
$ git push origin master
```

Time to install this default configuration, just run:

```bash
$ ./install.sh
```

Quit and relaunch your terminal. You should be all set!

## Installing Ruby

You may already have installed ruby, but we are going to do it again using `rbenv`, a manager for installing different Ruby versions on your computer.

Open a terminal, and run:

```bash
$ curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
```

If you are using Ubuntu, run this, if on Mac, skip this step:

```bash
$ rbenv bootstrap-ubuntu-12-04
```

Now, you are ready to install the latest ruby version, and set it as the default version.

```bash
$ rbenv install 2.1.1
$ rbenv global 2.1.1
$ ruby -v
```

You should see something starting with `ruby 2.1.1p`

## Bonus: OSX For Hackers

If you are running Ubuntu, you can skip this step.

You want a fast keyboard, so run this in your terminal:

```bash
$ defaults write NSGlobalDomain KeyRepeat -int 2
$ defaults write NSGlobalDomain InitialKeyRepeat -int 15
```

You can have a look at [this](https://github.com/mathiasbynens/dotfiles/blob/master/.osx) and run whichever command you see fit.

## I am ready!

Are you ready? Then sign in on [Kitt](http://kitt.lewagon.org/)!

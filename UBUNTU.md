# Setup instructions

The following instructions will help you to get ready for [Le Wagon](http://www.lewagon.org) fullstack bootcamp:

- Grab a text editor, where you'll spend your day and nights
- Install a package manager
- Pimp your Terminal
- Setup git and GitHub
- Install Ruby


## Virtual Box

If you are running a native Ubuntu (dual boot), **skip** this step.

You have to download 2 softwares:

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Ubuntu](http://releases.ubuntu.com/14.04.1/ubuntu-14.04.1-desktop-amd64.iso)

Ask a teacher for help to setup a VirtualBox machine (with at least 1G of RAM) and boot
the Ubuntu iso into it. Once Ubuntu is installed, follow the rest of this tutorial.

Open a Terminal and run these commands.

```bash
sudo apt-get install -y virtualbox-guest-dkms
sudo apt-get install -y virtualbox-guest-utils
sudo apt-get install -y virtualbox-guest-x11
```

Then restart your virtual machine.

```bash
sudo shutdown -r 0
```

If you have poor performance with your Virtual Machine, [try this](http://askubuntu.com/a/289758).


## GitHub account

Have you signed up to GitHub? If not, [do it right away](https://github.com/join).

**[Upload a picture](https://github.com/settings/profile)** and put your name correctly on your GitHub account. This is important as we'll use an internal dashboard with your avatars.


## Sublime Text 3 - Your text editor

A text editor is one of the most important tool of a developer.
Follow these instructions in the Terminal:

```bash
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer
```

Sublime Text is free without any time limitation but a popup will appear every ten saves to remind you there is a license to buy. You can hit `Esc` when this happens, but feel free to buy Sublime Text if you really like this one (there are alternatives).


## Git

Download `git`, the versionning program we'll use everyday to archive our code:

```
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install -y git
```


## Oh-my-zsh - Fancy your Terminal

We will use the shell named `zsh` instead of `bash`, the default one.

```bash
sudo apt-get install -y zsh curl vim nodejs imagemagick
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh > install.sh && bash install.sh && rm install.sh
# it will ask for your session password
```

Be careful, those commands will ask you to type your password twice. At the end
your prompt should look like this:

![](images/ubuntu_oh_my_zsh.png)

If it doesn't, **ask a teacher**.

To make this change stick, restart your virtual machine:

```bash
sudo shutdown -r 0
```


## GitHub

We need to generate SSH keys which are going to be used by GitHub and Heroku
to authenticate you. Think of it as a way to log in, but different from the
well known username/password couple. If you already generated keys
that you already use with other services, you can skip this step.

Open a terminal and type this, replacing the email with **yours** (the
same one you used to create your GitHub account). It will prompt
for information. Just press enter until it asks for a **passphrase**.

**NB:** when asked for a passphrase, put something you want (and that you'll remember),
it's a password to protect your private key stored on your hard drive. You'll type,
nothing will show up on the screen, **that's normal**. Just type the passphrase,
and when you're done, press Enter.

```bash
mkdir -p ~/.ssh && ssh-keygen -t rsa -C "your_email@example.com"
```

Then you need to give your **public** key to GitHub. Run:

```bash
cat ~/.ssh/id_rsa.pub
```

It will prompt on the screen the content of the `id_rsa.pub` file. Copy that text,
then go to [github.com/settings/ssh](https://github.com/settings/ssh). Click on
**Add SSH key**, fill in the Title with your computer name, and paste the **Key**.
Finish by clicking on the **Add key** green button.

To check that this step is completed, in the terminal run this. You will be
prompted a warning, type `yes` then `Enter`.

```bash
ssh -T git@github.com
```

If you see something like this, you're done!

```bash
# Hi --------! You've successfully authenticated, but GitHub does not provide shell access
```

If it does not work, try running this before trying again the `ssh -T` command:

```bash
ssh-add ~/.ssh/id_rsa
```

Don't be in a rush, take time to [read this article](http://sebastien.saunier.me/blog/2015/05/10/github-public-key-authentication.html) to get a better
understanding of what those keys are used for.


## Dotfiles (Standard configuration)

Hackers love to refine and polish their shell and tools. We'll start with a great default configuration provided by [Le Wagon](http://github.com/lewagon/dotfiles), stored on GitHub. As your configuration is personal, you need your own repository storing it, so you first need to fork it to your GitHub account.

:arrow_right: [Click here to **fork**](https://github.com/lewagon/dotfiles/fork) the `lewagon/dotfiles` repository to your account. Forking means that it will create a new repo in your GitHub account, identical to the original one. You'll have a new repository on your GitHub account, `your_github_username/dotfiles`. We need to fork because each of you will need to put specific information (e.g. your name) in those files.

Open your terminal. **Don't blindly copy paste this line**, replace `replace_this_with_your_github_username` with *your*
own github usernickname.

```bash
export GITHUB_USERNAME=replace_this_with_your_github_username
# Example:
#   export GITHUB_USERNAME=ssaunier
```

Now copy/paste this very long link to your terminal. Do **not** change this one.

```bash
mkdir -p ~/code/$GITHUB_USERNAME && cd $_ && git clone git@github.com:$GITHUB_USERNAME/dotfiles.git && cd dotfiles
```

Run the `dotfiles` installer.

```bash
zsh install.sh
```

Then run the git installer. It will **prompt** you for your name and your email.

```bash
zsh git_setup.sh
```

Please now **quit** all your opened terminal windows.

### Sublime Text auto-configuration

In the terminal, type this:

```bash
stt
```

It will **open Sublime Text in the context of your current folder**. That's how we'll use it.
 **Wait a bit** for additional packages to be automatically installed (New tabs with text will automatically open, containing
 documentation for each new package installed). To check if plugins are installed,
 open the Command Palette (`⌘` + `⇧` + `P` on OSX, `Ctrl` + `⇧` + `P` on Linux), type in `Packlist` and then `Enter`, you should
 see a couple of packages installed (like [Emmet](http://emmet.io/)). If you are not sure, ask a teacher.




## Installing Ruby (with [rbenv](https://github.com/sstephenson/rbenv), not rvm)

You may already have installed ruby, but we are going to do it again using `rbenv`, a manager for installing different Ruby versions on your computer. If you installed `rvm` before, run `rvm implode` to remove it beforehand.

Open a Terminal, and run:

```bash
sudo apt-get install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
sudo apt-get clean
sudo mkdir -p /usr/local/opt && sudo chown `whoami`:`whoami` $_
git clone https://github.com/rbenv/rbenv.git /usr/local/opt/rbenv
git clone https://github.com/rbenv/ruby-build.git /usr/local/opt/rbenv/plugins/ruby-build
source ~/.zshrc
```


Now, you are ready to install the latest ruby version, and set it as the default version.

Run this command, it will **take a while (5-10 minutes)**

```bash
rbenv install 2.3.0
```

Once the ruby installtion is done, run this command tell the system
to use the 2.3.0 version by default.

```bash
rbenv global 2.3.0
```

Then **restart** your Terminal (close it and reopen it).

```bash
ruby -v
```

You should see something starting with `ruby 2.3.0p`. If not, ask a teacher.

## Installing some gems

```bash
gem install bundler rspec rubocop pry pry-byebug hub colored
```

**Never** install a gem with `sudo gem install`! Even if you stumble upon a Stackoverflow answer
(or the Terminal) telling you to do so.


## Postgresql

In a few weeks, we'll talk about SQL and Databases and you'll need something called Postgresql,
an open-source robust and production-ready database. Let's install it now.

```
sudo apt-get install -y postgresql postgresql-contrib libpq-dev build-essential
echo `whoami` > /tmp/caller
sudo su - postgres
psql --command "CREATE ROLE `cat /tmp/caller` LOGIN createdb;"
exit
rm -f /tmp/caller
```


## Check-up

Let's check if you successfully installed everything.

Quit all opened Terminal, open a new one and run the following commands:

```bash
curl -Ls https://raw.githubusercontent.com/lewagon/setup/master/check.rb | ruby
```

It should tell you if your workstation is ready :) If not, ask a teacher.

Now we'll wait for others to complete the setup as well. You can
[play with the terminal](http://cli.learncodethehardway.org/book/) or help others.


## Alumni

Register as a Wagon alumni by going to [alumni.lewagon.org/onboarding](http://alumni.lewagon.org/onboarding). Select your batch, sign in with GitHub and enter all your information.

Your teacher will then validate that you are indeed part of the batch. You can ask him to do it as soon as you completed the registration form.

Once the teacher has approved your profile, go to your email inbox. You should have 2 emails:

- One from Slack, inviting you to the Le Wagon Alumni slack community (where you'll chat with your buddies and all the previous alumni). Click on **Join** and fill the information.
- One from GitHub, inviting you to `lewagon` team. **Accept it** otherwise you won't be able to access the lecture slides.


## Slack

[Download](https://slack.com/downloads) the Slack native app from the Slack page. In **Linux (Beta)** section, choose **Ubuntu 64-bit** and download it.

Then install it:

```bash
cd ~/Downloads
sudo dpkg -i slack-desktop-*.deb
```

Launch the app and sign in to `lewagon-alumni` organization.

Make sure you upload a picture there.

You can also sign in to Slack on your iPhone or Android device!

The idea is that you'll have Slack open all day, so that you can share useful links / ask for help / decide where to go to lunch / etc.

Enjoy your ride with Le Wagon :)



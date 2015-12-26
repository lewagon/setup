You are here because you already did Le Wagon FullStack and purchased a new computer. Let's set it up!

## Command Line Tools

```bash
$ xcode-select --install
```

## Sublime Text 3

[Download](http://www.sublimetext.com/3) and install it. Package Control / Config is now automatic at step "Dotfiles" below.

## Homebrew

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install git openssl wget node imagemagick heroku
```

## Oh-my-zsh

```bash
$ curl -L http://install.ohmyz.sh | sh
```

(`⌘` + `Q`) your terminal and restart it.

## GitHub

You have a new computer, let's generate a new SSH key:

```bash
$ mkdir -p ~/.ssh && ssh-keygen -t rsa -C "your_email@example.com"
$ cat ~/.ssh/id_rsa.pub
```

Copy-paste the public SSH key which we outputed with the last command and [add it to GitHub](https://github.com/settings/ssh).

## Dotfiles

```bash
$ export GITHUB_USERNAME=your_github_nickname
$ mkdir -p ~/code/$GITHUB_USERNAME && cd $_ && git clone git@github.com:$GITHUB_USERNAME/dotfiles.git && cd dotfiles
$ zsh install.sh
```

(`⌘` + `Q`) your terminal and restart it.

## Ruby

```bash
$ curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
$ rbenv install 2.3.0
$ rbenv global 2.3.0
```

(`⌘` + `Q`) your terminal and restart it.

## Gems

```ruby
$ gem install bundler rspec rubocop pry pry-byebug hub colored rails
```

## Postgresql

```bash
$ brew install postgresql
$ mkdir -p ~/Library/LaunchAgents
$ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

## Redis

```bash
$ brew install redis
$ ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
```


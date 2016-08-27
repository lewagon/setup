You are here because you already did Le Wagon FullStack and purchased a new computer. Let's set it up!

## Command Line Tools

```bash
xcode-select --install
```

## Sublime Text 3

[Download](http://www.sublimetext.com/3) and install it. Package Control / Config is now automatic at step "Dotfiles" below.

## Homebrew

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo chown -R $USER:admin /usr/local
brew update
function install_or_upgrade { brew ls | grep $1 > /dev/null; if (($? == 0)); then brew upgrade $1; else brew install $1; fi }
install_or_upgrade "git"
install_or_upgrade "wget"
install_or_upgrade "imagemagick"
install_or_upgrade "jq"
install_or_upgrade "openssl"
```

## Oh-my-zsh

```bash
curl -L http://install.ohmyz.sh | sh
```

(`⌘` + `Q`) your terminal and restart it.

## GitHub

You have a new computer, let's generate a new SSH key:

```bash
mkdir -p ~/.ssh && ssh-keygen -t rsa -C "your_email@example.com"
cat ~/.ssh/id_rsa.pub
```

Copy-paste the public SSH key which we outputed with the last command and [add it to GitHub](https://github.com/settings/ssh).

## Dotfiles

```bash
export GITHUB_USERNAME=your_github_nickname # Change this!
mkdir -p ~/code/$GITHUB_USERNAME && cd $_ && git clone git@github.com:$GITHUB_USERNAME/dotfiles.git && cd dotfiles
zsh install.sh
```

(`⌘` + `Q`) your terminal and restart it.

## Ruby

```bash
if [ -x "$(command -v rvm)" ]; then rvm implode && sudo rm -rf ~/.rvm; fi
sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
brew uninstall --force rbenv ruby-build
unset RBENV_ROOT && source ~/.zshrc
brew install rbenv ruby-build && source ~/.zshrc
rbenv install 2.3.1
rbenv global 2.3.1
```

(`⌘` + `Q`) your terminal and restart it. Check your ruby version with:

```bash
ruby -v
```

## Gems

```ruby
gem install bundler rails
```

Check our rails version with:

```bash
rails -v
```

## Postgresql

```bash
brew install postgresql
brew services start postgresql
```

## Redis

(Only if you use Sidekiq)

```bash
brew install redis
brew services start redis
```


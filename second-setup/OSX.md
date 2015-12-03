You are here because you already did Le Wagon FullStack and purchased a new computer. Let's set it up!

## Command Line Tools

```bash
$ xcode-select --install
```

## Sublime Text 2

1. [Download](http://www.sublimetext.com/2) and install it
1. Install the [Package Manager](https://sublime.wbond.net/installation#st2)
1. Reinstall your favorite packages like:
  - BracketHighlighter
  - Emmet
  - Git
  - GitGutter
  - Syntax Highlighting for Sass
  - All Autocomplete
1. Setup your Preferences
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
  "ensure_newline_at_eof_on_save": true,
  "trim_automatic_white_space": true,
  "trim_trailing_white_space_on_save": true,
  "draw_white_space": true,
  "use_tab_stops": true,
  "hot_exit": false,
  "remember_open_files": false,
  "highlight_modified_tabs": true,
  "rulers": [ 80 ],
  "wordWrap": false,
  "folder_exclude_patterns": [ "tmp", "log", ".git", "_site", ".bundle", ".sass-cache", "build" ]
}
```

## Homebrew

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install git openssl wget node
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
$ export GITHUB_USERNAME=my_github_username
$ mkdir -p ~/code/$GITHUB_USERNAME && cd $_ && git clone git@github.com:$GITHUB_USERNAME/dotfiles.git && cd dotfiles
$ zsh install.sh
```

(`⌘` + `Q`) your terminal and restart it.

## Ruby

```bash
$ curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
$ rbenv install 2.2.3
$ rbenv global 2.2.3
```

(`⌘` + `Q`) your terminal and restart it.

## Gems

```ruby
$ gem install bundler rspec rubocop pry pry-byebug hub colored
```

## Postgresql

```bash
$ brew install postgresql
$ mkdir -p ~/Library/LaunchAgents
$ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

Maybe install `redis` as well?



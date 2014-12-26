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

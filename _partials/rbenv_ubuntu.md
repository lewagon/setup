## Installing Ruby (with [rbenv](https://github.com/sstephenson/rbenv), not rvm)

You may already have installed ruby, but we are going to do it again using `rbenv`, a manager for installing different Ruby versions on your computer. If you installed `rvm` before, run `rvm implode` to remove it beforehand.

Open a Terminal, and run:

```bash
$ curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
```

Now, run:

```bash
$ sudo apt-get install build-essential tklib zlib1g-dev libssl-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
$ sudo apt-get clean
```

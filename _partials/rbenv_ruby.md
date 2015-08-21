Now, you are ready to install the latest ruby version, and set it as the default version.

Run this command, it will **take a while (5-10 minutes)**
```bash
$ rbenv install 2.2.3
```

Once the ruby installtion is done, run this command tell the system
to use the 2.2.3 version by default.

```bash
$ rbenv global 2.2.3
```

Then **restart** your Terminal (close it and reopen it).

```bash
$ ruby -v
```

You should see something starting with `ruby 2.2.3p`. If not, ask a teacher.

## Installing some gems

```bash
$ gem install bundler rspec rubocop pry pry-byebug hub colored
```

**Never** install a gem with `sudo gem install`! Even if you stumble upon a Stackoverflow answer
(or the Terminal) telling you to do so.

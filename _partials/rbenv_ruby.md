Now, you are ready to install the latest ruby version, and set it as the default version.

Run this command, it will **take a while (5-10 minutes)**

```bash
rbenv install <RUBY_VERSION>
```

Once the ruby installation is done, run this command to tell the system
to use the <RUBY_VERSION> version by default.

```bash
rbenv global <RUBY_VERSION>
```

Then **restart** your Terminal again (close it and reopen it).

```bash
ruby -v
```

You should see something starting with `ruby <RUBY_VERSION>p`. If not, ask a teacher.

## Installing some gems

---

:warning: If you are in **China** :cn:, you should update the way we'll install gem with the following commands. If you are not in China, well just skip this and go directly to the next `gem install` command!

```bash
# China only!
gem sources --remove https://rubygems.org/
gem sources -a https://gems.ruby-china.com/
gem sources -l
# *** CURRENT SOURCES ***
# https://gems.ruby-china.com/
# Ruby-china.com must be in the list now
```

---

All, please run the following line:

```bash
gem install rake bundler rspec rubocop rubocop-performance pry pry-byebug hub colored octokit
```

**Never** install a gem with `sudo gem install`! Even if you stumble upon a Stackoverflow answer
(or the Terminal) telling you to do so.

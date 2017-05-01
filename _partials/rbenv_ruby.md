Now, you are ready to install the latest ruby version, and set it as the default version.

Run this command, it will **take a while (5-10 minutes)**

```bash
rbenv install 2.3.3
```

Once the ruby installation is done, run this command tell the system
to use the 2.3.3 version by default.

```bash
rbenv global 2.3.3
```

Then **restart** your Terminal (close it and reopen it).

```bash
ruby -v
```

You should see something starting with `ruby 2.3.3p`. If not, ask a teacher.

## Installing some gems

---

:warning: If you are in **China** :cn:, you should update the way we'll install gem with the following commands. If you are not in China, well just skip this and go directly to the next `gem install` command!

```bash
gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem sources -l
# *** CURRENT SOURCES ***

# https://ruby.taobao.org
# Ensure it only has ruby.taobao.org
```

---

All, please run the following line:

```bash
gem install bundler rspec rubocop pry pry-byebug hub colored gist
```

**Never** install a gem with `sudo gem install`! Even if you stumble upon a Stackoverflow answer
(or the Terminal) telling you to do so.

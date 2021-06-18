## Ruby

### Installation

Now, you are ready to install the latest ruby version and set it as the default version.

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

### Installing some gems

<details>
  <summary>If you are in <bold>China</bold></summary>

  :warning: If you are in China, you should update the way we'll install gem with the following commands.

```bash
# China only!
gem sources --remove https://rubygems.org/
gem sources -a https://gems.ruby-china.com/
gem sources -l
# *** CURRENT SOURCES ***
# https://gems.ruby-china.com/
# Ruby-china.com must be in the list now
```
</details>

All, please run the following line:

```bash
gem install rake bundler rspec rubocop rubocop-performance pry pry-byebug colored http
```

:heavy_check_mark: If you get `xx gems installed`, then all good :+1:

:x: If you encounter the following error:

```bash
ERROR: While executing gem ... (TypeError)
incompatible marshal file format (can't be read)
format version 4.8 required; 60.33 given
```

Run the following command:
```bash
rm -rf ~/.gemrc
```

Rerun the command to install the gems.

**Never** install a gem with `sudo gem install`! Even if you stumble upon a Stackoverflow answer (or the Terminal) telling you to do so.

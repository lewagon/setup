现在，你已经准备好了去安装最新Ruby版本并把它设置为默认版本。

运行下方这个指令，它会**花费一些时间（5-10分钟）**

```bash
rbenv install 2.6.6
```

当Ruby安装好后，运行下面这个指令来告诉系统使用2.6.6这个版本作为默认版本。

```bash
rbenv global 2.6.6
```

然后再次**重启**你的终端（关掉并重新打开它）。

```bash
ruby -v
```

你应该会看到`ruby 2.6.6p`。如果没有的话，询问一下老师。

## 安装一些gems

---

<details>
  <summary>点击这里，如果你在 :cn: <bold>中国</bold>的话</summary>


  &nbsp;

  :warning: 如果你在中国的话，你应该使用以下命令来安装gem。

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

---

无论你是不是在中国，请都运行下面的指令：

```bash
gem install rake bundler rspec rubocop rubocop-performance pry pry-byebug colored http
```

如果你遇到了以下的报错：

`
ERROR: While executing gem ... (TypeError)
incompatible marshal file format (can't be read)
format version 4.8 required; 60.33 given
`

运行以下的指令：

```bash
rm -rf ~/.gemrc
```

然后，重新运行安装gems的指令。

**永远不要**使用`sudo gem install`来安装一个gem！即使你偶然发现了一个网络上的答案（或者终端提示）叫你这么做。

## Command Line Tools

Open the terminal

![](images/open-terminal.png)

Type what is after the dollar sign `$`. The dollar sign means that you need to type what's after into the terminal.

```bash
$ xcode-select --install
```

It will open a window asking you if you want to install some software. Accept and wait. If it fails, try again the command line above, sometimes the Apple server are overloaded.

![](images/xcode-select-install.png)

Then in your terminal, accept the XCode license typing this:

```bash
$ sudo xcodebuild -license
```

It will ask for your password (because it needs to
perform some operation as root, i.e. administrator). This is your laptop session password,
the one you type when you boot your computer. Something to be aware of is that when you
type your password in the terminal, nothing print out. No asterixes like you are used to, this
is perfectly normal. Type your password and hit `Enter`.

Then it will display the XCode license, just press the `q` key. Then it will
ask you if you agree, type `agree` then hit `Enter`. Awesome!

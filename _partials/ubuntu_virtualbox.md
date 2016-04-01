## Virtual Box

If you are running a native Ubuntu (dual boot), **skip** this step.

You have to download 2 softwares:

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Ubuntu](http://releases.ubuntu.com/14.04.1/ubuntu-14.04.1-desktop-amd64.iso)

Ask a teacher for help to setup a VirtualBox machine (with at least 1G of RAM) and boot
the Ubuntu iso into it. Once Ubuntu is installed, follow the rest of this tutorial.

Open a Terminal and run these commands.

```bash
$ sudo apt-get install -y virtualbox-guest-dkms
$ sudo apt-get install -y virtualbox-guest-utils
$ sudo apt-get install -y virtualbox-guest-x11
```

Then restart your virtual machine.

```bash
$ sudo shutdown -r 0
```

If you have poor performance with your Virtual Machine, [try this](http://askubuntu.com/a/289758).

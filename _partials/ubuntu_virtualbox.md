## Virtual Box

If you installed Ubuntu in Virtual Box, not natively as dual boot, open
a terminal and run these commands. If you did not, **ignore** this step.

```bash
$ sudo apt-get install virtualbox-guest-dkms
$ sudo apt-get install virtualbox-guest-utils
$ sudo apt-get install virtualbox-guest-x11
```

Then restart your virtual machine.

```bash
$ sudo shutdown -r 0
```

If you have poor performance with your Virtual Machine, [try this](http://askubuntu.com/a/289758).
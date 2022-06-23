Hello and welcome to this Ubuntu cheatsheet.

The goal is to gather here all known issues and tips with the Ubuntu setup.

# Issues

## No Devices choice at reboot

Make sure Windows FastBoot is disabled and restart in **Advanced Mode**.

## No OS choice at reboot

Disable Windows FastBoot **&** Bios FastBoot (see below).

**OR**

Access the Bios and change Boot option **ONE by ONE** <=> choose an option, save, reboot, if your problem persists, come back to default Boot option, choose another option and move on.

## Disable Bios FastBoot

1. Restart your machine in default mode and keep pushing on <kbd>F2</kbd> or <kbd>F11</kbd> or <kbd>Suppr.</kbd> to access the Bios.
2. Look for the boot options to disable the Bios FastBoot

## GitHub CLI installation failure

If [the GitHub CLI installation instructions fail](https://github.com/lewagon/setup/blob/master/ubuntu.md#github-cli-installation), chances are that you have the package `gitsome` installed. This package provides a `gh` binary which can conflict with `gh` GitHub CLI binary. In this case, run `sudo apt remove gitsome` before running the GitHub CLI installation instructions again.

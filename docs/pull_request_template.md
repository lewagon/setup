# How to contribute to the Setup repository

## Before opening a Pull Request

We know that encountering issues can be frustrating but before opening a PR to modify the setup that can theoretically be used by a few thousand people:

- Are you the only one experiencing this issue?
- Is it a temporary issue?
- Is it a quick fix and shouldn't be used in the long term?

We currently have a cheatsheet for each OS for tips and / issues that don't belong to the setup itself, so feel free to have a look there first. Maybe your contributing should live there:

- [macOS](https://github.com/lewagon/setup/blob/master/docs/macos_cheatsheet.md)
- [Windows](https://github.com/lewagon/setup/blob/master/docs/windows_cheatsheet.md)
- [Ubuntu](https://github.com/lewagon/setup/blob/master/docs/ubuntu_cheatsheet.md)

## Opening a Pull Request

We have a specific architecture for the setup so we can reuse part of the content for different platforms (macOS/Windows/Ubuntu).

There are 2 main folders **_partials** and **images**:
- *images* is where the images live
- **partials_ is where the content live. For example, setting up Github is not platform dependent. So we have a `_partials/github.md` file with the guidelines to setup Github. This allows us to reuse the content described there.**

**Naming convention**

Partials prefixed with the OS are specific to only one OS. Partials shared among two or more OSes have no prefix.

**Build**

[`build.rb`](https://github.com/lewagon/setup/blob/master/build.rb) is the code that generates the 3 files `macos.md`, `ubuntu.md` & `windows.md` and the corresponding chinese translated versions. For each platform, there is a list of partials to use.

To update any content, it is required to update the matching partial. The CI will then run `ruby build.rb` and commit the changes to the main md files on the branch.

If you modify directly the destination file (`macos.md`, `ubuntu.md` & `windows.md`) without modifying the partials, your changes will be overridden the next time someone (or the CI) runs `ruby build.rb`

This is the flow you need to follow:
- Identify the partial(s) in which you want to make modifications
- Make changes
- Open PR
- Check files after the CI build
- Ask for a review

Many thanks for contributing 🙌 🚀

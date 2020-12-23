# How to contribute to the Setup repository

## Before opening a Pull Request

We know that encountering issues can be frustrating but before opening a PR to modify the setup that can theoretically be used by a few thousand people:

- Are you the only one experiencing this issue?
- Is it a temporary issue?
- Is it a quick fix and shouldn't be used in the long term?

We currently have 2 cheatsheets for tips and / issues that don't belong to the setup itself, so feel free to have a look there first. Maybe your contributing should live there:

- [Apple M1](https://github.com/lewagon/setup/blob/master/apple_m1_cheatsheet.md)
- [WSL 2](https://github.com/lewagon/setup/blob/master/wsl_cheatsheet.md)

## Opening a Pull Request

We have a specific architecture for the setup so we can reuse part of the content for different platforms (macOS/Ubuntu/Windows).

There is 2 main folders **_partials** and **images**:
- *images* is where the images live
- __partials_ is where the content live. For example, setting up Github is not platform dependent. So we have a `_partials/github.md` file with the guidelines to setup Github. This allows us to reuse the content described there.

`build.rb` is the code that generates the 3 files `macOs.md`, `UBUNTU.md` & `WINDOWS.md`. For each platform, there is a list of partials to use.
To update any content, it is required to update the matching partial and then run `ruby build.rb`.

If you modify directly the destination file (`macOs.md`, `UBUNTU.md` & `WINDOWS.md`) without modifying the partials, your changes will be overridden the next time someone runs `ruby build.rb`

The flow you need to respect if the following:

- Identify the partial in which you want to make modifications
- Make changes
- Run `ruby build.rb` 
- Open PR

Many thanks for contributing 🙌 🚀

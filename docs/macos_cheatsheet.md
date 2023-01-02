Hello and welcome to this macOS cheatsheet.

The goal is to gather here all known issues and tips with the macOS setup.

# Issues

## Brew HEAD not linked to origin/master ?

If you get one of the following error while installing a binary

```bash
~ % brew install git
fatal: Could not resolve HEAD to a revision
No available formula or cask for the name "git"
```
This should help
```bash
git -C $(brew --repository homebrew/core) checkout master
```

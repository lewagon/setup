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

## Error: Permission denied @ apply2files - /usr/local/lib/docker/cli-plugins

If you get a Homebrew error `Permission denied @ apply2files` with "docker" in the path that follows,

run
```
mkdir -p /Applications/Docker.app/Contents/Resources/cli-plugins
```
and then rerun `brew cleanup`.

See ![this page](https://flaviocopes.com/homebrew-fix-permission-denied-apply2files/) for more info


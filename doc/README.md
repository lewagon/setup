## Build guides

`bundle exec ruby build.rb` generates the setup guide markdown files at the repo root (e.g. `macos.md`, `macos.fr.md`).

Each file in `builds/` defines one guide:

```yaml
os: macos
locales: [en, cn, es, fr, pt]
partials:
  - intro              # local: _partials/intro.md / _partials/fr/intro.md
  - ruby               # local: _partials/ruby.md / _partials/fr/ruby.md
```

Partials without a `/` are loaded from `_partials/` (English) or `_partials/{locale}/` (other locales).
Partials with a `/` are fetched from GitHub: `{repo}/_partials/{locale}/{name}.md`. Remote repo branches and aliases are configured in `constants/repos.yml`.

Template variables available in all partials are defined in `constants/constants.yml`. The `os` variable is automatically set to the OS name for the current build (e.g. `macos`, `windows`, `ubuntu`). The `OS_MD` variable holds the output filename (e.g. `macos.md`, `macos.fr.md`).

CI runs the build on every push to master and commits the generated files if they changed.

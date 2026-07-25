# Homebrew tap for Seiza

Formulae and casks for [Seiza](https://github.com/theatrus/seiza), the
astronomical plate solver, and its native apps.

## Install

The Seiza CLI (macOS and Linux, builds from source):

```sh
brew install theatrus/seiza/seiza
```

Seiza for Mac (signed and notarized app, macOS 15+):

```sh
brew install --cask theatrus/seiza/seiza-mac
```

Or add the tap first and install by short name:

```sh
brew tap theatrus/seiza
brew install seiza
brew install --cask seiza-mac
```

After installing the CLI, download star catalogs with `seiza setup`.

## Updating

Version bumps land here with each upstream release. To bump by hand:

```sh
brew bump-formula-pr --url=https://github.com/theatrus/seiza/archive/refs/tags/v<version>.tar.gz seiza
brew bump-cask-pr --version=<version> seiza-mac
```

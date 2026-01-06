<!-- markdownlint-disable MD033 -->

# How to Upgrade Dotfiles

## Fetch and Merge Upstream Changes

```bash
cd ~/.dotfiles
git fetch --all
git status # check if there's any uncommitted, changes, commit them
git checkout -b moshe-changes-$(date "+%d-%m-%Y")
git merge moshe/master
```

Handle conflicts if any, then commit, review the changes and push.

## Neovim and related plugins

### Upgrade neovim to nightly

```bash
update-nvim-nightly
```

### Upgrade lazy.nvim plugins

- Open vim
- <kbd>\<leader\>z</kbd> to open lazy window (for Neovim plugins)
- <kbd>S</kbd> to sync
- <kbd>q</kbd> to quit the lazy window

### Upgrade Mason CLIs

- <kbd>\<leader\>cm</kbd> to open Mason window (for external CLIs)
- <kbd>U</kbd> to update all

## Upgrade asdf

Install all CLIs current version

```bash
asdf install
```

upgrade all plugins

```bash
asdf plugin update --all
```

## Mac Related

```bash
brew upgrade
```

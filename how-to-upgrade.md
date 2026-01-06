<!-- markdownlint-disable MD033 -->

# How to Upgrade Dotfiles

## Fetch and Merge Upstream Changes

> [!WARNING]
> Make sure to commit or stash your local changes before running these commands.

```bash
cd ~/.dotfiles
git fetch --all
git checkout -b moshe-changes-$(date "+%d-%m-%Y")
git merge moshe/master
```

Handle conflicts if any, then commit, review the changes and push.

> [!NOTE]
> Don't forget to checkout back to your `master` branch after merging. (and `git
pull`)

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

> [!NOTE]
> If some plugin installation fails, use <kbd>X</kbd> to clean and then
> `:restart` to reinstall the plugin automagically

<!-- markdownlint-disable-next-line MD028 -->

> [!NOTE]
> Sometimes when upgrading nvim-treesitter plugin, we may need to delete the
> entire treesitter parsers directory (`rm -rf ~/.local/share/nvim/treesitter`)
> and restart Neovim to let them install from fresh

### Upgrade Mason CLIs

- <kbd>\<leader\>cm</kbd> to open Mason window (for external CLIs)
- <kbd>U</kbd> to update all

## Upgrade asdf

Install all CLIs current version

```bash
asdf install
```

Upgrade all plugins

```bash
asdf plugin update --all
```

## Mac Related

```bash
brew upgrade
```

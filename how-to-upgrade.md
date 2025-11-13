# How to upgrade Neovim and related plugins

update-nvim-nightly
asdf plugin update --all
---

other window -> run this brew upgrade

open vim
click <leader>z
S to sync
q to quite the lazy window
<leader>cm to open MAson window
U to update all

---

now on a different window, navigate to dotfiles (~/.dotfiles)
git fetch --all
git status -> check if there's any uncommited, changes, commit them
git checkout -b moshe-changes-{DATE} (repclate the DATE)
git checkout moshe/master -- nvim to fetch all neovim changes
-----

open vim
stage all changes
commit && push

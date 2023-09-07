# .dotfiles
Just some dotfiles

## New Environment Setup
```bash
git clone --bare https://github.com/ignasva/.dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
exec zsh -l
```

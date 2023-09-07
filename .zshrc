# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# AWS
export AWS_PROFILE=
export AWS_DEFAULT_REGION=

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# poetry
export PATH="$HOME/.local/bin:$PATH"


#git
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
setopt prompt_subst
export PS1="%n@%m %1~%F{green}\$(parse_git_branch)%f %# "

# fix kubectl completion error
autoload -Uz compinit
compinit

# set alias
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH="$PATH:/opt/homebrew/bin/"

# pyenv settings
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# color
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF=$'%f'
COLOR_USR=$'%F{green}'
COLOR_DIR=$'%F{cyan}'
COLOR_GIT=$'%F{magenta}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

# kubectl completion
source <(kubectl completion zsh)

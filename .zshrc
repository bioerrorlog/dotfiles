
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
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
autoload -U colors && colors
PS1="%{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[cyan]%}%1~%{$reset_color%} %% "

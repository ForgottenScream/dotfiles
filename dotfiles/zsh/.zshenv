#For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

#For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

#For cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="nvim"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

#History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
#Maximum events for internal history
export HISTSIZE=50
#Maximum events in history file
export SAVEHIST=50

export DOTFILES="$HOME/dotfiles"

export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'" #make sure ripgrep is installed
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

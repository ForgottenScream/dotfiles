source "$XDG_CONFIG_HOME/zsh/aliases"

autoload -Uz compinit; compinit

#Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

fpath=($ZDOTDIR/external $fpath)

autoload -Uz prompt_purification_setup; prompt_purification_setup

#Push the current directory visited on to the stack.
setopt AUTO_PUSHD
#Do not store duplicate directories in the stack.
setopt PUSHD_IGNORE_DUPS
#Do not print the directory stack after using pushd or popd.
setopt PUSHD_SILENT

bindkey -v
export KEYTIMEOUT=1

autoload -UZ cursor_mode && cursor_mode
#colemak layout keys defined
zmodload zzsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'n' vi-down-line-or-history
bindkey -M menuselect 'e' vi-up-line-or-history
bindkey -M menuselect 'i' vi-forward-char

#set zsh to use neovim
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey-M vicmd v edit-command-line #press v to launch editor, :wq to save and quit

#bd source 
source ~/dotfiles/zsh/external/bd.zsh

#Custom Script source
source $DOTFILES/zsh/scripts.sh

#Fuzzy Finder 
#install fzf, ripgrep
if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

#Automatically Starting i3
if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# Disable history
unset HISTFILE
export HISTSIZE=0
export SAVEHIST=0

#Zsh Syntax Highlighting - stay at bottom of zshrc!!!
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# here is the beginnings of a zsh configuration

# The following lines were added by compinstall


zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 2 numeric
zstyle :compinstall filename '/Users/gregnisbet/.zshrc'

autoload -Uz compinit
compinit

# configure the history file size
# don't conflict with bash or tcsh or whatever
HISTFILE=~/.zsh_history
# lots of history
HISTSIZE=100000
# save lots of history
SAVEHIST=100000
# append to history file
setopt appendhistory autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

# ignore duplicatehistory
setopt HIST_IGNORE_DUPS

# set the prompt based on tcshrc
prompt="%U%m%u:%B%~%b%# "

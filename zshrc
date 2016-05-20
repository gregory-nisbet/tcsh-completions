# here is the beginnings of a zsh configuration

# The following lines were added by compinstall

bindkey "^[P" backward-char
bindkey "^[N" forward-char

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
#bindkey -e
# End of lines configured by zsh-newuser-install

# ignore duplicatehistory
setopt HIST_IGNORE_DUPS

# set the prompt based on tcshrc
prompt="%U%m%u:%B%~%b%# "

# tcsh-like history
# I don't know how these groups are different but they are
# bindkey "\eN" history-beginning-search-forward
# bindkey "\eP" history-beginning-search-backward
# bindkey "\eN" history-search-forward
# bindkey "\eP" history-search-backward
# bindkey "\eN" history-pattern-search-forward
# bindkey "\eP" history-pattern-search-backward
bindkey "\eP" history-beginning-search-backward
bindkey "\eN" history-beginning-search-forward
bindkey "\ep" history-beginning-search-backward
bindkey "\en" history-beginning-search-forward

# more stuff


# bindkey -v

# compatibility section, taken from
# Ubuntu (Debian?) /etc/csh.cshrc
# bindkey "\e[1~" beginning-of-line # home key
# bindkey "\e[7~" beginning-of-line # home urxvt
# bindkey "\e[2~" overwrite-mode # insert
# bindkey "\e[4~" end-of-line # end
# bindkey "\e[8~" end-of-line # end rxvt 

# set vimode

## tcsh delete does not delete on Mac OS X
#bindkey "^[[3~" delete-char
# tcsh reverse history search
# bindkey "^R" i-search-back
## note that i-search-fwd is unbound
#bindkey "^[[5~" history-search-backward
#bindkey "^[[6~" history-search-forward
## cocoa word movement
#bindkey "^[^[[D" backward-word
#bindkey "^[^[[C" forward-word
#bindkey "^[^[[A" beginning-of-line
#bindkey "^[^[[B" end-of-line

# It might be better to just
# test the `ls` command and see what options
# it supports
# --color=auto for GNU ls
# -G for BSD 
set color_auto = '--color=auto'
if ( `uname` == 'Darwin' ) then
    set color_auto = '-G'
endif

# aliases from Fedora:
# generally I do not like these things
# to be colorful
alias l. ls -d '.*' "$color_auto"
alias ll ls -l
alias lr '( ls -lAtrF | tail -n 20 )'
alias lrr ls -lAtrF
alias la ls -A

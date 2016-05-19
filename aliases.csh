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
alias l. ls -d "$color_auto" '.*'
alias ll ls -l
alias lr '( ls -lAtrF | tail -n 20 )'
alias lrr ls -lAtrF
alias la ls -A

# directory navigation aliases
alias .. 'cd ..'
alias - 'cd -'
# navigate to etc, quite useful
alias etc 'cd /etc'
# nagivate to opt
alias opt 'cd /opt'
# navigate to usr's opt
alias uopt 'cd ; cd opt'

# quiet find
alias findq \
    'sh -c '"'"'find "$@" 2>/dev/null'"'"' find'

# show the last 20 lines of git log.
alias gitlog \
    'git log | grep -v ^commit | head -n 20'

# show the last 40 lines of git log with everything
alias gitlogv \
    'git log | head -n 40'

# docker machine env format for csh
alias docker-machine-env-csh \
    "$tcshdir"/docker-machine-env-csh

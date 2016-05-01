# completion section
# useful resources
# https://github.com/sean-/cshrc (no explicit license)
# https://sourceforge.net/projects/tcshrc/ (GPL v2)
complete -%*        c/%/j/
complete chown      'p/1/u/'

# http://hea-www.harvard.edu/~fine/Tech/tcsh.html
complete cd 'C/*/d/'
complete rmdir 'C/*/d/'
complete ls 'C/*/d/'

# signal names
complete kill 'c/-/S/' 'p/1/(-)//'

# complete man pages to commands
complete which 'p/1/c/'
complete where 'p/1/c/'
complete man 'p/1/c/'

# aliases!
complete alias 'p/1/a/'
complete unalias 'p/1/a/'

# variables
complete unset 'p/1/s/'
complete set 'p/1/s/'

# environment variables
complete unsetenv 'p/1/e/'
complete setenv 'p/1/e/'
# (complete first part with environment varaible,
# add =, complete filename)
complete env 'c/*=/f/' 'p/1/e/=/' 'p/2/c/'

# limits
complete limit 'p/1/l/'

# keybindings
complete bindkey 'C/*/b/'

# groups
complete chgrp 'p/1/g/'

# users
complete chown 'p/1/u/'

# completions
complete uncomplete 'p/*/X/'

# rm (from https://www.ibm.com/support/knowledgecenter/SSLTBW_2.1.0/com.ibm.zos.v2r1.bpxa500/tcshcomplete.htm)
# don't delete source files
complete rm 'p/*/f:^'"$source_file"'/'

# vi everything but .o, .a, .pyc
complete vi 'p/*/f:^*.{o,a,pyc}/'
complete vim 'p/*/f:^*.{o,a,pyc}/'

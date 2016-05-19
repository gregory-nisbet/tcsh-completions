# python
complete python 'p/*/f:*.py/'

# perl
complete perl 'p/1/f:*.pl/'

# bash
# accept the .sh and .bash endings as valid
complete bash 'p/1/f:{*.sh,*.bash}/'

# sh
complete sh 'p/1/f:*.sh/'

# tcsh
# handle the case where you want the version
# and do normal completion after -b `--` in other
# programs
# for some reason 'c/-/(--version -f -b -c)' will
# autocomplete the --
complete tcsh \
    'c/-/(--version -f -b -c)/' \
    'n/-b/f:{*.csh, *.tcsh}/' \
    'p/1/f:{*.csh, *.tcsh}/'


# csh
complete csh 'p/1/f:.csh/'

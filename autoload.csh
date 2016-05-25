# turn on debugging
#set __autoload_debug

# this alias performs an autoload of the
# given file and prints that it succeeded
# if debugging is enabled
# \!:1
# is an escaped reference to the first argument
# of the alias
alias __autoload \
    source '$tcshdir/\!:1.csh ' ';' \
    'if ($?__autoload_debug) echo \!:1'

set noglob

__autoload aliases
__autoload completions
__autoload git 
__autoload languages
__autoload simple
__autoload find
__autoload ocamlfind
__autoload brew
__autoload waf

unset noglob

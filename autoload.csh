# turn on debugging
#set __autoload_debug

# this alias performs an autoload of the
# given file and prints that it succeeded
# if debugging is enabled
alias __autoload \
    source '$tcshdir/\!:1.csh ' ';' \
    'if ($?__autoload_debug) echo \!:1'

__autoload aliases
__autoload completions
__autoload git 
__autoload languages
__autoload simple
__autoload find
__autoload ocamlfind

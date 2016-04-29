set dir = "$HOME"/tcsh-completions
# git
#
# get the subcommands for git
set git_commands = (`"$dir"/git.pl --commands`)
complete git 'p/1/$git_commands/'

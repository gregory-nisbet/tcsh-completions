# This is a pure csh autocompleter for git, with essentially
# everything hard coded.

# TODO: decide as a matter of policy whether we include synonymous
# short options with long options as potential completion options
# odds are if you know the short option you'll just type it
# also whether to count '--' as a possible completion
# also, multiple flags for subcommands like add
# we can't really check whether `add` appears anywhere

# get the common options that you need to complete for git
# in the first position
set git_completion_commands = (\
add                  filter-branch        relink        \
am                   format-patch         remote        \
annotate             fsck                 repack        \
apply                gc                   replace       \
archive              get-tar-commit-id    request-pull  \
bisect               grep                 reset         \
blame                help                 revert        \
branch               imap-send            rm            \
bundle               init                 shortlog      \
checkout             instaweb             show          \
cherry               interpret-trailers   show-branch   \
cherry-pick          log                  stage         \
clean                merge                stash         \
clone                mergetool            status        \
column               mv                   submodule     \
commit               name-rev             subtree       \
config               notes                tag           \
describe             pull                 verify-commit \
diff                 push                 whatchanged   \
difftool             rebase               worktree      \
fetch                reflog\
)

# git usage string
# usage: git [--version] [--help] [-C <path>] [-c name=value]
#          [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
#           [-p|--paginate|--no-pager] [--no-replace-objects] [--bare]
#           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
#           <command> [<args>]

set git_main_options = ( \
    --version \
    --help \
    -C \
    -c \
    --exec-path \
    --html-path \
    --man-path \
    --info-path \
    -p \
    --paginate \
    --no-pager \
    --no-replace-objects \
    --bare \
    --git-dir \
    --work-tree \
    --namespace \
)

# options for git add
# git add [--verbose | -v] [--dry-run | -n] [--force | -f] [--interactive | -i] [--patch | -p]
#         [--edit | -e] [--[no-]all | --[no-]ignore-removal | [--update | -u]]
#         [--intent-to-add | -N] [--refresh] [--ignore-errors] [--ignore-missing]
#         [--] [<pathspec>...]

set git_add_options = (\
    --verbose \
    -v \
    --dry-run \
    -n \
    --force \
    -f \
    --interactive \
    -i \
    --patch \
    -p \
    --edit \
    -e \
    --all \
    --no-all \
    --ignore-removal \
    --no-ignore-removal \
    --update \
    -u \
    --intent-to-add \
    -N \
    --refresh \
    --ignore-errors \
    --ignore-missing \
    -- \
)


# we complete based on options first 
# after add complete the flags

# determine which branches are currently active in the cwd.
# `git rev-parse` determines whether we are in a git repository
# there's another issue here which is lines like (HEAD detached at upstream/master) which should be mapped to upstream master but is currently filtered out for whitespace reasons
alias __git_is_git 'git rev-parse >& /dev/null'
alias __git_branches '__git_is_git && ( git branch --color=never | cut -c 3 | grep -v \'^(\')'

complete git \
    'n/checkout/`__git_branches`/' \
    'n/status/(-v)/' \
    'p/1/$git_completion_commands/' \
    'C/-/$git_main_options/'

# completions for brew
#
# brew install | awk -F'/' '{print $NF}'

complete brew \
    'n/brew/(install search info)/' \
    'n/install/`brew search`/'

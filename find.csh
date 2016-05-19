# completions for find

complete find \
    'n/-name/f/' \
    'n/-newer/f/' \
    'n/-{,n}cpio/f/' \
    'n/-exec/c/' \
    'n/-ok/c/' \
    'n/-user/u/' \
    'n/-group/g/' \
    c/-/"(fstype name perm prune type user nouser \
        group nogroup size inum atime mtime ctime exec \
        ok print ls cpio ncpio newer xdev depth \
        daystart follow maxdepth mindepth noleaf version \
        anewer cnewer amin cmin mmin true false uid gid \
        ilname iname ipath iregex links lname empty path \
        regex used xtype fprint fprint0 fprintf \
        print0 printf not a and o or)"/ \
    'n/*/d/'



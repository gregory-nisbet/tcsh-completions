set csh_files = (\
    aliases.csh \
    completions.csh \
    git.csh \
    languages.csh \
    simple.csh \
    find.csh \
)

foreach csh_file ($csh_files)
    source $tcshdir/$csh_file
end

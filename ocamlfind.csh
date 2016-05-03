# ocamlfind is really annoying and the argument structure makes no sense
# we are going to try to add intelligent autocompletion here
complete ocamlfind \
    p/1/(opt)/ \
    c/-/(o package linkpkg)/

# tcsh-completions
A collection of completions for tcsh for Linux and OS X, and, tentatively FreeBSD and OpenBSD.

I'm trying to keep as many commands in pure csh as possible.

Git actually has a pretty good autocompleter available in git-contrib, but it has a dependency on bash.

The current git completer completes a commonly used subset of subcommands and completes the options that are associated with `git` without a subcommand.

the kinds of autocompleters available to you in tcsh are somewhat limited, but good for common use cases.

and don't work great for something like git that takes options and subcommands that take options as well.

    c/// <-- current word completion (replace word)
    C/// <-- current word completion (extend word)
    n/// <-- next word completion
    N/// <-- next word completion (match word two before)
    p/// <-- position dependent completion

a single command can have multiple completers associated with it, they are invoked in order.

Tcsh actually lacks functions and the equivalent of bash's `COMP_POINT` shell variable (it just has command line), so you can't actually tell where your cursor is at any given point. If you need to know which word you are currently in, I think the best you can do is

    complete my-command \
        p/1/`perl myscript.pl --position 1 --command-line $command_line`/ \
        p/2/`perl myscript.pl --position 2 --command-line $command_line`/ \
        p/3/`perl myscript.pl --position 3 --command-line $command_line`/

For the completers that get factored out into external scripts, I think I am going to use mainly this format.

The completer in git-contrib as actually somewhat primitive and doesn't consider `COMP_POINT` at all and just completes the last word, which

I could also do a 'bag of words' autocompleter for git that looks at the 

one option to make completion a little more intuitive for git would be to autocomplete options beginning with `--` to an option that directly applies to the git command 

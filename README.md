# tcsh-completions

A slowly growing collection of completions for tcsh for Linux, OS X, and, tentatively FreeBSD and OpenBSD.

The basic structure of this repository is intended to be something along the following lines:

completers will be written as either POSIX-compatible sh scripts (local is allowed because dash, ksh, and bash all support it), csh scripts (because if you're using tcsh then you have a csh), or perl (because perl is so common it might as well be a standard utility).

Watch out for CentOS, they don't distribute the whole perl standard library.

I have yet to actually define what the interface between the components is supposed to look like.

It is possible to read lines of output into an array using

    % set a = (`printf 'a\nb\n'`)

It is also possible to source files. So the individual completers could either be responsible for emitting csh which is then sourced, or just generating lines.

Generating the options dynamically seems okay if the amount of work can be kept to a reasonable level.
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

I could also do a 'bag of words' autocompleter for git that looks at all the options entered so far and attempts to determine which one is "incomplete" and then offer suggestions based on that. This autocompleter would ignore the position of the cursor as well as the order of arguments.

one option to make completion a little more intuitive for git would be to autocomplete options beginning with `--` to an option that directly applies to the git command 

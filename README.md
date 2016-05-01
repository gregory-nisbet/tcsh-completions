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

#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;
use Getopt::Long;

sub all_commands {
    # TODO: is the message provided by `git --help -a`
    # actually stable?

    # git --help -a gives us
    # all the commands
    my $commands_text = `git --help -a`;

    # we need to first break the help -a section into stanzas
    # separated by newlines

    my @stanzas = split "\n\n", $commands_text;

    # indices of various stanzas.
    my $USAGE_STRING = 0;
    my $PREAMBLE = 1;
    my $COMMANDS = 2;
    my $EXPLANATION = 3;

    # we just want the commands
    my @commands = split /\s+/, $stanzas[$COMMANDS];

    print join "\n", @commands;
}

sub main {
    my $want_commands;
    GetOptions(
        'commands' => \$want_commands,
    );

    if ($want_commands) {
        all_commands;
    }
}

main();

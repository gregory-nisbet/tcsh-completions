#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;
use Getopt::Long;
use autodie;

sub common_commands {
    my $help_text = `git --help`;
    
    my @stanzas = split "\n\n", $help_text;
    my $command_text = $stanzas[1];

    open my $fh, '<', \$command_text;

    # ignore the first line
    scalar readline($fh);
    while (<$fh>) {
        my $line = $_;
        $line =~ s/^\s*//;
        printf "%s\n", (split /\s+/, $line)[0];
    }
}


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

sub all_options {
    my $options_text = `git --help -a`;
}

sub main {
    my $all_commands;
    my $common_commands;
    GetOptions(
        'all-commands' => \$all_commands,
        'common-commands' => \$common_commands,
    );

    if ($common_commands) {
        common_commands;
    } elsif ($all_commands) {
        all_commands;
    }
}

main();

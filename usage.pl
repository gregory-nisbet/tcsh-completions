#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

sub parse_usage_string {
    my $usage_string = shift;
    # check that the beginning of the string
    # is actually usage: or Usage:
    $usage_string =~ /^[uU]sage[:]/ or die "not usage string";
    # remove the usage component
    # and any whitespace after it
    $usage_string =~ s/^[uU]sage[:]\s*//;
    # the first whitespace separated word is the 
    # name of the program
    $usage_string =~ /(\S+)/;
    my $name = $1;
    # get each of the options surrounded in brackets
    my @options = $usage_string =~ /\[.*?\]/g;
    return (name => $name, options => [@options]);
}

my $git_usage = <<GIT_USAGE;
usage: git [--version] [--help] [-C <path>] [-c name=value]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p|--paginate|--no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           <command> [<args>]
GIT_USAGE

print Dumper({parse_usage_string($git_usage)});

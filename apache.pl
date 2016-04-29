#!/usr/bin/env perl
use strict;
use warnings;
use File::Spec;
use Data::Dumper;

# get all non-hidden files in the directory

sub files {
    my $dir = shift;
    opendir(my $dh, $dir) or die "can't open file $dir $!";
    my @files = grep {not $_ =~ /^[.]/} readdir($dh);
    return @files;
}

# get all the mods in a directory

sub mods {
    map {s/([.]conf|[.]load)$//r} files('/etc/apache2/mods-available');
}


print join "\n", mods();

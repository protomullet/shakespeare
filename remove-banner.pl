#!/usr/bin/perl

my $inblock = 0;
while (<>) {
    if (/^\<\<THIS ELECTRONIC/) {
        $inblock=1;
    } elsif (/MEMBERSHIP\.\>\>/) {
        $inblock=0;
    } elsif ( ! $inblock) {
        print;
    }
}

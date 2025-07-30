#!/usr/bin/perl
# perl slurpsearch.pl
# slurp a file and do searches on it


use 5.020;
use strict;
use warnings;
use utf8;

my $infilename='Nkonya.fwdata';
use File::Slurper qw(read_text);

my $contents = read_text($infilename);
my @voguids = $contents =~ m/(?<=VirtualOrdering..guid..).{15}/g;
# my @head = @voguids[0..5000];
my $srchcnt = 0;
foreach my $findguid (@voguids) {
    last if !$findguid;
    my $count ; 
    $count = () = $contents =~ /$findguid/g if $findguid;
    say "$findguid occurs $count" if $count != 1;
    $srchcnt++ ; say STDERR "At $srchcnt look for $findguid found $count" if !($srchcnt % 100) ;
    }
say STDERR "Did $srchcnt searches";

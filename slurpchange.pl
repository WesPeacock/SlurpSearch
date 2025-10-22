#!/usr/bin/perl
# FILE=infile perl slurpchange.pl
# slurp a file and do searches on it

# Note that multiline changes in perl require tn */s* option.

# This example moves section headers into the following verse in a SFM Scripture
# It assumes that the text file has been run through oplsfm (i.e., the EOLs have been changed to #)

use 5.020;
use strict;
use warnings;
use utf8;
use open qw/:std :utf8/;
use English;

my $infilename= $ENV{FILE};
$infilename='NkonyaD1/00NKOU.opl' if !$infilename;

use File::Slurper qw(read_text);

my $contents = read_text($infilename);
$contents =~ s/(\\s([0-9])* [^#]*#)(.*?\\v [0-9]+#)/$3$1/sg;
print $contents;

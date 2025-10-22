# SlurpSearch A Script to Slurp and Search a file
A general program to Slurp a file into a perl string and do searches and changes on it

The example reads a FLEx fwdata file and searches for VirtualOrdering objects and finds if there are duplicate copies of the guid in the file.

Note that multiline searches in perl require tn */s* option.

The *slurpchange.pl* script handles multiline changes. The example moves section headers into the following verse for a SFM scripture file.

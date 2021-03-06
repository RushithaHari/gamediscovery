# ==============================================================================
# IMPORTS
# ==============================================================================
use strict;
use warnings;
require "../_shared/functions.pl";

# ==============================================================================
# MAIN LOOP
# ==============================================================================
while(<>){
    # split parts
    (my $source, my $type, my $target) = split(" ", $_, 3);

    # ==========================================================================
    # SOURCE
    # ==========================================================================
    my $sourceId;
    if($source =~ /.*resource\/(.+)>/){
        $sourceId = id($1);
    } else {
        next;
    }

    # ==========================================================================
    # TYPE
    # ==========================================================================
    my $typeId;
    if($type =~ /.*property\/(.+)>/){
        $typeId = id($1);
    } else {
        next;
    }

    # ==========================================================================
    # TARGET
    # ==========================================================================
    my $targetId;

    # parse target (entity)
    if($target =~ /.*resource\/(.+)>/){
        $targetId = id($1)
    # parse target (label)
    } elsif($target =~ /\"(.+)\"\@en/){
        $targetId = id($1)
    # parse target (anything else)
    } elsif($target =~ /\"(.+)\"\^\^/){
        $targetId = id($1)
    } else {
        next;
    }

    # ==========================================================================
    # OUTPUT
    # ==========================================================================
    print "$sourceId\t$typeId\t$targetId\n";
}

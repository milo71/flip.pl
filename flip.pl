#!/usr/bin/perl
    use strict;
    use warnings;
    use File::ReadBackwards;
    open FILE, ">g:\\TM1\\tm1s_flip.log" or die $!; 

    my $bw = File::ReadBackwards->new("g:\\TM1\\tm1s.log") or die $!;


    my $line;
    while (defined($line = $bw->readline)) {
        print FILE $line;
    }

    $bw->close();

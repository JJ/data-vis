#!/usr/bin/env perl

=head1 NAME

get-dates.pl - Get dates for change

=head1 SYNOPSIS

First, install needed modules

    cpanm install Git File::Slurp::Tiny Time::Piece

(you might have trouble with the "Git" part but if Git is installed on your system you're good to go"

Then run it. If there is a git repo in C</home/thatsme/repo>

    ./get-dates.pl <glob>

The quotes are important so that it is not expanded by bash.

=head1 SEE ALSO

Check out L<http://github.com/JJ/literaturame>, for some results, generated reports, R files for analyzing them, and so on. I would be grateful if you added your results to the L<https://github.com/JJ/literaturame/blob/master/data.md> file via pull request. 

=cut

use strict;
use warnings;

use v5.20;

use Git;
use Time::Piece;
use File::Slurp::Tiny qw(write_file);

my $filespec = shift || die "Usage: $0 <file glob between quotes> [git directory (defaults to .)]\n";
my $dir = shift || ".";

my $repo = Git->repository (Directory => $dir);
my @filespec = split(/ /,$filespec);

my @revs = $repo->command('log', '--format=%cd', '--date=local', '--', @filespec);
my @data = ("Fechas");

pop @revs; #Throwaway first commit
for my $date ( reverse @revs ) {
    my $this_time = Time::Piece->strptime( $date );
    say $this_time->
}




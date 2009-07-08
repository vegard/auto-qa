#! /usr/bin/perl

# This is a program that takes the input from standard input and parses it
# as a kernel log, splitting each boot-up into a separate file with the
# filename consisting of the current date and time and the version of the
# kernel that was logged.
#
# Author: Vegard Nossum <vegard.nossum@gmail.com>

use strict;
use warnings;

my $filename;
my $outfd;

log_open("unknown");

while (my $line = <>) {
	chomp $line;

	if ($line =~ m/^(?:\[[^\]]+\]\s+)Linux version ([^ ]+)/) {
		my $version = $1;

		log_close();
		log_open($version);
	}

	printf $outfd "%s\n", $line;
}

log_close();


sub log_open {
	my $version = shift;

	my @time = localtime time;
	$filename = sprintf "%04d-%02d-%02d %02d:%02d:%02d %s.txt",
		1900 + $time[5], $time[4], $time[3],
		$time[2], $time[1], $time[0], $version;

	open $outfd, '>', $filename;
}

sub log_close {
	return unless defined $outfd;

	close $outfd;
	printf "%s\n", $filename;
}

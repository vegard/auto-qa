#! /bin/perl

# Author: Vegard Nossum <vegard.nossum@gmail.com>

use strict;
use warnings;

my $version = `uname -r`;

my @modules = `find /lib/modules/$version/kernel/ -name '*.ko'`;
chomp @modules;

# known bad for 2.6.30-rc1
@modules = grep { !/\/nf.*\.ko$/ } @modules;
@modules = grep { !/\/ebt.log\.ko$/ } @modules;

# proprietary
@modules = grep { !/\/usual.tables\.ko$/ } @modules;

while (1) {
	if (int rand 2 == 0) {
		my $i = int rand @modules;
		my ($module) = ($modules[$i] =~ /\/([^\/]*)\.ko$/);

		`modprobe $module`;
	} else {
		my @lines = `cat /proc/modules`;
		chomp @lines;

		my @modules = ();
		for my $line (@lines) {
			my ($module, $size, $deps) = split m/\s+/, $line;

			push @modules, $module if $deps == 0;
		}

		my $i = int rand @modules;
		my $module = $modules[$i];

		`rmmod $module`;
	}
}

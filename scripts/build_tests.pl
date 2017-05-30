#!usr/bin/perl

use v5.22;
use strict;
use warnings;

use Data::Dumper;
use Math::Random::Secure qw(rand);

my @years = (2016 .. 2025);
my @month = (1 .. 12);
my @day = (1 .. 31);
my @service = ('morning', 'evening');
my @order = (1 .. 2);

open(OUT, '>data.txt');

for (1 .. 100) {
	my $year = &random(@years);
	my $month = &random(@month);
	my $day = &random(@day);
	my $ss = int rand(2);
	my $oo = int rand(2);

	say OUT qq{\t\$testReading = Date::Lectionary::Daily->new(
	    'date' => Time::Piece->strptime( "$year-$month-$day", "%Y-%m-%d" ) );
	is(
	    \$testReading->readings->{$service[$ss]}->{$order[$oo]},
	    '-',
		'The second reading for morning prayer on $year-$month-$day should be -'
	);\n};
}

close(OUT);

sub random() {
	my @object = @_;
	my $lower = $object[0];

	my $upper_len = scalar(@object);
	$upper_len = $upper_len -1;

	my $upper = $object[$upper_len];

	return int($lower + rand(($upper + 1) - $lower));
}
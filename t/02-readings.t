#!perl -T
use v5.22;

use strict;
use warnings;
use Test::More tests => 2;
use Test::Exception;

use Time::Piece;
use Date::Lectionary::Daily;

my $testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-03-11", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    'Exod. 1. 1-14, (15-21), 22-2. 10',
	'The first reading for morning prayer on 2017-03-11 should be Exod. 1. 1-14, (15-21), 22-2. 10'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-03-11", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    'Col. 1. 21-2. 7',
	'The first reading for morning prayer on 2017-03-11 should be Exod. 1. 1-14, (15-21), 22-2. 10'
);
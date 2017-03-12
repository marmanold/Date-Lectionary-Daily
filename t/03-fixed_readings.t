#!perl -T
use v5.22;

use strict;
use warnings;
use Test::More tests => 4;
use Test::Exception;

use Time::Piece;
use Date::Lectionary::Daily;

my $testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-12-24", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The first reading for morning prayer on 2017-12-24 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-12-24", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2017-12-24 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-12-24", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    'Zech. 2. 10-end',
	'The first reading for evening prayer on 2017-12-24 should be Zech. 2. 10-end'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-12-24", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    'Heb. 2. 10-18',
	'The second reading for evening prayer on 2017-12-24 should be Heb. 2. 10-18'
);
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

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-7-18", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2016-7-18 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-1-1", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2017-1-1 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2020-1-7", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2020-1-7 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-7-8", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2016-7-8 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2019-9-9", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2019-9-9 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2022-7-1", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2022-7-1 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2020-4-19", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2020-4-19 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-9-23", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2016-9-23 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2022-7-7", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2022-7-7 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-8-30", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2017-8-30 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2023-9-15", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2023-9-15 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-7-25", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2016-7-25 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-3-23", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2017-3-23 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2019-9-10", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2019-9-10 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2024-6-31", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2024-6-31 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2019-8-11", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2019-8-11 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2019-3-6", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2019-3-6 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2018-4-1", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2018-4-1 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2018-5-31", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2018-5-31 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-4-23", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2021-4-23 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2019-9-4", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2019-9-4 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2024-11-15", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2024-11-15 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-3-7", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2025-3-7 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-3-16", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2021-3-16 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-2-29", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2017-2-29 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-6-26", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2017-6-26 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2020-3-16", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2020-3-16 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2023-1-16", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2023-1-16 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-5-29", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2025-5-29 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2023-3-9", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2023-3-9 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-9-7", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2017-9-7 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-8-9", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2021-8-9 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-12-1", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2021-12-1 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-6-24", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2025-6-24 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2022-1-1", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2022-1-1 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2023-9-29", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2023-9-29 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2018-9-18", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2018-9-18 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2019-8-16", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2019-8-16 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-3-26", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2025-3-26 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-3-10", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2016-3-10 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-2-16", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2016-2-16 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-10-28", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2017-10-28 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2023-8-4", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2023-8-4 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-11-31", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2025-11-31 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-5-8", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2021-5-8 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-12-5", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2016-12-5 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2024-9-19", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2024-9-19 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-3-19", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2025-3-19 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2020-1-9", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2020-1-9 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2023-5-24", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2023-5-24 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-9-18", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2021-9-18 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2023-10-3", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2023-10-3 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-10-23", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2016-10-23 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-4-23", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2025-4-23 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2023-11-12", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2023-11-12 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2022-3-18", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2022-3-18 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-6-8", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2016-6-8 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-2-24", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2025-2-24 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-8-22", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2021-8-22 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-9-10", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2017-9-10 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-1-14", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2025-1-14 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2024-2-25", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2024-2-25 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-5-8", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2021-5-8 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-7-11", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2025-7-11 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2019-8-6", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2019-8-6 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2020-1-17", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2020-1-17 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-4-20", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2025-4-20 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2019-5-29", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2019-5-29 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2022-1-14", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2022-1-14 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-6-30", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2017-6-30 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-5-21", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2021-5-21 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-7-29", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2025-7-29 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-4-29", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2021-4-29 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2024-8-20", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2024-8-20 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-1-9", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2021-1-9 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-11-26", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2016-11-26 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2022-5-19", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2022-5-19 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-12-23", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2016-12-23 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2023-7-31", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2023-7-31 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2022-11-23", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2022-11-23 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-3-31", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2017-3-31 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-2-25", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2017-2-25 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-3-10", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2025-3-10 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2022-5-12", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2022-5-12 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-3-29", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2025-3-29 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-2-3", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2016-2-3 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-6-22", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2016-6-22 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-2-2", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2021-2-2 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2021-9-30", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2021-9-30 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-5-30", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2025-5-30 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2024-1-5", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2024-1-5 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2019-7-15", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2019-7-15 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2020-1-20", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2020-1-20 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2022-11-5", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{1},
    '-',
	'The second reading for morning prayer on 2022-11-5 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2016-6-31", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{2},
    '-',
	'The second reading for morning prayer on 2016-6-31 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2020-3-4", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2020-3-4 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2018-10-25", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2018-10-25 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2017-12-24", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2017-12-24 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2019-8-23", "%Y-%m-%d" ) );
is(
    $testReading->readings->{morning}->{2},
    '-',
	'The second reading for morning prayer on 2019-8-23 should be -'
);

$testReading = Date::Lectionary::Daily->new(
    'date' => Time::Piece->strptime( "2025-8-7", "%Y-%m-%d" ) );
is(
    $testReading->readings->{evening}->{1},
    '-',
	'The second reading for morning prayer on 2025-8-7 should be -'
);


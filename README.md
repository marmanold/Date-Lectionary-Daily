Date::Lectionary::Daily - Daily Readings for the Christian Lectionary

# VERSION

Version 1.20200102

# SYNOPSIS

    use Time::Piece;
    use Date::Lectionary::Daily;

    #Using the old ACNA Liturgical Daily Lectionary
    my $dailyReading = Date::Lectionary::Daily->new(
        'date' => Time::Piece->strptime("2017-12-24", "%Y-%m-%d"),
        'lectionary' => 'acna-xian'
    );
    say $dailyReading->readings->{evening}->{1}; #First lesson for evening prayer, Isaiah 51

    #Using the new ACNA Secular/Civil Daily Lectionary
    my $dailyNewReading = Date::Lectionary::Daily->new(
        'date' => Time::Piece->strptime( "2018-03-12", "%Y-%m-%d" ),
        'lectionary' => 'acna-sec'
    );
    say $dailyNewReading->readings->{morning}->{2}; #Second lesson for morning prayer, Matthew 5

# DESCRIPTION

Date::Lectionary::Daily takes a Time::Piece date and returns readings for morning and evening prayer for that date.

## CONSTRUCTOR ATTRIBUTES

### date

The Time::Piece object date of the day you woudl like the lessons for.

### lectionary

One of two choices \`acna-sec\` for the new secular calendar based ACNA daily lectionary or \`acna-xian\` for the previous liturgically-based ACNA daily lectionary.

If lectionary is not given at construction, the ACNA secular daily lectionary — \`acna-sec\` — will be used.

## ATTRIBUTES

### week

The name of the liturgical week in the lectionary; e.g. \`The First Sunday in Lent\`.

### day

The name of the day of the week; e.g. \`Sunday\`.

### tradition

Presently only returns \`acna\`.  Future version of the module may include daily lectionary from other traditions.

### type

Returns \`secular\` for daily lectionaries based on the secular/civil calendar and \`liturgical\` for daily lectionaries based on the liturgical calendar.

### readings

A hasref of the readings for the day.

# SUBROUTINES/METHODS

## BUILD

Constructor for the Date::Lectionary object.  Takes a Time::Piect object, `date`, to create the object.

## \_buildType

Private method to determine if the daily lectionary follows the secular calendar or the liturgical calendar.

## \_buildTradition

Private method to determine the Sunday lectionary tradition of the daily lectionary selected. Used to determine the liturgical week the day falls within.

## \_parseLectDB

Private method to open and parse the lectionary XML to be used by other methods to XPATH queries.

## \_checkFixed

Private method to determine if the day given is a fixed holiday rather than a standard day.

## \_buildReadingsLiturgical

Private method that returns an ArrayRef of strings for the lectionary readings associated with the date according to the liturgical calendar.

## \_buildReadingsSecular

Private method that returns an ArrayRef of strings for the lectionary readings associated with the date according to the secular calendar.

# AUTHOR

Michael Wayne Arnold, `<michael at rnold.info>`

# BUGS

<div>
    <a href="https://travis-ci.org/marmanold/Date-Lectionary-Daily"><img src="https://travis-ci.org/marmanold/Date-Lectionary-Daily.svg?branch=master"></a>
</div>

<div>
    <a href='https://coveralls.io/github/marmanold/Date-Lectionary-Daily?branch=master'><img src='https://coveralls.io/repos/github/marmanold/Date-Lectionary-Daily/badge.svg?branch=master' alt='Coverage Status' /></a>
</div>

Please report any bugs or feature requests to `bug-date-lectionary-daily at rt.cpan.org`, or through
the web interface at [http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Date-Lectionary-Daily](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Date-Lectionary-Daily).  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Date::Lectionary::Daily

You can also look for information at:

- RT: CPAN's request tracker (report bugs here)

    [http://rt.cpan.org/NoAuth/Bugs.html?Dist=Date-Lectionary-Daily](http://rt.cpan.org/NoAuth/Bugs.html?Dist=Date-Lectionary-Daily)

- AnnoCPAN: Annotated CPAN documentation

    [http://annocpan.org/dist/Date-Lectionary-Daily](http://annocpan.org/dist/Date-Lectionary-Daily)

- CPAN Ratings

    [http://cpanratings.perl.org/d/Date-Lectionary-Daily](http://cpanratings.perl.org/d/Date-Lectionary-Daily)

- Search CPAN

    [http://search.cpan.org/dist/Date-Lectionary-Daily/](http://search.cpan.org/dist/Date-Lectionary-Daily/)

# ACKNOWLEDGEMENTS

Many thanks to my beautiful wife, Jennifer, my amazing daughter, Rosemary, and my sweet son, Oliver.  But, above all, SOLI DEO GLORIA!

# LICENSE

Copyright 2017-2020 MICHAEL WAYNE ARNOLD

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1\. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2\. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

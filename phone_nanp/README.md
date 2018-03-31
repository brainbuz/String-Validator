# NAME

String::Validator::Phone::NANP - Validate North American Phone Numbers

# VERSION

version 1.90

# SYNOPSIS

String::Validator::Phone::NANP is part of the String Validator Collection. It checks a string
against validation rules for phone numbers from countries participating in the North American
Numbering Plan, which includes the United States and Canada.

# NAME

String::Validator::Phone::NANP - Check a Phone Number (North American Numbering Plan)!

# String::Validator Methods and Usage

Provides and conforms to the standard String::Validator methods,
please see String::Validator for general documentation, and
String::Validator::Common for information on the base String::Validator Class.

# Methods Specific to String::Validator::Phone::NANP

## Parameters to New with (default) behaviour.

    alphanum    (OFF) : Allow Alphanumeric formats.

## Original, String, International, Areacode, Parens, Exchange, Local

Returns:

Original: the Orignial string provided,

String: the internal representations of the phone number, which
is in the format of AREA-EXCHANGE-NUMBER, (the most commonly used representation in the United
States).

International: Prepends 1- in front of the string.

Areacode, Exchange, Local: Returns each of the 3 components of a number

Parens: Formats the number (AREA) EXCHANGE-LOCAL.

## Number\_Phone

Returns a Number::Phone::NANP object based on the current phone number, if the last
number evaluated was not valid it returns 0.

# Example

    use String::Validator::Phone::NANP ;
    my $Validator = String::Validator::Phone::NANP->new( alphanum => 1 ) ;

    if ( $Validator->IsNot_Valid( '6464') { say $Validator->Errstr() }
    # IsNot_Valid returns Errstr on failure.
    # So the preceding and following are the same.
    my $badone = $Validator->IsNot_Valid( '999') ;
    if ( $badone ) { say "$badone' } ;

    if ( $Validator->Is_Valid( '646-SG7-6464' ) { say "good" }
    say $Validator->Areacode ; # print the Areacode.
    my $PhoneNum = $Validator->Number_Phone ; # Get a Number Phone object.
    say $PhoneNum->country; # Prints the two letter country code of the number.

# ToDo

The major TO DO items are to provide String::Validator::Phone modules for other numbering
schemes and to fully encapsulate Number::Phone.

# AUTHOR

John Karr, `<brainbuz at brainbuz.org>`

# BUGS

Please report any bugs or feature requests to `bug-string-validator-phone at rt.cpan.org`, or through
the web interface at [http://rt.cpan.org/NoAuth/ReportBug.html?Queue=String-Validator-Phone](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=String-Validator-Phone).  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc String::Validator::Phone

You can also look for information at:

- RT: CPAN's request tracker (report bugs here)

    [http://rt.cpan.org/NoAuth/Bugs.html?Dist=String-Validator-Phone](http://rt.cpan.org/NoAuth/Bugs.html?Dist=String-Validator-Phone)

- AnnoCPAN: Annotated CPAN documentation

    [http://annocpan.org/dist/String-Validator-Phone](http://annocpan.org/dist/String-Validator-Phone)

- CPAN Ratings

    [http://cpanratings.perl.org/d/String-Validator-Phone](http://cpanratings.perl.org/d/String-Validator-Phone)

- Search CPAN

    [http://search.cpan.org/dist/String-Validator-Phone/](http://search.cpan.org/dist/String-Validator-Phone/)

# ACKNOWLEDGEMENTS

# LICENSE AND COPYRIGHT

Copyright 2012 John Karr.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, version 3 or at your option
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

A copy of the GNU General Public License is available in the source tree;
if not, write to the Free Software Foundation, Inc.,
59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

# AUTHOR

John Karr <brainbuz@brainbuz.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2014,2018 by John Karr.

This is free software, licensed under:

    The GNU General Public License, Version 3, June 2007

# NAME

String::Validator::Email - String::Validator for checking Email Addresses.

# VERSION

version 2.00

# SYNOPSIS

String::Validator::Email is part of the String Validator Collection. It will
check a string against any number of email validation rules, and optionally
against a second string (as in a confirmation box on a webform).

# NAME

String::Validator::Email - Check if a string is an email address.

# String::Validator Methods and Usage

Provides and conforms to all of the standard String::Validator methods,
please see String::Validator for general documentation, and
String::Validator::Common for information on the base String::Validator Class.

# Methods Specific to String::Validator::Email

## Parameters to New with (default) behaviour.

    mxcheck     (OFF) : Perform MX Lookup for Domain Given.
    tldcheck    (ON ) : Validate TLD against a List.
    fqdn        (ON ) : Require a Fully Qualified Domain Name.
    allow_ip    (OFF) : Allow @[ip] (forces tld & fqdn off.)
    min_len     (OFF)
    max_len     (OFF)

Important notes -- SVE uses Email::Valid, however, tldcheck is defaulted to on.
The choice to turn tldcheck should be obvious. The fudge and local\_rules
options are specific to aol and compuserve, and are not supported.
Finally mxcheck is not tried if there is already an error, since Email::Valid's
DNS check does not work, that is performed directly through Net::DNS.

## Expound

Email::Valid provides very terse errors, Expound provides errors more appropriate
for returning to an end user.

# Example

    use String::Validator::Email ;
    my $Validator = String::Validator::Email->new() ;
    if ( $Validator->Is_Valid( 'real@address.com' ) { say "good" }
    if ( $Validator->IsNot_Valid( 'bad@address=com') { say $Validator->Errstr() }

# AUTHOR

John Karr, `<brainbuz at cpan.org>`

# BUGS

Please report any bugs or feature requests to `bug-string-validator-email at rt.cpan.org`, or through
the web interface at [http://rt.cpan.org/NoAuth/ReportBug.html?Queue=String-Validator-Email](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=String-Validator-Email).  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc String::Validator::Email

# Bug Reports and Patches

Please submit Bug Reports and Patches via https://github.com/brainbuz/String-Validator.

# ACKNOWLEDGEMENTS

# LICENSE AND COPYRIGHT

Copyright 2018, 2012 John Karr.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; version 3 or at your option
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

This software is Copyright (c) 2018 by John Karr.

This is free software, licensed under:

    The GNU General Public License, Version 3, June 2007

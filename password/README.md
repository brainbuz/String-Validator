# NAME

String::Validator::Password - String::Validator Password Checking Module.

# VERSION

version 2.01

# SYNOPSIS

String::Validator::Password is part of the String Validator Collection. It will
check a string against any number of password validation rules, and optionally
against a second string (as in password confirmation box on a webform). The
primary Negative method returns 0 if the password passes all tests, or a string
describing the errors if it fails. The Positive Method returns 1 if the string
passes and 0 if it fails. The ErrString method returns the errors from the last
string processed.

# String::Validator Methods and Usage

Provides and conforms to all of the standard String::Validator methods, please see
String::Validator for general documentation.

# Methods Specific to String::Validator::Password

## Parameters to New

### Require or Deny Classes of Character

SVP knows about four classes of character -- **uc** (Upper Case), **lc** (Lower Case),
**num** (Digits), and **punct** (Everything Else). Types can be required or denied.
Thus these 8 arguments
**require\_lc**, **require\_uc**, **require\_num**, **require\_punct**, **deny\_punct**,
**deny\_lc**, **deny\_uc**, **deny\_num**, all of which take a numeric argument, and all of
which default to 0 if omitted.

When requiring and denying classes of characters the values of 0 and 1 work as expected,
where 0 means not to check this condition at all and 1 means to accept or reject based on
the presence of just 1 instance of the type. However, when used to set an amount, require
is interpreted as require at least X of this type, while deny is deny the character type
is encountered. require\_lc => 2 will result in a string with 2 or more lowercase characters
passing the test. deny\_lc => 2 will result in any string with lowercase characters being
rejected.

### Minimum number of Classes of Character

**min\_types** is used to specify the number of different character types required,
default is 2.

### Minimum and Maximum Length

**min\_len** and **max\_len** determine the respective minimum and maximum length
password to accept. Defaults are 6 and 64.

# Examples

To create a new instance, with all of the default values:

    my $Validator = String::Validator::Password->new() ;

Specify all of the default values:

    my $Validator = String::Validator::Password->new(
           require_lc => 0,
           require_uc => 0,
           require_punct => 0,
           require_num => 0,
           deny_lc => 0,
           deny_uc => 0,
           deny_punct => 0,
           deny_num => 0,
           min_types => 2,
           min_len => 6,
           max_len => 64,
           ) ;
    ) ;

Normally you would only specify values that were not the default.

    my $Validator = String::Validator::Password->new(
           require_lc => 2,
           require_uc => 2,
           min_types => 3,
           min_len => 8,
           max_len => 18,
           ) ;

Then to check a password you might write something like this:

    if( $Validator->IsNot_Valid( $password1, $passwordconfirm ) ) {
     die $Validator->errstr() ; }

# TO DO

Provide support for custom regexes, custom allow/deny lists, and checking against weak
password dictionaries.

# AUTHOR

John Karr, `<brainbuz at brainbuz.org>`

# BUGS

Please submit Bug Reports and Patches via https://github.com/brainbuz/String-Validator.

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc String::Validator::Password

# LICENSE AND COPYRIGHT

Copyright 2012, 2018 John Karr.

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

This software is Copyright (c) 2014-2019 by John Karr.

This is free software, licensed under:

    The GNU General Public License, Version 3, June 2007

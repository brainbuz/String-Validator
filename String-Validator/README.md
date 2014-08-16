# NAME

String::Validator - A Collection of Routines for validating and transforming strings

# VERSION

version 1.00

# NAME 

String::Validator

# VERSION

version 1.00

# Description

A Collection of Routines for validating and transforming strings

## Why String::Validator

You have a string and you need to know if it is what you need it to be.
You just wasted three hours before you realized it was going to take
longer than you thought and just started to poke around cpan to find
something to use instead. The String Validator Collection is what you are looking for.

Since as often as not you're not just validating strings, but also
trying to get them into a specific format, many String::Validator Modules
will do this.

### This Module is Empty

The Core Module, String::Validator is empty. It contains some common
documentation, and all other String::Validator Modules are dependencies
to install it. You can type cpanm String::Validator to install the current
version of all of the Modules.

# Methods Common to String::Validator Modules

## The New Method

The new method for String-Validators takes as an argument a hash of
parameters, these will be different for each module. See the specific
Module's Documentation.

## The Postive and Negative Method

The negative method **IsNot\_Valid** will return 0 (false) for a valid string
and the reason as a string for an invalid one.

The positive method **Is\_Valid** will return 1 (true) and 0 (false). To find out
why a string failed use the errstr method.

Both Is\_Valid and IsNot\_Valid will take either one string or two strings as
arguments. If two strings are provided they are compared. When two strings are
provided and do not match only 1 error is observed, because String::Validator cannot
know which (if either) to continue evaluating. If called subsequently the String() method will
return Null and the errorcnt() method will return 1.

## errstr, errcnt

**errcnt** returns the number of errors seen on the last call to Is/IsNot\_Valid.
**errstr** returns a string describing the errors encountered.

## String, Reformatting

The String method always returns the internal representation of the
last string evaluated by Is/IsNot\_Valid. The exceptions are that a new
String::Validator Object will return a NULL value, as it will following
a mismatch error when the string is passed twice.
String-Validators may provide reformat methods appropriate to their purpose
and will be documented in their own POD.

## Example

    my $Validator = String::Validator::Demo->new(
       format => 'fake', min_length => 6, max_length => 17 ) ;
    if ( $Validator->IsNot_Valid('ThisString') { do something }
        or
    unless ( $Validator->IsNot_Valid('ThatString') { die $Validator->errstr() }
        maybe
    if ( $Validator->IsNot_Valid('ThisString', 'RepeatThisString') { do something }
    say  $Validator->String ;

## CamelCase lowercase

The base class String::Validator::Common provides both the CamelCase and lowercase
versions of the methods it provides for use by the end user of the inheriting module,
this is done to make it even more convenient.

# Making Validator Better

Everything Validator does is a waste of time (if you had to do it yourself).
So if you find you've wasted time validating something that fits
with the Validator theme, write it up and send it in. If you think
Validator does a poor job of something, send us a better solution.
If you already made a module even better, Validator is all
about dependency on other modules that do validation just suggest.
If you read the sub-modules you'll see that many of them are just
wrappers around other validation modules.

# AUTHOR

John Karr <brainbuz@brainbuz.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2014 by John Karr.

This is free software, licensed under:

    The GNU General Public License, Version 3, June 2007
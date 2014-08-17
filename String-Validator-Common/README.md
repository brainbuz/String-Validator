# NAME

String::Validator::Common - Base Module for creating new String::Validator Modules.

# VERSION

version 1.00

# DESCRIPTION

A base module for use in creating new String Validators.

# NAME

String::Validator::Common - Routines shared by String::Validator Modules.

# VERSION

version 1.00

# String::Validator::Common Methods and Usage

## new

Modules Using String Validator Common use its' new method and then extend the
attributes in their own new methods.

    use String::Validator::Common;
    sub new {
    my $class = shift ;
    my $self = { @_ } ;
    use base ( 'String::Validator::Common' ) ;
    unless ( defined $self->{ some_param } )
      { $self->{ some_param } = 'somedefault'; }
    ...
    bless $self , $class ;
    return $self ;
    }

# Methods String::Validator::Common provides

## Check

Check is a stub subroutine, that you will replace in any Validator Module you write
with the code to validate the string. Is\_Valid and IsNot\_Valid base their results on Check. Check returns $self->{error}, if there are no errors this will be 0. When you
replace Check in your Validator Module you should implement the same behaviour so that IsValid and IsNot\_Valid work. 

## IsNot\_Valid

Takes a string and optionally a second string (if you want to make sure two copies of a string are identical as well). Runs the Check subroutine and returns $self->{errstring} if there is an error, otherwise it returns 0. This will evaluate to true if there was an error and false if the string was valid.

## Is\_Valid

Takes a string and optionally a second string (if you want to make sure two copies of a string are identical as well). Runs the Check subroutine and returns 1 if Check returned 0, and 0 if Check returned a true value. If you want ->Errcnt() count or ->Errstr you will need to request them via there methods before another string is processed.

## IncreaseErr

A String::Validator contains two error variables error and errstring. When an
error is found, simply pass a brief description to this method to increment
the errorcount, and append the present description to the errstring.

    if ( 1 != 2 ) { $self->IncreaseErr( qq /1 Still Doesn't equal 2!/ ) }

## Start

This method initializes three key values: $self->{errstring} ,
$self->{error}, and $self->{string} to NULL, 0, NULL. If no errors are found
error and errstring will remain 0 and NULL. string will be used to hold
the string being evaluated. Arguments are the
string to be evaluated and optionally a second string to be compared with the
first. If the strings are mismatched the sub will return 99, and string will
remain NULL, the inheriting module should immediately return the error and
not contine.

## Length

Checks $self->{ string } against $self->{ min\_length } and $self->{ max\_length }
If the length checks pass it returns 0, if one fails it immediately returns
the incremented value of error.

## CheckCommon

CheckCommon is just a shortcut to run Start and Length.

## Errstr, Errcnt, String

Provides these methods for inheritance as described in the String::Validator documentation.

## Version

Version returns the internal version number of the module.

## version, is\_valid, isnot\_valid, errcnt, errstr, string

Permit LowerCase invokation of these methods.

# AUTHOR

John Karr <brainbuz@brainbuz.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2014 by John Karr.

This is free software, licensed under:

    The GNU General Public License, Version 3, June 2007

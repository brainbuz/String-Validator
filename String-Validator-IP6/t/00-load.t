#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'String::Validator::IP6' ) || print "Bail out!\n";
}

diag( "Testing String::Validator::IP6 $String::Validator::IP6::VERSION, Perl $], $^X" );

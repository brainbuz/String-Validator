#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'String::Validator::URL' ) || print "Bail out!\n";
}

diag( "Testing String::Validator::URL $String::Validator::URL::VERSION, Perl $], $^X" );

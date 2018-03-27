#!perl

use Test::More ;

diag( "Testing String::Validator $String::Validator::VERSION, Perl $], $^X" );
use_ok( String::Validator::Lang::FR );
use_ok( String::Validator::Common);
# my $LANG = String::Validator::Lang::FR::new();
use Data::Printer;
# p $LANG;

my $Validator = String::Validator::Common->new(
		min_len => 6,
		max_len => 32,
		language => String::Validator::Lang::FR::new(),
		) ;
# p $Validator;

ok(1);

done_testing();
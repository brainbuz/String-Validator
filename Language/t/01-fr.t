#!perl

use Test::More ;
use String::Validator::Password;

diag( "Testing String::Validator $String::Validator::VERSION, Perl $], $^X" );
use_ok( String::Validator::Language::FR );
use_ok( String::Validator::Common);
# my $LANG = String::Validator::Lang::FR::new();
use Data::Printer;
# p $LANG;

my $Validator = String::Validator::Password->new(
		min_len => 6,
		max_len => 32,
		language => String::Validator::Language::FR::new(),
		) ;

like( $Validator->IsNot_Valid( 'fish'), qr/Ne respecte pas la longeur minimale imposée 6/,
	'test an invalid string and expect the error in french.'

	);

ok(1);

done_testing();
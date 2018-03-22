#!perl -T
# String Validator Common.

# Test that messages can be over-ridden.

use Test::More tests => 4;

BEGIN {
    use_ok( 'String::Validator::Common' ) || print "Bail out!\n";
}

diag( "Testing String::Validator::Common $String::Validator::Common::VERSION, Perl $], $^X" );

my $Validator = String::Validator::Common->new(
	max_len => 7,
	language => { Common => {
		        strings_not_match => 'I haz different strings',
		        tooshort => " Strin iz 2 short  ",
		        toolong =>  " Strin iz 2 long ",
			},
			LOLCat => { cheeseburger => 'I haz cheeseburger'}
		}
	) ;

is ( $Validator->Start( 'aBC123@123.net', '1234567@689.org' ), 99,
	'Mismatched strings fail.' ) ;
like( 	$Validator->Errstr(),
		qr/I haz different strings/,
		'The error string should tell us it is too short, in LOLCat.') ;

$Validator->CheckCommon( 'snargle@snugg.com', 'snargle@snugg.com') ;

like( 	$Validator->Errstr(),
		qr/Strin iz 2 long /,
		'the next error is too long, in LOLCat.') ;

#done_testing();
package String::Validator::Lang::FR ;

sub new {
	return {
	        common_strings_not_match => 'Les chaînes de caractères ne correspondent pas.',
	        common_tooshort => " Ne respecte pas la longeur minimale imposée ",
	        common_toolong =>  " Ne respecte pas la longueur maximal imposée ",
	}
}

1;
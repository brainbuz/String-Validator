package String::Validator::Language::FR ;

sub new {
	return {
	        common_strings_not_match => 'Les chaînes de caractères ne correspondent pas.',
	        common_tooshort => " Ne respecte pas la longeur minimale imposée ",
	        common_toolong =>  " Ne respecte pas la longueur maximal imposée ",
	        password_mintypes => sub {
				my $self = shift @_;
					return "$self->{types_found} contraintes ont été trouvées, $self->{min_types} est requis.";
			},
			password_minoftype => sub {
				my ( $required, $type ) = @_;
				if ( $type eq 'num') { $type = 'numérique'}
				return "A pire $required caractères de $type est requis.";
			},
			password_typeprohibit => sub {
				my $type = shift @_;
				if ( $type eq 'num') { $type = 'numérique'}
				return "Caractères de $type est interdit."
			},
	}
}

1;

=pod

For Documentation of this and other String::Validator::Langauge Modules please see String::Validator::Langauge, String::Validator::Commond, and String::Validator.
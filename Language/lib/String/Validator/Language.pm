package String::Validator::Language;

# ABSTRACT: Languages for String::Validator

use 5.008;

1;

=pod

=head1 String::Validator::Language

Provides Language Customizations for String Validator

=head1 SYNOPSIS

 my $TranslatedValidator =
     String::Validator::SomeValidator->new(
         language=> String::Validator::Language::CHACKOBSA->new );

=head1 LANGUAGES AVAILABLE

 LANGUAGE | MODULE                              | Supported Modules
 ---------|-------------------------------------|-----------------------------
 French   | String::Validator::Language::FR     | common, password



=cut
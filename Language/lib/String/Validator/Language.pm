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
 English  | String::Validator::Language::EN     | *

=head2 Language::EN

English is the default language, all of the messages from all of the modules
are in English, use it as a template for Language Customization when creating
new Language Modules.

=head1 Acknowledgements

French translation submitted by Antoine Gallavardin.


=cut
# NAME

String::Validator::Language - Languages for String::Validator

# VERSION

version 1.96

# SYNOPSIS

    my $TranslatedValidator =
        String::Validator::SomeValidator->new(
            language=> String::Validator::Language::CHACKOBSA->new );

# String::Validator::Language

Provides Language Customizations for String Validator

# LANGUAGES AVAILABLE

    LANGUAGE | MODULE                              | Supported Modules
    ---------|-------------------------------------|-----------------------------
    French   | String::Validator::Language::FR     | common, password
    English  | String::Validator::Language::EN     | *

## Language::EN

English is the default language, all of the messages from all of the modules
are in English, use it as a template for Language Customization when creating
new Language Modules.

# Acknowledgements

# AUTHOR

John Karr <brainbuz@brainbuz.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2018 by John Karr.

This is free software, licensed under:

    The GNU General Public License, Version 3, June 2007

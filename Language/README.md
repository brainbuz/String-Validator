# NAME

String::Validator::Language - Languages for String::Validator

# VERSION

version 1.95

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

# AUTHOR

John Karr <brainbuz@brainbuz.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2018 by John Karr.

This is free software, licensed under:

    The GNU General Public License, Version 3, June 2007

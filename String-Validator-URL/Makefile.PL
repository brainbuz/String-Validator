use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'String::Validator::URL',
    AUTHOR              => q{John Karr <brainbuz@brainbuz.org>},
    VERSION_FROM        => 'lib/String/Validator/URL.pm',
    ABSTRACT_FROM       => 'lib/String/Validator/URL.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'gpl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'String-Validator-URL-*' },
);

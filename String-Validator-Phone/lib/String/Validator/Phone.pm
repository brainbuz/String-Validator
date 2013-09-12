package String::Validator::Phone;

use 5.006;
use strict;
use warnings;
use String::Validator::Common ;
use Number::Phone ;

=head1 NAME

String::Validator::Phone - Check a Phone Number!

=head1 VERSION

Version 0.10

=cut

our $VERSION = '0.10';

sub new {
    my $class = shift ;
    my $self = { @_ } ;
    use base ( 'String::Validator::Common' ) ;
    bless $self, $class ;
    return $self ;
}

=head1 SYNOPSIS

Check and reformat phone numbers.

=head1 AUTHOR

John Karr, C<< <brainbuz at brainbuz.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-string-validator-phone at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=String-Validator-Phone>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc String::Validator::Phone


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=String-Validator-Phone>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/String-Validator-Phone>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/String-Validator-Phone>

=item * Search CPAN

L<http://search.cpan.org/dist/String-Validator-Phone/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 John Karr.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; version 3 or at your option
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

A copy of the GNU General Public License is available in the source tree;
if not, write to the Free Software Foundation, Inc.,
59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.


=cut

1; # End of String::Validator::Phone

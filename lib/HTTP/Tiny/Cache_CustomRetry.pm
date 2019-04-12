package HTTP::Tiny::Cache_CustomRetry;

# DATE
# VERSION

use strict;
use warnings;

use HTTP::Tiny::Cache ();
use HTTP::Tiny::CustomRetry ();

our @ISA = qw(HTTP::Tiny::CustomRetry);
@HTTP::Tiny::CustomRetry::ISA = qw(HTTP::Tiny::Cache);

1;
# ABSTRACT: Cache response + retry failed request

=head1 SYNOPSIS

 use HTTP::Tiny::Cache_CustomRetry;


=head1 DESCRIPTION

EXPERIMENTAL / PROOF-OF-CONCEPT ONLY.

This class combines the functionalities of L<HTTP::Tiny::Cache> (HT:Cache) and
L<HTTP::Tiny::CustomRetry> (HT:CustomRetry). Since both HT:Cache and
HT:CustomRetry both extend L<HTTP::Tiny> (HT), this module modifies
HT:CustomRetry's C<@ISA> to point to HT:Retry instead. This is a hack and
probably only serves to show the limitation of subclassing mechanism for adding
functionalities, like we see in the L<WWW::Mechanize> land.


=head1 SEE ALSO

L<HTTP::Tiny::Cache>, L<HTTP::Tiny::CustomRetry>

L<HTTP::Tiny>

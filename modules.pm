package modules;

our $VERSION = '0.01';

sub import
{
	my $package = shift;

	my $context = scalar caller;

	eval "package $context; use $_" for @_;
}

# Preloaded methods go here.

1;
__END__

=head1 NAME

modules - loads several modules with single use-command

=head1 SYNOPSIS

  use modules qw(strict warnings 5.006 Data::Dumper);

		# and now we can use i.e. Data::Dumper

	print Dumper { one => 1, two => 2 };

=head1 DESCRIPTION

If you are bored by multiple 'use'-statement and asked why you cannot load
several modules with one single 'use'-command: You will love 'modules', because
thats what it does.

Ironically 'modules' is a module. The name was choosen, because the 'use modules'
construct sounds self-explanatory.

=head2 EXAMPLE

use modules qw(strict warnings 5.006 Data::Dumper);

becomes the short form for:

use 5.006;
use strict;
use warnings;
use Data::Dumper;

=head2 EXPORT

None by default.

=head1 AUTHOR

Murat Ünalan, E<lt>murat.uenalan@charite.deE<gt>

=head1 COPYRIGHT NOTICE

Copyright (c) 2002 Murat Ünalan. All rights reserved.

This program is free software; you can redistribute it and/or modify it

under the same terms as Perl itself.

=head1 SEE ALSO

L<perl>.

=cut

package Foo::Schema::ResultSet;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;

extends 'DBIx::Class::ResultSet';

# as suggested on http://www.perlmonks.org/?node_id=968402
sub BUILDARGS { $_[2] }

__PACKAGE__->meta->make_immutable;

1;

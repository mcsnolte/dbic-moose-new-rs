package Foo::Schema;

use strict;
use warnings;

use base 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces(

	default_resultset_class => '+Foo::Schema::ResultSet',
);

1;


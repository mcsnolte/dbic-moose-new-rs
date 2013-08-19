package Foo::Schema::Result::Bar;

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->table('bar');

__PACKAGE__->add_columns(

	bar_id => {
		data_type         => 'int',
		is_auto_increment => 1,
	},
);

__PACKAGE__->set_primary_key(qw{bar_id});

1;


#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 2;

use Foo::Schema;
my $schema = Foo::Schema->connect('dbi:SQLite:dbname=:memory:');
$schema->deploy();

new_result: {

	# works
	my $bar = $schema->resultset('Bar')->new_result( {} );
	ok $bar;
}

just_new: {

	# error: Can't call method "isa" on unblessed reference at .../DBIx/Class/ResultSet.pm line 245.
	# why????
	my $bar = $schema->resultset('Bar')->new( {} );
	ok $bar;
}


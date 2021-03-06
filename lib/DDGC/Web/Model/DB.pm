package DDGC::Web::Model::DB;

use Moose;
extends 'Catalyst::Model::DBIC::Schema';

use DDGC::DB;

__PACKAGE__->config(
	schema_class => 'DDGC::DB',
	connect_info => DDGC::DB::connect_info,
);

1;
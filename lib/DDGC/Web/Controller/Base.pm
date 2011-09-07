package DDGC::Web::Controller::Base;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

sub base :Chained('/base') :PathPart('base') :CaptureArgs(0) {
    my ( $self, $c ) = @_;
}

sub captcha :Chained('base') :Args(0) {
	my ($self, $c) = @_;
	$c->create_captcha();
}

sub about :Chained('base') :Args(0) {
	my ($self, $c) = @_;
}

sub privacy :Chained('base') :Args(0) {
	my ($self, $c) = @_;
}

sub termsofuse :Chained('base') :Args(0) {
	my ($self, $c) = @_;
}

__PACKAGE__->meta->make_immutable;

1;

package WebService::TypePad::Noun::Relationships;
use strict;
use warnings;
use Carp qw(croak);
use WebService::TypePad::Util::Coerce;
use WebService::TypePad::Task;

sub _new_for_client {
    my ($class, $typepad) = @_;
    my $self = bless [ $typepad ], $class;
    return $self;
}
sub client {
    return $_[0][0];
}

sub get_list<relationship>_task {
    my ($self, %params) = @_;
    my $list<relationship>_param = delete $params{list<relationship>};
    my $obj = delete $params{list<relationship>};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'relationships', $list<relationship>_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_list<relationship> {
    my ($self, %params) = @_;
    my $task = $self->get_list<relationship>_task(%params);
    my $request = $self->client->new_request();
    $request->add_task('', $task);
    my $result = $request->run();
    my $response = $result->{''};
    if (UNIVERSAL::isa($response, 'HTTP::Response')) {
        die $response;
    }
    else {
        return $response;
    }
}

sub get_list<relationship>_status_task {
    my ($self, %params) = @_;
    my $list<relationship>_param = delete $params{list<relationship>};
    my $obj = delete $params{list<relationship>};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'relationships', $list<relationship>_param, 'status' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_RelationshipStatus_out($dict);
        },
    );
}

sub get_list<relationship>_status {
    my ($self, %params) = @_;
    my $task = $self->get_list<relationship>_status_task(%params);
    my $request = $self->client->new_request();
    $request->add_task('', $task);
    my $result = $request->run();
    my $response = $result->{''};
    if (UNIVERSAL::isa($response, 'HTTP::Response')) {
        die $response;
    }
    else {
        return $response;
    }
}

1;

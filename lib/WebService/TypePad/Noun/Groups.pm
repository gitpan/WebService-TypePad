package WebService::TypePad::Noun::Groups;
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

sub get_group_task {
    my ($self, %params) = @_;
    my $group_param = delete $params{group};
    my $obj = delete $params{group};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'groups', $group_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_Group_out($dict);
        },
    );
}

sub get_group {
    my ($self, %params) = @_;
    my $task = $self->get_group_task(%params);
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

sub get_group_memberships_task {
    my ($self, %params) = @_;
    my $group_param = delete $params{group};
    my $obj = delete $params{group};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'groups', $group_param, 'memberships' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_group_memberships {
    my ($self, %params) = @_;
    my $task = $self->get_group_memberships_task(%params);
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

sub get_group_admin_memberships_task {
    my ($self, %params) = @_;
    my $group_param = delete $params{group};
    my $obj = delete $params{group};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'groups', $group_param, 'memberships', '@admin' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_group_admin_memberships {
    my ($self, %params) = @_;
    my $task = $self->get_group_admin_memberships_task(%params);
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

sub get_group_member_memberships_task {
    my ($self, %params) = @_;
    my $group_param = delete $params{group};
    my $obj = delete $params{group};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'groups', $group_param, 'memberships', '@member' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_group_member_memberships {
    my ($self, %params) = @_;
    my $task = $self->get_group_member_memberships_task(%params);
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

sub get_group_events_task {
    my ($self, %params) = @_;
    my $group_param = delete $params{group};
    my $obj = delete $params{group};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'groups', $group_param, 'events' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Event_out);
        },
    );
}

sub get_group_events {
    my ($self, %params) = @_;
    my $task = $self->get_group_events_task(%params);
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

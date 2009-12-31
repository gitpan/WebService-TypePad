package WebService::TypePad::Noun::Users;
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

sub get_user_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_User_out($dict);
        },
    );
}

sub get_user {
    my ($self, %params) = @_;
    my $task = $self->get_user_task(%params);
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

sub get_user_profile_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'profile' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_UserProfile_out($dict);
        },
    );
}

sub get_user_profile {
    my ($self, %params) = @_;
    my $task = $self->get_user_profile_task(%params);
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

sub get_user_memberships_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'memberships' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_user_memberships {
    my ($self, %params) = @_;
    my $task = $self->get_user_memberships_task(%params);
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

sub get_user_admin_memberships_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'memberships', '@admin' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_user_admin_memberships {
    my ($self, %params) = @_;
    my $task = $self->get_user_admin_memberships_task(%params);
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

sub get_user_member_memberships_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'memberships', '@member' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_user_member_memberships {
    my ($self, %params) = @_;
    my $task = $self->get_user_member_memberships_task(%params);
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

sub get_user_memberships_by_group_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $by_group_param = delete $params{by_group};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'memberships', '@by-group', $by_group_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_user_memberships_by_group {
    my ($self, %params) = @_;
    my $task = $self->get_user_memberships_by_group_task(%params);
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

sub get_user_favorites_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'favorites' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Favorite_out);
        },
    );
}

sub get_user_favorites {
    my ($self, %params) = @_;
    my $task = $self->get_user_favorites_task(%params);
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

sub get_user_blogs_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'blogs' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Blog_out);
        },
    );
}

sub get_user_blogs {
    my ($self, %params) = @_;
    my $task = $self->get_user_blogs_task(%params);
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

sub get_user_relationships_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'relationships' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_user_relationships {
    my ($self, %params) = @_;
    my $task = $self->get_user_relationships_task(%params);
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

sub get_user_follower_relationships_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'relationships', '@follower' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_user_follower_relationships {
    my ($self, %params) = @_;
    my $task = $self->get_user_follower_relationships_task(%params);
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

sub get_user_relationships_by_group_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $by_group_param = delete $params{by_group};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'relationships', '@by-group', $by_group_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_user_relationships_by_group {
    my ($self, %params) = @_;
    my $task = $self->get_user_relationships_by_group_task(%params);
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

sub get_user_following_relationships_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'relationships', '@following' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Relationship_out);
        },
    );
}

sub get_user_following_relationships {
    my ($self, %params) = @_;
    my $task = $self->get_user_following_relationships_task(%params);
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

sub get_user_events_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'events' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Event_out);
        },
    );
}

sub get_user_events {
    my ($self, %params) = @_;
    my $task = $self->get_user_events_task(%params);
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

sub get_user_events_by_group_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $by_group_param = delete $params{by_group};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'events', '@by-group', $by_group_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Event_out);
        },
    );
}

sub get_user_events_by_group {
    my ($self, %params) = @_;
    my $task = $self->get_user_events_by_group_task(%params);
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

sub get_user_notifications_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'notifications' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Event_out);
        },
    );
}

sub get_user_notifications {
    my ($self, %params) = @_;
    my $task = $self->get_user_notifications_task(%params);
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

sub get_user_notifications_by_group_task {
    my ($self, %params) = @_;
    my $user_param = delete $params{user};
    my $by_group_param = delete $params{by_group};
    my $obj = delete $params{user};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'users', $user_param, 'notifications', '@by-group', $by_group_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Event_out);
        },
    );
}

sub get_user_notifications_by_group {
    my ($self, %params) = @_;
    my $task = $self->get_user_notifications_by_group_task(%params);
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

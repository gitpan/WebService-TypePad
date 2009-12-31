package WebService::TypePad::Noun::Assets;
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

sub get_asset_task {
    my ($self, %params) = @_;
    my $asset_param = delete $params{asset};
    my $obj = delete $params{asset};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'assets', $asset_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_Asset_out($dict);
        },
    );
}

sub get_asset {
    my ($self, %params) = @_;
    my $task = $self->get_asset_task(%params);
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

sub get_asset_favorites_task {
    my ($self, %params) = @_;
    my $asset_param = delete $params{asset};
    my $obj = delete $params{asset};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'assets', $asset_param, 'favorites' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Favorite_out);
        },
    );
}

sub get_asset_favorites {
    my ($self, %params) = @_;
    my $task = $self->get_asset_favorites_task(%params);
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

sub get_asset_comments_task {
    my ($self, %params) = @_;
    my $asset_param = delete $params{asset};
    my $obj = delete $params{asset};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'assets', $asset_param, 'comments' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Comment_out);
        },
    );
}

sub get_asset_comments {
    my ($self, %params) = @_;
    my $task = $self->get_asset_comments_task(%params);
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

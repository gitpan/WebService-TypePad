package WebService::TypePad::Noun::Blogs;
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

sub get_blog_task {
    my ($self, %params) = @_;
    my $blog_param = delete $params{blog};
    my $obj = delete $params{blog};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'blogs', $blog_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_Blog_out($dict);
        },
    );
}

sub get_blog {
    my ($self, %params) = @_;
    my $task = $self->get_blog_task(%params);
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

sub get_blog_post_by_email_settings_by_user_task {
    my ($self, %params) = @_;
    my $blog_param = delete $params{blog};
    my $by_user_param = delete $params{by_user};
    my $obj = delete $params{blog};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'blogs', $blog_param, 'post-by-email-settings', '@by-user', $by_user_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_MobileProfile_out($dict);
        },
    );
}

sub get_blog_post_by_email_settings_by_user {
    my ($self, %params) = @_;
    my $task = $self->get_blog_post_by_email_settings_by_user_task(%params);
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

sub get_blog_page_assets_task {
    my ($self, %params) = @_;
    my $blog_param = delete $params{blog};
    my $obj = delete $params{blog};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'blogs', $blog_param, 'page-assets' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Page_out);
        },
    );
}

sub get_blog_page_assets {
    my ($self, %params) = @_;
    my $task = $self->get_blog_page_assets_task(%params);
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

sub get_blog_published_post_assets_task {
    my ($self, %params) = @_;
    my $blog_param = delete $params{blog};
    my $obj = delete $params{blog};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'blogs', $blog_param, 'post-assets', '@published' ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_list_out($dict, \&WebService::TypePad::Util::Coerce::coerce_Post_out);
        },
    );
}

sub get_blog_published_post_assets {
    my ($self, %params) = @_;
    my $task = $self->get_blog_published_post_assets_task(%params);
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

package WebService::TypePad::Noun::Applications;
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

sub get_application_task {
    my ($self, %params) = @_;
    my $application_param = delete $params{application};
    my $obj = delete $params{application};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'applications', $application_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_Application_out($dict);
        },
    );
}

sub get_application {
    my ($self, %params) = @_;
    my $task = $self->get_application_task(%params);
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

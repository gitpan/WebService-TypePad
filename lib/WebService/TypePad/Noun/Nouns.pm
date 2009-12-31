package WebService::TypePad::Noun::Nouns;
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

sub get_endpoint_task {
    my ($self, %params) = @_;
    my $endpoint_param = delete $params{endpoint};
    my $obj = delete $params{endpoint};
    croak "Invalid params: ".join(',', keys(%params)) if %params;
    return WebService::TypePad::Task->new(
        path_chunks => [ 'nouns', $endpoint_param ],
        result_handler => sub {
            my ($dict) = @_;
            return WebService::TypePad::Util::Coerce::coerce_Endpoint_out($dict);
        },
    );
}

sub get_endpoint {
    my ($self, %params) = @_;
    my $task = $self->get_endpoint_task(%params);
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

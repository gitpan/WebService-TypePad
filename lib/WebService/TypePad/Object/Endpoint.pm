package WebService::TypePad::Object::Endpoint;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Base);

sub name {
    my $self = shift;
    if (@_) {
        $self->{data}{name} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{name};
    }
}

sub supported_methods {
    my $self = shift;
    if (@_) {
        $self->{data}{supportedMethods} = WebService::TypePad::Util::Coerce::coerce_map_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_string_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_map_out($self->{data}{supportedMethods});
    }
}

sub supported_query_arguments {
    my $self = shift;
    if (@_) {
        $self->{data}{supportedQueryArguments} = WebService::TypePad::Util::Coerce::coerce_set_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_string_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_set_out($self->{data}{supportedQueryArguments});
    }
}

sub format_sensitive {
    my $self = shift;
    if (@_) {
        $self->{data}{formatSensitive} = WebService::TypePad::Util::Coerce::coerce_boolean_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_boolean_out($self->{data}{formatSensitive});
    }
}

sub property_endpoints {
    my $self = shift;
    if (@_) {
        $self->{data}{propertyEndpoints} = WebService::TypePad::Util::Coerce::coerce_array_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_Endpoint_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_array_out($self->{data}{propertyEndpoints}, \&WebService::TypePad::Util::Coerce::coerce_Endpoint_out);
    }
}

sub action_endpoints {
    my $self = shift;
    if (@_) {
        $self->{data}{actionEndpoints} = WebService::TypePad::Util::Coerce::coerce_array_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_Endpoint_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_array_out($self->{data}{actionEndpoints}, \&WebService::TypePad::Util::Coerce::coerce_Endpoint_out);
    }
}

sub can_have_id {
    my $self = shift;
    if (@_) {
        $self->{data}{canHaveId} = WebService::TypePad::Util::Coerce::coerce_boolean_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_boolean_out($self->{data}{canHaveId});
    }
}

sub can_omit_id {
    my $self = shift;
    if (@_) {
        $self->{data}{canOmitId} = WebService::TypePad::Util::Coerce::coerce_boolean_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_boolean_out($self->{data}{canOmitId});
    }
}

sub parameterized {
    my $self = shift;
    if (@_) {
        $self->{data}{parameterized} = WebService::TypePad::Util::Coerce::coerce_boolean_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_boolean_out($self->{data}{parameterized});
    }
}

sub filter_endpoints {
    my $self = shift;
    if (@_) {
        $self->{data}{filterEndpoints} = WebService::TypePad::Util::Coerce::coerce_array_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_Endpoint_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_array_out($self->{data}{filterEndpoints}, \&WebService::TypePad::Util::Coerce::coerce_Endpoint_out);
    }
}

sub resource_object_type {
    my $self = shift;
    if (@_) {
        $self->{data}{resourceObjectType} = WebService::TypePad::Util::Coerce::coerce_ObjectType_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_ObjectType_out($self->{data}{resourceObjectType});
    }
}

sub post_object_type {
    my $self = shift;
    if (@_) {
        $self->{data}{postObjectType} = WebService::TypePad::Util::Coerce::coerce_ObjectType_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_ObjectType_out($self->{data}{postObjectType});
    }
}

sub response_object_type {
    my $self = shift;
    if (@_) {
        $self->{data}{responseObjectType} = WebService::TypePad::Util::Coerce::coerce_ObjectType_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_ObjectType_out($self->{data}{responseObjectType});
    }
}

1;

=head1 NAME

WebService::TypePad::Object::Endpoint - Perl representation of TypePad's Endpoint object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::Endpoint;
    my $endpoint = WebService::TypePad::Object::Endpoint->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's Endpoint object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/Endpoint>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $endpoint->action_endpoints

For noun endpoints, an array of action endpoints that it supports.

Returns an array of L<Endpoint|WebService::TypePad::Object::Endpoint> objects.

=head2 $endpoint->can_have_id

For noun endpoints, true if an id part is accepted, or false if the noun may only be used alone.

Returns a single C<boolean> value.

=head2 $endpoint->can_omit_id

For noun endpoints, true if the id part can be ommitted, or false if it is always required.

Returns a single C<boolean> value.

=head2 $endpoint->filter_endpoints

For endpoints that return lists, an array of filters that can be appended to the endpoint.

Returns an array of L<Endpoint|WebService::TypePad::Object::Endpoint> objects.

=head2 $endpoint->format_sensitive

true if this requires expects a format suffix, or false otherwise.

Returns a single C<boolean> value.

=head2 $endpoint->name

The name of the noun, as it appears in URLs.

Returns a single C<string> value.

=head2 $endpoint->parameterized

For filter endpoints, true if a parameter is required on the filter, or false if it's a boolean filter.

Returns a single C<boolean> value.

=head2 $endpoint->post_object_type

The type of object that this endpoint accepts for POST operations.

Returns a single L<ObjectType|WebService::TypePad::Object::ObjectType> object.

=head2 $endpoint->property_endpoints

For noun endpoints, an array of property endpoints that it supports.

Returns an array of L<Endpoint|WebService::TypePad::Object::Endpoint> objects.

=head2 $endpoint->resource_object_type

The type of object that this endpoint represents for GET, PUT and DELETE operations. This is not returned for action endpoints, since they do not represent resources.

Returns a single L<ObjectType|WebService::TypePad::Object::ObjectType> object.

=head2 $endpoint->response_object_type

For action endpoints, the type of object that this endpoint returns on success. If the endpoint returns no payload on success, this property is null.

Returns a single L<ObjectType|WebService::TypePad::Object::ObjectType> object.

=head2 $endpoint->supported_methods

A mapping whose keys are the HTTP method that this endpoint accepts and whose values are docstrings describing the result of each method.

Returns a map of C<string> values.

=head2 $endpoint->supported_query_arguments

The names of the query string arguments that this endpoint accepts.

Returns a set of C<string> values.

=head1 SEE ALSO

=over 1

=item * L<WebService::TypePad::Noun::Nouns>

=item * L<http://www.typepad.com/services/apidocs/objecttypes/Endpoint>

=back

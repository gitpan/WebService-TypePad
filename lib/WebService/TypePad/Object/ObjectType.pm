package WebService::TypePad::Object::ObjectType;
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

sub parent_type {
    my $self = shift;
    if (@_) {
        $self->{data}{parentType} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{parentType};
    }
}

sub properties {
    my $self = shift;
    if (@_) {
        $self->{data}{properties} = WebService::TypePad::Util::Coerce::coerce_array_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_ObjectProperty_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_array_out($self->{data}{properties}, \&WebService::TypePad::Util::Coerce::coerce_ObjectProperty_out);
    }
}

1;

=head1 NAME

WebService::TypePad::Object::ObjectType - Perl representation of TypePad's ObjectType object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::ObjectType;
    my $object_type = WebService::TypePad::Object::ObjectType->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's ObjectType object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/ObjectType>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $object_type->name

The name of the type. Absent if this is an anonymous type representing the request or response of an action endpoint.

Returns a single C<string> value.

=head2 $object_type->parent_type

The name of the parent type, if any.

Returns a single C<string> value.

=head2 $object_type->properties

The properties of this type.

Returns an array of L<ObjectProperty|WebService::TypePad::Object::ObjectProperty> objects.

=head1 SEE ALSO

=over 1

=item * L<WebService::TypePad::Noun::ObjectTypes>

=item * L<http://www.typepad.com/services/apidocs/objecttypes/ObjectType>

=back

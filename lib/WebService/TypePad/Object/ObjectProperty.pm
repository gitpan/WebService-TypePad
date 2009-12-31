package WebService::TypePad::Object::ObjectProperty;
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

sub type {
    my $self = shift;
    if (@_) {
        $self->{data}{type} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{type};
    }
}

sub doc_string {
    my $self = shift;
    if (@_) {
        $self->{data}{docString} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{docString};
    }
}

1;

=head1 NAME

WebService::TypePad::Object::ObjectProperty - Perl representation of TypePad's ObjectProperty object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::ObjectProperty;
    my $object_property = WebService::TypePad::Object::ObjectProperty->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's ObjectProperty object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/ObjectProperty>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $object_property->doc_string

A human-readable documentation string for this property.

Returns a single C<string> value.

=head2 $object_property->name

The name of the property.

Returns a single C<string> value.

=head2 $object_property->type

The name of the type of this property.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/ObjectProperty>

=back

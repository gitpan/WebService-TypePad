package WebService::TypePad::Object::AssetRef;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Base);

sub ref {
    my $self = shift;
    if (@_) {
        $self->{data}{ref} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{ref};
    }
}

sub url_id {
    my $self = shift;
    if (@_) {
        $self->{data}{urlId} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{urlId};
    }
}

sub href {
    my $self = shift;
    if (@_) {
        $self->{data}{href} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{href};
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

sub author {
    my $self = shift;
    if (@_) {
        $self->{data}{author} = WebService::TypePad::Util::Coerce::coerce_User_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_User_out($self->{data}{author});
    }
}

sub object_types {
    my $self = shift;
    if (@_) {
        $self->{data}{objectTypes} = WebService::TypePad::Util::Coerce::coerce_array_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_string_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_array_out($self->{data}{objectTypes});
    }
}

1;

=head1 NAME

WebService::TypePad::Object::AssetRef - Perl representation of TypePad's AssetRef object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::AssetRef;
    my $asset_ref = WebService::TypePad::Object::AssetRef->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's AssetRef object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/AssetRef>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $asset_ref->author

The user that created the selected asset.

Returns a single L<User|WebService::TypePad::Object::User> object.

=head2 $asset_ref->href

The URL at which a representation of the corresponding asset can be retrieved.

Returns a single C<string> value.

=head2 $asset_ref->object_types

An array of object type identifier URIs. At the present time, only one object type is returned per asset, but this may be extended in future. Clients should scan this list and ignore any types that are not recognised. This list also includes appropriate type URIs as defined by the ActivityStrea.ms schema specification.

Returns an array of C<string> values.

=head2 $asset_ref->ref

A URI that serves as a globally-unique id for the asset. This matches the "id" property in the corresponding L<Asset|WebService::TypePad::Object::Asset> object.

Returns a single C<string> value.

=head2 $asset_ref->type

The MIME type of the representation at the URL given in the "href" property.

Returns a single C<string> value.

=head2 $asset_ref->url_id

A string containing the canonical identifier that can be used as the "id" for this object in URLs. However, this should not be used as a database key to avoid collisions when an application is switched to a different backend server such as the development server; use the "id" property instead. This matchies the "urlId" propert in the corresponding asset.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/AssetRef>

=back

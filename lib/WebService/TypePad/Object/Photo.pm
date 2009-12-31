package WebService::TypePad::Object::Photo;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Asset);

sub image_link {
    my $self = shift;
    if (@_) {
        $self->{data}{imageLink} = WebService::TypePad::Util::Coerce::coerce_ImageLink_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_ImageLink_out($self->{data}{imageLink});
    }
}

sub id {
    my $self = shift;
    if (@_) {
        $self->{data}{id} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{id};
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

sub permalink_url {
    my $self = shift;
    if (@_) {
        $self->{data}{permalinkUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{permalinkUrl};
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

sub published {
    my $self = shift;
    if (@_) {
        $self->{data}{published} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{published};
    }
}

sub content {
    my $self = shift;
    if (@_) {
        $self->{data}{content} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{content};
    }
}

sub text_format {
    my $self = shift;
    if (@_) {
        $self->{data}{textFormat} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{textFormat};
    }
}

sub groups {
    my $self = shift;
    if (@_) {
        $self->{data}{groups} = WebService::TypePad::Util::Coerce::coerce_array_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_string_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_array_out($self->{data}{groups});
    }
}

sub source {
    my $self = shift;
    if (@_) {
        $self->{data}{source} = WebService::TypePad::Util::Coerce::coerce_AssetSource_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_AssetSource_out($self->{data}{source});
    }
}

sub links {
    my $self = shift;
    if (@_) {
        $self->{data}{links} = WebService::TypePad::Util::Coerce::coerce_array_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_LegacyHyperlink_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_array_out($self->{data}{links}, \&WebService::TypePad::Util::Coerce::coerce_LegacyHyperlink_out);
    }
}

sub object_types {
    my $self = shift;
    if (@_) {
        $self->{data}{objectTypes} = WebService::TypePad::Util::Coerce::coerce_set_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_string_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_set_out($self->{data}{objectTypes});
    }
}

sub is_favorite_for_current_user {
    my $self = shift;
    if (@_) {
        $self->{data}{isFavoriteForCurrentUser} = WebService::TypePad::Util::Coerce::coerce_boolean_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_boolean_out($self->{data}{isFavoriteForCurrentUser});
    }
}

sub favorite_count {
    my $self = shift;
    if (@_) {
        $self->{data}{favoriteCount} = WebService::TypePad::Util::Coerce::coerce_integer_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{favoriteCount};
    }
}

sub comment_count {
    my $self = shift;
    if (@_) {
        $self->{data}{commentCount} = WebService::TypePad::Util::Coerce::coerce_integer_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{commentCount};
    }
}

sub allowed_methods {
    my $self = shift;
    if (@_) {
        $self->{data}{allowedMethods} = WebService::TypePad::Util::Coerce::coerce_set_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_string_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_set_out($self->{data}{allowedMethods});
    }
}

1;

=head1 NAME

WebService::TypePad::Object::Photo - Perl representation of TypePad's Photo object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::Photo;
    my $photo = WebService::TypePad::Object::Photo->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's Photo object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/Photo>.

This is a subtype of L<Asset|WebService::TypePad::Object::Asset>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $photo->allowed_methods

Set of strings containing the HTTP methods that the currently-authenticated client is allowed to apply to this asset.

Returns a set of C<string> values.

=head2 $photo->author

The user that created the selected asset.

Returns a single L<User|WebService::TypePad::Object::User> object.

=head2 $photo->comment_count

The number of comments that have been posted in the comment tree beneath this asset.

Returns a single C<integer> value.

=head2 $photo->content

The raw asset content. The C<textFormat> property defines what format this data is in.

Returns a single C<string> value.

=head2 $photo->favorite_count

The number of distinct users who have added this asset as a favorite.

Returns a single C<integer> value.

=head2 $photo->groups

An array of strings containing the id URIs of the groups that this asset is mapped into, if any. At present an asset can only be added to one group, but this may change in future.

Returns an array of C<string> values.

=head2 $photo->id

A URI that serves as a globally-unique id for the user. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.

Returns a single C<string> value.

=head2 $photo->image_link

A link to the image that this Photo asset represents.

Returns a single L<ImageLink|WebService::TypePad::Object::ImageLink> object.

=head2 $photo->is_favorite_for_current_user

C<true> if this asset is a favorite for the current user, or C<false> otherwise. This property is not set for responses to anonymous requests.

Returns a single C<boolean> value.

=head2 $photo->links

B<Deprecated.> The hyperlinks for the user object. The "alternate" hyperlink of type "text/html" points at the user's TypePad profile page. This property has been deprecated in favor of the separate link properties defined by the subclasses of L<Asset|WebService::TypePad::Object::Asset>.

Returns an array of L<LegacyHyperlink|WebService::TypePad::Object::LegacyHyperlink> objects.

=head2 $photo->object_types

An array of object type identifier URIs. At the present time, only one object type is returned per asset, but this may be extended in future. Clients should scan this list and ignore any types that are not recognised. This list also includes appropriate type URIs as defined by the ActivityStrea.ms schema specification.

Returns a set of C<string> values.

=head2 $photo->permalink_url

The URL which is considered to be this asset's permalink. This might be C<null> if the asset does not have a permalink of its own (for example, if it's embedded in another asset), or if TypePad does not know its permalink.

Returns a single C<string> value.

=head2 $photo->published

The time that the asset was created, as an RFC3339 timestamp.

Returns a single C<string> value.

=head2 $photo->source

An object describing the site from which this asset was retrieved, for assets obtained from external feeds.

Returns a single L<AssetSource|WebService::TypePad::Object::AssetSource> object.

=head2 $photo->text_format

A keyword which indicates what formatting mode is used for the content of this asset. This can currently be "html", for assets whose content is HTML, or "text", for assets whose content is plain text. Other formatting modes may be added in future.

Returns a single C<string> value.

=head2 $photo->url_id

A string containing the canonical identifier that can be used as the "id" for this object in URLs. However, this should not be used as a database key to avoid collisions when an application is switched to a different backend server; use the "id" property instead.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/Photo>

=back

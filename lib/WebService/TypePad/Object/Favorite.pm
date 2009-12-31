package WebService::TypePad::Object::Favorite;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Base);

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

sub in_reply_to {
    my $self = shift;
    if (@_) {
        $self->{data}{inReplyTo} = WebService::TypePad::Util::Coerce::coerce_AssetRef_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_AssetRef_out($self->{data}{inReplyTo});
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

1;

=head1 NAME

WebService::TypePad::Object::Favorite - Perl representation of TypePad's Favorite object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::Favorite;
    my $favorite = WebService::TypePad::Object::Favorite->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's Favorite object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/Favorite>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $favorite->author

The owner of this favorite. This is the user that marked the asset as a favorite, not the owner of the target asset.

Returns a single L<User|WebService::TypePad::Object::User> object.

=head2 $favorite->id

A URI that serves as a globally-unique id for the favorite. This can be used to recognise where the same favorite is returned in response to different requests, and as a mapping key for an application's local data store.

Returns a single C<string> value.

=head2 $favorite->in_reply_to

A reference to the asset that has been marked as a favorite.

Returns a single L<AssetRef|WebService::TypePad::Object::AssetRef> object.

=head2 $favorite->published

The time that the favorite was created, as an RFC3339 timestamp.

Returns a single C<string> value.

=head2 $favorite->url_id

A string containing the canonical identifier that can be used as the "id" for this favorite in URLs. However, this should not be used as a database key to avoid collisions when an application is switched to a different backend server such as the development server; use the "id" property instead.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<WebService::TypePad::Noun::Favorites>

=item * L<http://www.typepad.com/services/apidocs/objecttypes/Favorite>

=back

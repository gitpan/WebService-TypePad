package WebService::TypePad::Object::User;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Entity);

sub display_name {
    my $self = shift;
    if (@_) {
        $self->{data}{displayName} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{displayName};
    }
}

sub location {
    my $self = shift;
    if (@_) {
        $self->{data}{location} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{location};
    }
}

sub interests {
    my $self = shift;
    if (@_) {
        $self->{data}{interests} = WebService::TypePad::Util::Coerce::coerce_array_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_string_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_array_out($self->{data}{interests});
    }
}

sub preferred_username {
    my $self = shift;
    if (@_) {
        $self->{data}{preferredUsername} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{preferredUsername};
    }
}

sub links {
    my $self = shift;
    if (@_) {
        $self->{data}{links} = WebService::TypePad::Util::Coerce::coerce_list_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_LegacyHyperlink_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_array_out($self->{data}{links}, \&WebService::TypePad::Util::Coerce::coerce_LegacyHyperlink_out);
    }
}

sub avatar_link {
    my $self = shift;
    if (@_) {
        $self->{data}{avatarLink} = WebService::TypePad::Util::Coerce::coerce_ImageLink_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_ImageLink_out($self->{data}{avatarLink});
    }
}

sub profile_page_url {
    my $self = shift;
    if (@_) {
        $self->{data}{profilePageUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{profilePageUrl};
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

1;

=head1 NAME

WebService::TypePad::Object::User - Perl representation of TypePad's User object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::User;
    my $user = WebService::TypePad::Object::User->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's User object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/User>.

This is a subtype of L<Entity|WebService::TypePad::Object::Entity>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $user->allowed_methods

Set of strings containing the HTTP methods that the currently-authenticated client is allowed to apply to this user.

Returns a set of C<string> values.

=head2 $user->avatar_link

Link to this user's avatar (userpic) image.

Returns a single L<ImageLink|WebService::TypePad::Object::ImageLink> object.

=head2 $user->display_name

The user's chosen display name.

Returns a single C<string> value.

=head2 $user->id

A URI that serves as a globally-unique id for the object. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.

Returns a single C<string> value.

=head2 $user->interests

B<Deprecated.> A list of interests provided by the user and displayed on the user's profile page. This property will go away in future, since it has moved to the L<UserProfile|WebService::TypePad::Object::UserProfile> object type, which can be retrieved from N</users/{id}/profile>.

Returns an array of C<string> values.

=head2 $user->links

B<Deprecated.> The hyperlinks for the user object. The "alternate" hyperlink of type "text/html" points at the user's TypePad profile page. This is deprecated in favor of the individual link properties such as C<avatarLink> and C<profilePageUrl>.

Returns an array of L<LegacyHyperlink|WebService::TypePad::Object::LegacyHyperlink> objects.

=head2 $user->location

B<Deprecated.> The location of the user, as a free-form string provided by the user. This property will go away in future, since it has moved to the L<UserProfile|WebService::TypePad::Object::UserProfile> object type, which can be retrieved from N</users/{id}/profile>.

Returns a single C<string> value.

=head2 $user->object_types

An array of object type identifier URIs. At the present time, only one object type is returned per asset, but this may be extended in future. Clients should scan this list and ignore any types that are not recognised. This list also includes appropriate type URIs as defined by the ActivityStrea.ms schema specification.

Returns a set of C<string> values.

=head2 $user->preferred_username

The name the user has chosen for use in his TypePad Profile URL. This can be used as the id in the URL to select this user, though it must not be used as a persistent key since it can be changed by the user at any time.

Returns a single C<string> value.

=head2 $user->profile_page_url

URL of the user's profile page.

Returns a single C<string> value.

=head2 $user->url_id

A string containing the canonical identifier that can be used as the "id" for this object in URLs. However, this should not be used as a database key to avoid collisions when an application is switched to a different backend server; use the "id" property instead.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<WebService::TypePad::Noun::Users>

=item * L<http://www.typepad.com/services/apidocs/objecttypes/User>

=back

package WebService::TypePad::Object::UserProfile;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Base);

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

sub follow_frame_content_url {
    my $self = shift;
    if (@_) {
        $self->{data}{followFrameContentUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{followFrameContentUrl};
    }
}

sub profile_edit_page_url {
    my $self = shift;
    if (@_) {
        $self->{data}{profileEditPageUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{profileEditPageUrl};
    }
}

sub membership_management_page_url {
    my $self = shift;
    if (@_) {
        $self->{data}{membershipManagementPageUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{membershipManagementPageUrl};
    }
}

sub homepage_url {
    my $self = shift;
    if (@_) {
        $self->{data}{homepageUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{homepageUrl};
    }
}

1;

=head1 NAME

WebService::TypePad::Object::UserProfile - Perl representation of TypePad's UserProfile object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::UserProfile;
    my $user_profile = WebService::TypePad::Object::UserProfile->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's UserProfile object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/UserProfile>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $user_profile->avatar_link

Link to this user's avatar (userpic) image.

Returns a single L<ImageLink|WebService::TypePad::Object::ImageLink> object.

=head2 $user_profile->display_name

The user's chosen display name.

Returns a single C<string> value.

=head2 $user_profile->follow_frame_content_url

URL of a page which can be rendered in an iframe to produce a widget through which the remote user can follow this user. Should be rendered in an iframe that's 300 pixels wide and 125 pixels high.

Returns a single C<string> value.

=head2 $user_profile->homepage_url

URL that the user has specified as an external website URL. C<null> if the user has not provided a website URL.

Returns a single C<string> value.

=head2 $user_profile->interests

A list of interests provided by the user and displayed on the user's profile page.

Returns an array of C<string> values.

=head2 $user_profile->location

The location of the user, as a free-form string provided by the user.

Returns a single C<string> value.

=head2 $user_profile->membership_management_page_url

URL of a page at which this user can manage group memberships. This is present only if the remote user has access to do this.

Returns a single C<string> value.

=head2 $user_profile->preferred_username

The name the user has chosen for use in his TypePad Profile URL. This can be used as the id in the URL to select this user, though it must not be used as a persistent key since it can be changed by the user at any time.

Returns a single C<string> value.

=head2 $user_profile->profile_edit_page_url

URL of a page at which this user can edit the profile information attached to the user account. This is present only if the remote user has access to do this.

Returns a single C<string> value.

=head2 $user_profile->profile_page_url

URL of the user's profile page.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/UserProfile>

=back

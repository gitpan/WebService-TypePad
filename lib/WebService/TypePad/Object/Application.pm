package WebService::TypePad::Object::Application;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Entity);

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

sub oauth_request_token_url {
    my $self = shift;
    if (@_) {
        $self->{data}{oauthRequestTokenUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{oauthRequestTokenUrl};
    }
}

sub oauth_authorization_url {
    my $self = shift;
    if (@_) {
        $self->{data}{oauthAuthorizationUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{oauthAuthorizationUrl};
    }
}

sub oauth_access_token_url {
    my $self = shift;
    if (@_) {
        $self->{data}{oauthAccessTokenUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{oauthAccessTokenUrl};
    }
}

sub oauth_identification_url {
    my $self = shift;
    if (@_) {
        $self->{data}{oauthIdentificationUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{oauthIdentificationUrl};
    }
}

sub session_sync_script_url {
    my $self = shift;
    if (@_) {
        $self->{data}{sessionSyncScriptUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{sessionSyncScriptUrl};
    }
}

sub signout_url {
    my $self = shift;
    if (@_) {
        $self->{data}{signoutUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{signoutUrl};
    }
}

sub user_flyouts_script_url {
    my $self = shift;
    if (@_) {
        $self->{data}{userFlyoutsScriptUrl} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{userFlyoutsScriptUrl};
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

WebService::TypePad::Object::Application - Perl representation of TypePad's Application object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::Application;
    my $application = WebService::TypePad::Object::Application->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's Application object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/Application>.

This is a subtype of L<Entity|WebService::TypePad::Object::Entity>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $application->id

A URI that serves as a globally-unique id for the object. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.

Returns a single C<string> value.

=head2 $application->links

B<Deprecated.> Hyperlinks for this application.

Returns an array of L<LegacyHyperlink|WebService::TypePad::Object::LegacyHyperlink> objects.

=head2 $application->name

The name of the application as provided by its developer.

Returns a single C<string> value.

=head2 $application->oauth_access_token_url

The URL of the OAuth access token endpoint for this application.

Returns a single C<string> value.

=head2 $application->oauth_authorization_url

The URL to send the user's browser to for the user authorization step.

Returns a single C<string> value.

=head2 $application->oauth_identification_url

The URL to send the user's browser to identify which user is logged in (the "signin" link).

Returns a single C<string> value.

=head2 $application->oauth_request_token_url

The URL of the OAuth request token endpoint for this application.

Returns a single C<string> value.

=head2 $application->object_types

The object types for this object. This set will contain the string C<tag:api.typepad.com,2009:Application> for an application object.

Returns a set of C<string> values.

=head2 $application->session_sync_script_url

The URL of the session sync script.

Returns a single C<string> value.

=head2 $application->signout_url

The URL to send the user's browser to in order to sign out of TypePad.

Returns a single C<string> value.

=head2 $application->url_id

A string containing the canonical identifier that can be used as the "id" for this object in URLs. However, this should not be used as a database key to avoid collisions when an application is switched to a different backend server; use the "id" property instead.

Returns a single C<string> value.

=head2 $application->user_flyouts_script_url

The URL of a script to embed to enable the user flyouts functionality.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<WebService::TypePad::Noun::Applications>

=item * L<http://www.typepad.com/services/apidocs/objecttypes/Application>

=back

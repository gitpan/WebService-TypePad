package WebService::TypePad::Object::Event;
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

sub verbs {
    my $self = shift;
    if (@_) {
        $self->{data}{verbs} = WebService::TypePad::Util::Coerce::coerce_set_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_string_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_set_out($self->{data}{verbs});
    }
}

sub actor {
    my $self = shift;
    if (@_) {
        $self->{data}{actor} = WebService::TypePad::Util::Coerce::coerce_User_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_User_out($self->{data}{actor});
    }
}

sub object {
    my $self = shift;
    if (@_) {
        $self->{data}{object} = WebService::TypePad::Util::Coerce::coerce_Base_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_Base_out($self->{data}{object});
    }
}

1;

=head1 NAME

WebService::TypePad::Object::Event - Perl representation of TypePad's Event object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::Event;
    my $event = WebService::TypePad::Object::Event->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's Event object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/Event>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $event->actor

The user that did the action that the event describes.

Returns a single L<User|WebService::TypePad::Object::User> object.

=head2 $event->id

A URI that serves as a globally-unique id for the user. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.

Returns a single C<string> value.

=head2 $event->links

The hyperlinks for the user object. The "alternate" hyperlink of type "text/html" points at the user's TypePad profile page.

Returns an array of L<LegacyHyperlink|WebService::TypePad::Object::LegacyHyperlink> objects.

=head2 $event->object

The object that the action was done to.

Returns a single L<Base|WebService::TypePad::Object::Base> object.

=head2 $event->url_id

A string containing the canonical identifier that can be used as the "id" for this object in URLs. However, this should not be used as a database key to avoid collisions when an application is switched to a different backend server; use the "id" property instead.

Returns a single C<string> value.

=head2 $event->verbs

An array of verb identifier URIs. At the present time, only one verb is returned, but this may be extended in future. Clients should scan this list and ignore any verbs that are not recognised. This list also includes appropriate verb URIs as defined by the ActivityStrea.ms schema specification.

Returns a set of C<string> values.

=head1 SEE ALSO

=over 1

=item * L<WebService::TypePad::Noun::Events>

=item * L<http://www.typepad.com/services/apidocs/objecttypes/Event>

=back

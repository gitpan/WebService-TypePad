package WebService::TypePad::Object::Group;
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

sub tagline {
    my $self = shift;
    if (@_) {
        $self->{data}{tagline} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{tagline};
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

WebService::TypePad::Object::Group - Perl representation of TypePad's Group object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::Group;
    my $group = WebService::TypePad::Object::Group->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's Group object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/Group>.

This is a subtype of L<Entity|WebService::TypePad::Object::Entity>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $group->display_name

The display name set by the group's owner.

Returns a single C<string> value.

=head2 $group->id

A URI that serves as a globally-unique id for the object. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.

Returns a single C<string> value.

=head2 $group->links

The hyperlinks for the group object.

Returns an array of L<LegacyHyperlink|WebService::TypePad::Object::LegacyHyperlink> objects.

=head2 $group->object_types

An array of object type identifier URIs.

Returns a set of C<string> values.

=head2 $group->tagline

A tagline describing the group, set by the group's owner.

Returns a single C<string> value.

=head2 $group->url_id

A string containing the canonical identifier that can be used as the "id" for this object in URLs. However, this should not be used as a database key to avoid collisions when an application is switched to a different backend server; use the "id" property instead.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<WebService::TypePad::Noun::Groups>

=item * L<http://www.typepad.com/services/apidocs/objecttypes/Group>

=back

package WebService::TypePad::Object::Blog;
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

sub title {
    my $self = shift;
    if (@_) {
        $self->{data}{title} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{title};
    }
}

sub owner {
    my $self = shift;
    if (@_) {
        $self->{data}{owner} = WebService::TypePad::Util::Coerce::coerce_User_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_User_out($self->{data}{owner});
    }
}

sub description {
    my $self = shift;
    if (@_) {
        $self->{data}{description} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{description};
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

1;

=head1 NAME

WebService::TypePad::Object::Blog - Perl representation of TypePad's Blog object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::Blog;
    my $blog = WebService::TypePad::Object::Blog->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's Blog object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/Blog>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $blog->description

The description of the blog as provided by its owner.

Returns a single C<string> value.

=head2 $blog->id

A URI that serves as a globally-unique id for the object. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.

Returns a single C<string> value.

=head2 $blog->links

The hyperlinks for the blog object. The "alternate" hyperlink of type "text/html" points at the blog's home page.

Returns an array of L<LegacyHyperlink|WebService::TypePad::Object::LegacyHyperlink> objects.

=head2 $blog->object_types

An array of object type identifier URIs. At the present time, only one object type is returned per object, but this may be extended in future. Clients should scan this list and ignore any types that are not recognized.

Returns a set of C<string> values.

=head2 $blog->owner

The user that owns the blog.

Returns a single L<User|WebService::TypePad::Object::User> object.

=head2 $blog->title

The title of the blog.

Returns a single C<string> value.

=head2 $blog->url_id

A string containing the canonical identifier that can be used as the "id" for this object in URLs. However, this should not be used as a database key to avoid collisions when an application is switched to a different backend server; use the "id" property instead.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<WebService::TypePad::Noun::Blogs>

=item * L<http://www.typepad.com/services/apidocs/objecttypes/Blog>

=back

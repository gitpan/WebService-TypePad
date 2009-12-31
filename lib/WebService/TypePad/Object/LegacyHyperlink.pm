package WebService::TypePad::Object::LegacyHyperlink;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Base);

sub rel {
    my $self = shift;
    if (@_) {
        $self->{data}{rel} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{rel};
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

sub html {
    my $self = shift;
    if (@_) {
        $self->{data}{html} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{html};
    }
}

sub width {
    my $self = shift;
    if (@_) {
        $self->{data}{width} = WebService::TypePad::Util::Coerce::coerce_integer_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{width};
    }
}

sub height {
    my $self = shift;
    if (@_) {
        $self->{data}{height} = WebService::TypePad::Util::Coerce::coerce_integer_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{height};
    }
}

sub total {
    my $self = shift;
    if (@_) {
        $self->{data}{total} = WebService::TypePad::Util::Coerce::coerce_integer_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{total};
    }
}

sub allowed_methods {
    my $self = shift;
    if (@_) {
        $self->{data}{allowedMethods} = WebService::TypePad::Util::Coerce::coerce_array_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_string_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_array_out($self->{data}{allowedMethods});
    }
}

1;

=head1 NAME

WebService::TypePad::Object::LegacyHyperlink - Perl representation of TypePad's LegacyHyperlink object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::LegacyHyperlink;
    my $legacy_hyperlink = WebService::TypePad::Object::LegacyHyperlink->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's LegacyHyperlink object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/LegacyHyperlink>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $legacy_hyperlink->allowed_methods

B<Deprecated.> If present, gives a list of methods that the currently-authenticated user is allowed to perform on this resource. The empty array indicates that no methods are allowed. If the allowedMethods property is absent, this indicates that the server is unable to determine the allowed methods and so the client should issue an OPTIONS or GET request on the resource to determine what methods are allowed.

Returns an array of C<string> values.

=head2 $legacy_hyperlink->height

B<Deprecated.> Where the link is to a visual media item (a photo, for example), the height of the item in pixels.

Returns a single C<integer> value.

=head2 $legacy_hyperlink->href

B<Deprecated.> The absolute URL of the target resource.

Returns a single C<string> value.

=head2 $legacy_hyperlink->html

B<Deprecated.> The HTML embed code for this media link.

Returns a single C<string> value.

=head2 $legacy_hyperlink->rel

B<Deprecated.> A keyword representing the relationship type of the hyperlink.

Returns a single C<string> value.

=head2 $legacy_hyperlink->total

B<Deprecated.> Where the link is to a list resource, the total number of items in that list. This is provided in some cases to avoid the need to retrieve the resource and inspect its "totalResults" property directly.

Returns a single C<integer> value.

=head2 $legacy_hyperlink->type

B<Deprecated.> The MIME media type of the target resource.

Returns a single C<string> value.

=head2 $legacy_hyperlink->width

B<Deprecated.> Where the link is to a visual media item (a photo, for example), the width of the item in pixels.

Returns a single C<integer> value.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/LegacyHyperlink>

=back

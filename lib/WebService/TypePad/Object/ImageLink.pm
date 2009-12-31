package WebService::TypePad::Object::ImageLink;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Base);

sub url {
    my $self = shift;
    if (@_) {
        $self->{data}{url} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{url};
    }
}

sub url_template {
    my $self = shift;
    if (@_) {
        $self->{data}{urlTemplate} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{urlTemplate};
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

1;

=head1 NAME

WebService::TypePad::Object::ImageLink - Perl representation of TypePad's ImageLink object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::ImageLink;
    my $image_link = WebService::TypePad::Object::ImageLink->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's ImageLink object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/ImageLink>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $image_link->height

The height of the original image in pixels.

Returns a single C<integer> value.

=head2 $image_link->url

The URL for the original (full-size) version of this image.

Returns a single C<string> value.

=head2 $image_link->url_template

If TypePad is able to provide a scaled version of this image, a URL template which uses the placeholder C<{spec}> to represent where to place a sizing spec as described above. C<null> if TypePad is unable to provide a scaled version of this image, for example if the image is not actually hosted on TypePad itself.

Returns a single C<string> value.

=head2 $image_link->width

The width of the original image in pixels.

Returns a single C<integer> value.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/ImageLink>

=back

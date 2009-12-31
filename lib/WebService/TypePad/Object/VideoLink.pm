package WebService::TypePad::Object::VideoLink;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Base);

sub embed_code {
    my $self = shift;
    if (@_) {
        $self->{data}{embedCode} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{embedCode};
    }
}

1;

=head1 NAME

WebService::TypePad::Object::VideoLink - Perl representation of TypePad's VideoLink object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::VideoLink;
    my $video_link = WebService::TypePad::Object::VideoLink->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's VideoLink object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/VideoLink>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $video_link->embed_code

An opaque HTML fragment which, when embedded in a HTML page, will provide an inline player for the video.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/VideoLink>

=back

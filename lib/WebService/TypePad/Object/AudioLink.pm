package WebService::TypePad::Object::AudioLink;
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

sub duration {
    my $self = shift;
    if (@_) {
        $self->{data}{duration} = WebService::TypePad::Util::Coerce::coerce_integer_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{duration};
    }
}

1;

=head1 NAME

WebService::TypePad::Object::AudioLink - Perl representation of TypePad's AudioLink object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::AudioLink;
    my $audio_link = WebService::TypePad::Object::AudioLink->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's AudioLink object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/AudioLink>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $audio_link->duration

The duration of the audio stream in seconds.

Returns a single C<integer> value.

=head2 $audio_link->url

The URL for an MP3 representation of the audio stream.

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/AudioLink>

=back

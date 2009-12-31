package WebService::TypePad::Object::AssetSource;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Base);

sub by_user {
    my $self = shift;
    if (@_) {
        $self->{data}{byUser} = WebService::TypePad::Util::Coerce::coerce_boolean_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_boolean_out($self->{data}{byUser});
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

sub provider {
    my $self = shift;
    if (@_) {
        $self->{data}{provider} = WebService::TypePad::Util::Coerce::coerce_map_in($_[0], \&WebService::TypePad::Util::Coerce::coerce_string_in);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_map_out($self->{data}{provider});
    }
}

1;

=head1 NAME

WebService::TypePad::Object::AssetSource - Perl representation of TypePad's AssetSource object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::AssetSource;
    my $asset_source = WebService::TypePad::Object::AssetSource->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's AssetSource object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/AssetSource>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $asset_source->by_user

B<Deprecated.> C<true> if this content is considered to be created by its author, or C<false> if it's actually someone else's content imported by the asset author.

Returns a single C<boolean> value.

=head2 $asset_source->links

B<Deprecated.> Hyperlinks for this source object. Contains a link whose rel is "alternate" and whose type is "text/html" which is the original permalink of an item that was imported from elsewhere.

Returns an array of L<LegacyHyperlink|WebService::TypePad::Object::LegacyHyperlink> objects.

=head2 $asset_source->provider

B<Deprecated.> Description of the external service provider from which this content was imported. Contains "name", "icon", and "uri" properties.

Returns a map of C<string> values.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/AssetSource>

=back

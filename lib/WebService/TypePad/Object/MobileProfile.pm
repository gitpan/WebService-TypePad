package WebService::TypePad::Object::MobileProfile;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object::Base);

sub email_address {
    my $self = shift;
    if (@_) {
        $self->{data}{emailAddress} = WebService::TypePad::Util::Coerce::coerce_string_in($_[0]);
        return $_[0];
    }
    else {
        return $self->{data}{emailAddress};
    }
}

1;

=head1 NAME

WebService::TypePad::Object::MobileProfile - Perl representation of TypePad's MobileProfile object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::MobileProfile;
    my $mobile_profile = WebService::TypePad::Object::MobileProfile->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's MobileProfile object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/MobileProfile>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $mobile_profile->email_address

A private email address for posting via email

Returns a single C<string> value.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/MobileProfile>

=back

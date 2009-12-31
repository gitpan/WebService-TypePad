package WebService::TypePad::Object::Relationship;
use strict;
use warnings;
use WebService::TypePad::Util::Coerce;
use base qw(WebService::TypePad::Object);

sub source {
    my $self = shift;
    if (@_) {
        $self->{data}{source} = WebService::TypePad::Util::Coerce::coerce_Entity_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_Entity_out($self->{data}{source});
    }
}

sub target {
    my $self = shift;
    if (@_) {
        $self->{data}{target} = WebService::TypePad::Util::Coerce::coerce_Entity_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_Entity_out($self->{data}{target});
    }
}

sub status {
    my $self = shift;
    if (@_) {
        $self->{data}{status} = WebService::TypePad::Util::Coerce::coerce_RelationshipStatus_in($_[0]);
        return $_[0];
    }
    else {
        return WebService::TypePad::Util::Coerce::coerce_RelationshipStatus_out($self->{data}{status});
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

WebService::TypePad::Object::Relationship - Perl representation of TypePad's Relationship object type

=head1 SYNOPSIS

    use WebService::TypePad::Object::Relationship;
    my $relationship = WebService::TypePad::Object::Relationship->new();

=head1 DESCRIPTION

This is a Perl representation of TypePad's Relationship object type.
For more information about this type and its parameters, see L<the documentation on TypePad's developer site|http://www.typepad.com/services/apidocs/objecttypes/Relationship>.

=head1 PROPERTIES

Each of these properties has an accessor method which will retrieve the property's value when called with no arguments or set the property's value when called with one argument.

=head2 $relationship->links

The hyperlinks for the relationship object.

Returns an array of L<LegacyHyperlink|WebService::TypePad::Object::LegacyHyperlink> objects.

=head2 $relationship->source

The source entity, the 'subject' of the relationship.

Returns a single L<Entity|WebService::TypePad::Object::Entity> object.

=head2 $relationship->status

A RelationshipStatus object describing the types of relationship that currently exist between the source and the target.

Returns a single L<RelationshipStatus|WebService::TypePad::Object::RelationshipStatus> object.

=head2 $relationship->target

The target entity, the 'object' of the relationship.

Returns a single L<Entity|WebService::TypePad::Object::Entity> object.

=head1 SEE ALSO

=over 1

=item * L<http://www.typepad.com/services/apidocs/objecttypes/Relationship>

=back

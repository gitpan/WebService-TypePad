package WebService::TypePad::Object;
use strict;
use warnings;
use fields qw(last_known_etag data);
our %Object_Types = (
    'Application' => 'WebService::TypePad::Object::Application',
    'Asset' => 'WebService::TypePad::Object::Asset',
    'AssetRef' => 'WebService::TypePad::Object::AssetRef',
    'AssetSource' => 'WebService::TypePad::Object::AssetSource',
    'Audio' => 'WebService::TypePad::Object::Audio',
    'AudioLink' => 'WebService::TypePad::Object::AudioLink',
    'Base' => 'WebService::TypePad::Object::Base',
    'Blog' => 'WebService::TypePad::Object::Blog',
    'Comment' => 'WebService::TypePad::Object::Comment',
    'Endpoint' => 'WebService::TypePad::Object::Endpoint',
    'Entity' => 'WebService::TypePad::Object::Entity',
    'Event' => 'WebService::TypePad::Object::Event',
    'Favorite' => 'WebService::TypePad::Object::Favorite',
    'Group' => 'WebService::TypePad::Object::Group',
    'ImageLink' => 'WebService::TypePad::Object::ImageLink',
    'LegacyHyperlink' => 'WebService::TypePad::Object::LegacyHyperlink',
    'Link' => 'WebService::TypePad::Object::Link',
    'MobileProfile' => 'WebService::TypePad::Object::MobileProfile',
    'ObjectProperty' => 'WebService::TypePad::Object::ObjectProperty',
    'ObjectType' => 'WebService::TypePad::Object::ObjectType',
    'Page' => 'WebService::TypePad::Object::Page',
    'Photo' => 'WebService::TypePad::Object::Photo',
    'Post' => 'WebService::TypePad::Object::Post',
    'Relationship' => 'WebService::TypePad::Object::Relationship',
    'RelationshipStatus' => 'WebService::TypePad::Object::RelationshipStatus',
    'User' => 'WebService::TypePad::Object::User',
    'UserProfile' => 'WebService::TypePad::Object::UserProfile',
    'Video' => 'WebService::TypePad::Object::Video',
    'VideoLink' => 'WebService::TypePad::Object::VideoLink',
);
our %Object_Type_Classes_By_Uri = (
    'tag:api.typepad.com,2009:Application' => 'WebService::TypePad::Object::Application',
    'tag:api.typepad.com,2009:Asset' => 'WebService::TypePad::Object::Asset',
    'tag:api.typepad.com,2009:AssetRef' => 'WebService::TypePad::Object::AssetRef',
    'tag:api.typepad.com,2009:AssetSource' => 'WebService::TypePad::Object::AssetSource',
    'tag:api.typepad.com,2009:Audio' => 'WebService::TypePad::Object::Audio',
    'tag:api.typepad.com,2009:AudioLink' => 'WebService::TypePad::Object::AudioLink',
    'tag:api.typepad.com,2009:Base' => 'WebService::TypePad::Object::Base',
    'tag:api.typepad.com,2009:Blog' => 'WebService::TypePad::Object::Blog',
    'tag:api.typepad.com,2009:Comment' => 'WebService::TypePad::Object::Comment',
    'tag:api.typepad.com,2009:Endpoint' => 'WebService::TypePad::Object::Endpoint',
    'tag:api.typepad.com,2009:Entity' => 'WebService::TypePad::Object::Entity',
    'tag:api.typepad.com,2009:Event' => 'WebService::TypePad::Object::Event',
    'tag:api.typepad.com,2009:Favorite' => 'WebService::TypePad::Object::Favorite',
    'tag:api.typepad.com,2009:Group' => 'WebService::TypePad::Object::Group',
    'tag:api.typepad.com,2009:ImageLink' => 'WebService::TypePad::Object::ImageLink',
    'tag:api.typepad.com,2009:LegacyHyperlink' => 'WebService::TypePad::Object::LegacyHyperlink',
    'tag:api.typepad.com,2009:Link' => 'WebService::TypePad::Object::Link',
    'tag:api.typepad.com,2009:MobileProfile' => 'WebService::TypePad::Object::MobileProfile',
    'tag:api.typepad.com,2009:ObjectProperty' => 'WebService::TypePad::Object::ObjectProperty',
    'tag:api.typepad.com,2009:ObjectType' => 'WebService::TypePad::Object::ObjectType',
    'tag:api.typepad.com,2009:Page' => 'WebService::TypePad::Object::Page',
    'tag:api.typepad.com,2009:Photo' => 'WebService::TypePad::Object::Photo',
    'tag:api.typepad.com,2009:Post' => 'WebService::TypePad::Object::Post',
    'tag:api.typepad.com,2009:Relationship' => 'WebService::TypePad::Object::Relationship',
    'tag:api.typepad.com,2009:RelationshipStatus' => 'WebService::TypePad::Object::RelationshipStatus',
    'tag:api.typepad.com,2009:User' => 'WebService::TypePad::Object::User',
    'tag:api.typepad.com,2009:UserProfile' => 'WebService::TypePad::Object::UserProfile',
    'tag:api.typepad.com,2009:Video' => 'WebService::TypePad::Object::Video',
    'tag:api.typepad.com,2009:VideoLink' => 'WebService::TypePad::Object::VideoLink',
);
sub new {
    my ($class, %params) = @_;
    my $self = fields::new($class);
    $self->{data} = {};
    map { $self->$_($params{$_}) } keys %params;
    return $self;}
sub _from_json_dictionary {
    my ($class, $dict) = @_;
    if (my $object_types = $dict->{objectTypes}) {
        foreach my $type_uri (@$object_types) {
            if (my $class_name = $Object_Type_Classes_By_Uri{$type_uri}) {
                $class = $class_name;
            }
        }
    }
    my $self = $class->new();
    $self->{data} = $dict;
    return $self;}
sub _as_json_dictionary {
    return $_[0]->{data};
}
1;

=head1 NAME

WebService::TypePad::Object - Base class for our local representations of TypePad's object types

=head1 SYNOPSIS

    # Create a new "user" object
    use TypePad::API::Object::User;
    my $user = TypePad::API::Object::User->new();

=head1 AVAILABLE OBJECT TYPES

=over 1

=item * L<WebService::TypePad::Object::Application>

=item * L<WebService::TypePad::Object::Asset>

=item * L<WebService::TypePad::Object::AssetRef>

=item * L<WebService::TypePad::Object::AssetSource>

=item * L<WebService::TypePad::Object::Audio>

=item * L<WebService::TypePad::Object::AudioLink>

=item * L<WebService::TypePad::Object::Base>

=item * L<WebService::TypePad::Object::Blog>

=item * L<WebService::TypePad::Object::Comment>

=item * L<WebService::TypePad::Object::Endpoint>

=item * L<WebService::TypePad::Object::Entity>

=item * L<WebService::TypePad::Object::Event>

=item * L<WebService::TypePad::Object::Favorite>

=item * L<WebService::TypePad::Object::Group>

=item * L<WebService::TypePad::Object::ImageLink>

=item * L<WebService::TypePad::Object::LegacyHyperlink>

=item * L<WebService::TypePad::Object::Link>

=item * L<WebService::TypePad::Object::MobileProfile>

=item * L<WebService::TypePad::Object::ObjectProperty>

=item * L<WebService::TypePad::Object::ObjectType>

=item * L<WebService::TypePad::Object::Page>

=item * L<WebService::TypePad::Object::Photo>

=item * L<WebService::TypePad::Object::Post>

=item * L<WebService::TypePad::Object::Relationship>

=item * L<WebService::TypePad::Object::RelationshipStatus>

=item * L<WebService::TypePad::Object::User>

=item * L<WebService::TypePad::Object::UserProfile>

=item * L<WebService::TypePad::Object::Video>

=item * L<WebService::TypePad::Object::VideoLink>

=back

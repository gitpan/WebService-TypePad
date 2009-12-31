package WebService::TypePad::Noun;
use strict;
use warnings;
our %Nouns = (
    'api_keys' => 'WebService::TypePad::Noun::ApiKeys',
    'applications' => 'WebService::TypePad::Noun::Applications',
    'assets' => 'WebService::TypePad::Noun::Assets',
    'auth_tokens' => 'WebService::TypePad::Noun::AuthTokens',
    'batch_processor' => 'WebService::TypePad::Noun::BatchProcessor',
    'blogs' => 'WebService::TypePad::Noun::Blogs',
    'browser_upload' => 'WebService::TypePad::Noun::BrowserUpload',
    'events' => 'WebService::TypePad::Noun::Events',
    'favorites' => 'WebService::TypePad::Noun::Favorites',
    'groups' => 'WebService::TypePad::Noun::Groups',
    'nouns' => 'WebService::TypePad::Noun::Nouns',
    'object_types' => 'WebService::TypePad::Noun::ObjectTypes',
    'relationships' => 'WebService::TypePad::Noun::Relationships',
    'users' => 'WebService::TypePad::Noun::Users',
);
1;

=head1 NAME

WebService::TypePad::Noun - Container for noun classes

=head1 SYNOPSIS

    use WebService::TypePad;
    my $typepad = WebService::TypePad->new();
    # Call a method on the "users" noun
    my $user = $typepad->users->load_user($user_id);

=head1 AVAILABLE NOUNS

=over 1

=item * L<api_keys|WebService::TypePad::Noun::ApiKeys>

=item * L<applications|WebService::TypePad::Noun::Applications>

=item * L<assets|WebService::TypePad::Noun::Assets>

=item * L<auth_tokens|WebService::TypePad::Noun::AuthTokens>

=item * L<batch_processor|WebService::TypePad::Noun::BatchProcessor>

=item * L<blogs|WebService::TypePad::Noun::Blogs>

=item * L<browser_upload|WebService::TypePad::Noun::BrowserUpload>

=item * L<events|WebService::TypePad::Noun::Events>

=item * L<favorites|WebService::TypePad::Noun::Favorites>

=item * L<groups|WebService::TypePad::Noun::Groups>

=item * L<nouns|WebService::TypePad::Noun::Nouns>

=item * L<object_types|WebService::TypePad::Noun::ObjectTypes>

=item * L<relationships|WebService::TypePad::Noun::Relationships>

=item * L<users|WebService::TypePad::Noun::Users>

=back

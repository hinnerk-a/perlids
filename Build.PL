use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'CGI::IDS',
    license             => 'lgpl3',
    dist_author         => 'Hinnerk Altenburg <hinnerk@cpan.org>',
    dist_version_from   => 'lib/CGI/IDS.pm',
    build_requires => {
        'Test::More'      => 0,
        'JSON::XS'        => 2.2,
        'XML::Parser'     => 0,
        'XML::Simple'     => 0,
        'HTML::Entities'  => 0,
        'MIME::Base64'    => 0,
        'Encode::Unicode' => 2.05,
        'Carp'            => 0,
        'Time::HiRes'     => 0,
        'FindBin'         => 0,
    },
    add_to_cleanup      => [ 'CGI-IDS-*' ],
    create_makefile_pl  => 'traditional',
    sign                => 1,
);

$builder->add_build_element('xml');

$builder->create_build_script();

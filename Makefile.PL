use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'    => 'HTTP::Request::FromTemplate',
    'VERSION_FROM'  => 'lib/HTTP/Request/FromTemplate.pm', # finds $VERSION
    'PREREQ_PM'    => { 'HTTP::Request' => 0,
                        'HTTP::Message' => 0,
                        'Template' => 0,
                        'Class::Accessor' => 0,
                        'Test::Base' => 0, # I know. Just for the tests ...
                      }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'lib/HTTP/Request/FromTemplate.pm',
       AUTHOR     => 'Max Maischein <corion@cpan.org>') : ()),
);

1;

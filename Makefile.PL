use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'      => 'Location::GeoTool::Ex::GridLocator',
    'VERSION_FROM' => 'lib/Location/GeoTool/Ex/GridLocator.pm', # finds $VERSION
    'PREREQ_PM' => {
	'Test::More' => 0.32,
	'HTTP::Headers' => 1.43,
        'Location::GeoTool' => 1.98,
    },
);

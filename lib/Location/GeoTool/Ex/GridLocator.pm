package Location::GeoTool::Ex::GridLocator;

use strict;
no strict 'refs';
no warnings 'redefine';
use vars qw($VERSION);
$VERSION = 0.01000;
use Location::GeoTool;

# Thanks for site:
# http://www.jarl.or.jp/Japanese/1_Tanoshimo/1-2_Award/gl.htm

*{"Location::GeoTool\::get_gridlocator"} = sub 
{
  my $self = shift;
  my ($lat,$long) = $self->format_degree->array;
  my @res;

  $lat = ($lat+90)/10;
  $long = ($long+180)/20;

  $res[1] = pack "C", 65+int($lat);
  $res[0] = pack "C", 65+int($long);

  $res[3] = int($lat*10) % 10;
  $res[2] = int($long*10) % 10;

  $res[5] = pack "C", 65+int(($lat*10 - int($lat*10)) * 24);
  $res[4] = pack "C", 65+int(($long*10 - int($long*10)) * 24);

  join "",@res;
};

1;
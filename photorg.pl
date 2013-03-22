#!/usr/bin/env perl

use v5.14;
use Image::ExifTool qw(:Public);

my $tool = Image::ExifTool->new;
$tool->Options(DateFormat => '%Y %m %d');

sub getDate {
    my $tags = $tool->ImageInfo(shift, ['CreateDate']);
    split / /, $tags->{'CreateDate'};
}


say join ' : ', getDate($ARGV[0]);

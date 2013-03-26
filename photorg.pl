#!/usr/bin/env perl

use v5.14;
use Image::ExifTool qw(:Public);
use File::Find;

my $tool = Image::ExifTool->new;
$tool->Options(DateFormat => '%Y %m %d');

sub getDate {
    my $tags = $tool->ImageInfo(shift, ['CreateDate']);
    split / /, $tags->{'CreateDate'};
}

find(sub{
        say $File::Find::name if /\.png$|\.jpg$/i;
    }, $ARGV[0])

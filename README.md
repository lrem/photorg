photorg
=======

Batch organize photos

Desired Structure
-----------------

The idea is to take the huge mess of pictures I have and to put them into a simple structure.
Images put into directory representing shooting time: `year/month/day`.
Along the image should go all the files associated with it.

If two files are duplicate, one of them should be deleted.
If two files have the same name, but different contents, one of them should be renamed.
Directories, once emptied, should be delted.

Implementation
--------------

Seems that Perl's *Image::ExifTool* is nicer than anything for Python.

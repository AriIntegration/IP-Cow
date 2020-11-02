#!/usr/bin/perl
print "Content-type: text/plain\n\n";
use CGI;
use CGI::Carp 'fatalsToBrowser';

eval { require MIME::Lite; }; my $mimeliteversion = $@ ? qq`not installed (error was: $@)` : $MIME::Lite::VERSION;

print qq`\$] (Perl version): $]\n`;
print qq`\$CGI::VERSION: $CGI::VERSION\n`;
print qq`\$MIME::Lite::VERSION: $mimeliteversion\n`;
print qq`\nEnvironment Variables:\n\n`;

foreach my $var (sort keys %ENV)
{
	print "$var: $ENV{$var}\n";
}
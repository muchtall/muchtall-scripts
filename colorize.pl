#!/usr/bin/perl

my $color_reset = "\x1B[0m";
my %colors = (
	red		=> "\x1B[31m",
	green		=> "\x1B[32m",
	yellow		=> "\x1B[33m",
	blue		=> "\x1B[34m",
	magenta		=> "\x1B[35m",
	cyan		=> "\x1B[36m",
	light_gray	=> "\x1B[37m",
	dark_grey	=> "\x1B[90m",
	light_red	=> "\x1B[91m",
	light_green	=> "\x1B[92m",
	light_yellow	=> "\x1B[93m",
	light_blue	=> "\x1B[94m",
	light_magenta	=> "\x1B[95m",
	light_cyan	=> "\x1B[96m",
	white		=> "\x1B[97m",
	bg_red		=> "\x1B[41m",
	bg_green	=> "\x1B[42m",
	bg_yellow	=> "\x1B[43m",
	bg_blue		=> "\x1B[44m",
	bg_magenta	=> "\x1B[45m",
	bg_cyan		=> "\x1B[46m",
	bg_light_gray	=> "\x1B[47m",
	bg_dark_gray	=> "\x1B[100m",
	bg_light_red	=> "\x1B[101m",
	bg_light_green	=> "\x1B[102m",
	bg_light_yellow	=> "\x1B[103m",
	bg_light_blue	=> "\x1B[104m",
	bg_light_magenta	=> "\x1B[107m",
	bg_light_cyan	=> "\x1B[106m",
	bg_white	=> "\x1B[107m" );

if (! $ARGV[1]){
	print "Usage: $0 <color> <string_to_match>\n";
	print "Color options are as follows:\n";
	for ( keys %colors ){
		print "\t$colors{$_}$_$color_reset\n";
	}
	exit;
}

$color = $ARGV[0];
$match = $ARGV[1];


# Immediately flush the buffer on print()
$| = 1;
while (<STDIN>){
	if ( $_ =~ /$match/ ){
		$line = $_;
		$line =~ s/($match)/$colors{$color}\1$color_reset/g;
		print $line;
	} else {
		print $_;
	}
}

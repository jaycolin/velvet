#!/usr/bin/env perl
use LWP::UserAgent;
use Data::Dumper;

#my $playlist_url = "https://www.veniceclassicradio.eu/live1/128.m3u";
my $playlist_url = shift @ARGV;
print "fetch playlist: $playlist_url\n";

my $ua = LWP::UserAgent->new;
my $response = $ua->get($playlist_url);

die "Failed to fetch from $playlist_url: $!\n" unless ($response->is_success);
my $playlist = $response->content;
print $playlist . "\n";


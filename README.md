# rippy - a Perl-based audio stream ripper

## What is this?
A command line utility for saving individual audio files from an audio stream URL

## Usage
```
./rippy [stream URL] ([output directory])
```
example
```
./rippy http://ice1.somafm.com/indiepop-128-mp3 ripped_tracks
```

The current track title is printed to stdout. It will create the optional ```output directory``` if needed.
Each track will be saved in the output directory (or current directory) with a file name based on the track title (track title may be sanitized).
An M3U playlist is created in the output directory.

Currently it supports only ICY protocol and MP3 formats.

## Why?
To archive the sessions of my internet DJ friends, and local radio shows that are otherwise not available as podcast/download 

## TODO
* Get streams from a playlist URL (common formats) e.g.
  - [https://somafm.com/nossl/indiepop.pls](notes/somafm_indiepop.pls)
  - [https://www.veniceclassicradio.eu/live1/128.m3u](notes/venice_classic_radio.m3u)
* Further sanitize filenames
* Support other streaming protocols
* Support audio file formats (AAC, FLAC, ...)
* Fetch tags and album art from external databases (Discogs, CDDB, ...)
* Store everything in a persistent database
  - support MySQL, Postgres, SQLite
* Send output to a Discord channel
* Add option to filter copyright-protected content
* Record date/time of airing, add to tags in audio file, playlist, output directory, anywhere else you want
* Docker image
* Offer to WUGA and/or WUOG for provisioning website download or podcast service
 - Copyright issues
* Frontend - Drupal?

![screenshot of the playlist opened with VLC](screenshot.png)



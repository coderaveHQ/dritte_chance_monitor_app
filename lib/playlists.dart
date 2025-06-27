import 'package:dritte_chance_monitor_app/songs.dart';

enum Playlist {

  probe(
    title: 'Probe',
    songs: <Song>[
      Song.falscheFreunde,
      Song.wennDuGehst,
      Song.niemand,
      Song.duBistMeinUntergang,
      Song.bisDieWeltUntergeht,
      Song.allesNeu,
      Song.kettenreaktion,
      Song.ausweg,
      Song.deinSchweigen,
      Song.melodie,
      Song.portrait,
      Song.traeumer,
      Song.lebDeinenTraum
    ]
  ),
  sphHelvete(
    title: 'SPH Helvete',
    songs: <Song>[
      Song.falscheFreunde,
      Song.kettenreaktion,
      Song.niemand,
      Song.bisDieWeltUntergeht,
      Song.wennDuGehst,
      Song.deinSchweigen
    ]
  ),
  caughtInAMirror(
    title: 'Caught In A Mirror',
    songs: <Song>[
      Song.portrait,
      Song.onlyStar,
      Song.niemand,
      Song.kettenreaktion,
      Song.allesNeu,
      Song.bisDieWeltUntergeht,
      Song.duBistMeinUntergang,
      Song.wennDuGehst,
      Song.zuSpaet,
      Song.deinSchweigen
    ]
  );

  final String title;
  final List<Song> songs;

  const Playlist({
    required this.title,
    required this.songs
  });
}
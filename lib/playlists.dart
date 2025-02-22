import 'package:dritte_chance_monitor_app/songs.dart';

enum Playlist {

  sph(
    title: 'SPH',
    songs: <Song>[
      Song.falscheFreunde,
      Song.kettenreaktion,
      Song.niemand,
      Song.bisDieWeltUntergeht,
      Song.wennDuGehst,
      Song.deinSchweigen
    ]
  ),
  castrop(
    title: 'Castrop',
    songs: <Song>[
      Song.kettenreaktion,
      Song.bisDieWeltUntergeht,
      Song.wennDuGehst
    ]
  );

  final String title;
  final List<Song> songs;

  const Playlist({
    required this.title,
    required this.songs
  });
}
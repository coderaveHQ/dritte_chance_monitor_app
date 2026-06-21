import 'package:dritte_chance_monitor_app/songs.dart';

enum Playlist {

  probe(
    title: 'Probe',
    songs: <Song>[
      Song.zuSpaet,
      Song.wennDuGehst,
      Song.nurDuHoerstDenRest,
      Song.freierFall,
      Song.oben,
      Song.wasIstLos,
      Song.allesNeu,
      Song.jedenTag
    ]
  );

  final String title;
  final List<Song> songs;

  const Playlist({
    required this.title,
    required this.songs
  });
}
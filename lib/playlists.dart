import 'package:dritte_chance_monitor_app/songs.dart';

enum Playlist {

  probe(
    title: 'Probe',
    songs: <Song>[
      Song.falscheFreunde,
      Song.wennDuGehst,
      Song.niemand,
      Song.untergang,
      Song.bisDieWeltUntergeht,
      Song.allesNeu,
      Song.kettenreaktion,
      Song.ausweg,
      Song.schweigen,
      Song.portrait,
      Song.traeumer,
      Song.lebDeinenTraum,
      Song.hinterDemLicht,
      Song.zuSpaet,
      Song.allesDrehtSichWeiter,
      Song.freierFall,
      Song.heyDu,
      Song.wirStehenZusammen,
      Song.sonnenuntergang,
      Song.jetztFragIchMich
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
      Song.schweigen
    ]
  ),
  caughtInAMirror(
    title: 'Caught In A Mirror',
    songs: <Song>[
      Song.portrait,
      Song.hinterDemLicht,
      Song.niemand,
      Song.kettenreaktion,
      Song.allesNeu,
      Song.bisDieWeltUntergeht,
      Song.untergang,
      Song.wennDuGehst,
      Song.zuSpaet,
      Song.schweigen
    ]
  ),
  anrath(
    title: 'Anrath',
    songs: <Song>[
      Song.anweisungAnrathVorPortrait,
      Song.portrait,
      Song.anweisungAnrathVorHinterDemLicht,
      Song.hinterDemLicht,
      Song.anweisungAnrathVorWennDuGehst,
      Song.wennDuGehst,
      Song.anweisungAnrathVorKettenreaktion,
      Song.kettenreaktion,
      Song.untergang,
      Song.anweisungAnrathVorBisDieWeltUntergeht,
      Song.bisDieWeltUntergeht,
      Song.niemand,
      Song.anweisungAnrathVorZuSpaet,
      Song.zuSpaet,
      Song.anweisungAnrathVorSchweigen,
      Song.schweigen,
      Song.allesNeu,
      Song.anweisungAnrathEnde
    ]
  ),
  spHKoeln(
    title: 'SPH Köln',
    songs: <Song>[
      Song.anweisungAnrathVorPortrait,
      Song.portrait,
      Song.anweisungAnrathVorHinterDemLicht,
      Song.hinterDemLicht,
      Song.anweisungAnrathVorKettenreaktion,
      Song.kettenreaktion,
      Song.anweisungAnrathVorZuSpaet,
      Song.zuSpaet,
      Song.anweisungAnrathVorSchweigen,
      Song.schweigen,
      Song.allesNeu
    ]
  );

  final String title;
  final List<Song> songs;

  const Playlist({
    required this.title,
    required this.songs
  });
}
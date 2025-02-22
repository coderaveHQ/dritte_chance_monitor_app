import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:dritte_chance_monitor_app/songs.dart';
import 'package:dritte_chance_monitor_app/playlists.dart';

class PlaylistPage extends StatefulWidget {

  final Playlist playlist;
  final void Function() onBackToMenu;

  const PlaylistPage({ 
    super.key,
    required this.playlist,
    required this.onBackToMenu
  });

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {

  final FocusNode _focusNode = FocusNode();
  int _selectedSongIndex = 0;

  void _onBackToMenu() {
    widget.onBackToMenu.call();
  }

  void _nextSong() {
    if (_selectedSongIndex == widget.playlist.songs.length - 1) return;
    setState(() => _selectedSongIndex++);
  }

  void _previousSong() {
    if (_selectedSongIndex == 0) return;
    setState(() => _selectedSongIndex--);
  }

  @override
  Widget build(BuildContext context) {

    final Song song = widget.playlist.songs[_selectedSongIndex];

    return KeyboardListener(
      focusNode: _focusNode,
      autofocus: true, 
      onKeyEvent: (KeyEvent keyEvent) {
        if (keyEvent is KeyDownEvent) {
          switch (keyEvent.logicalKey.keyLabel.toUpperCase()) {
            case 'A':
              _onBackToMenu();
              break;
            case 'B':
              _previousSong();
              break;
            case 'C':
              _nextSong();
              break;
            default:
              break;
          }
        }

        _focusNode.requestFocus();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Text(
            song.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.graduate(
              fontSize: 20.0,
              color: const Color(0xFFFDFAD8),
              fontWeight: FontWeight.w600
            )
          )
        ),
        body: Text(
          song.text,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.w400
          )
        )
      )
    );
  }
}
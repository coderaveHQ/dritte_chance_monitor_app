import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:dritte_chance_monitor_app/playlists.dart';

class PlaylistsPage extends StatefulWidget {

  final void Function(Playlist playlist) onPlaylistSelected;

  const PlaylistsPage({ 
    super.key,
    required this.onPlaylistSelected
  });

  @override
  State<PlaylistsPage> createState() => _PlaylistsPageState();
}

class _PlaylistsPageState extends State<PlaylistsPage> {

  final FocusNode _focusNode = FocusNode();
  int _selectedPlaylistIndex = 0;

  void nextPlaylist() {
    if (_selectedPlaylistIndex == Playlist.values.length - 1) {
      setState(() => _selectedPlaylistIndex = 0);
    } else {
      setState(() => _selectedPlaylistIndex++);
    }
  }

  void previousPlaylist() {
    if (_selectedPlaylistIndex == 0) {
      setState(() => _selectedPlaylistIndex = Playlist.values.length - 1);
    } else {
      setState(() => _selectedPlaylistIndex--);
    }
  }

  void _onPlaylistSelected(Playlist playlist) async {
    widget.onPlaylistSelected.call(playlist);
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: _focusNode,
      autofocus: true, 
      onKeyEvent: (KeyEvent keyEvent) {
        if (keyEvent is KeyDownEvent) {
          switch (keyEvent.logicalKey.keyLabel.toUpperCase()) {
            case 'A':
              _onPlaylistSelected.call(Playlist.values[_selectedPlaylistIndex]);
              break;
            case 'B':
              previousPlaylist();
              break;
            case 'C':
              nextPlaylist();
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
            'Playlists',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.graduate(
              fontSize: 20.0,
              color: const Color(0xFFFDFAD8),
              fontWeight: FontWeight.w600
            )
          )
        ),
        body: ListView.builder(
          itemCount: Playlist.values.length,
          itemBuilder: (BuildContext context, int index) {

            final Playlist playlist = Playlist.values[index];
            final bool isSelected = index == _selectedPlaylistIndex;

            return Container(
              width: double.infinity,
              height: 90.0,
              color: isSelected ? Colors.blue : null,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 12.0
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    playlist.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.graduate(
                      fontSize: 20.0,
                      color: const Color(0xFFFDFAD8),
                      fontWeight: FontWeight.w600
                    )
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Songs: ${ playlist.songs.length }',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.graduate(
                      fontSize: 16.0,
                      color: const Color(0xFFFDFAD8),
                      fontWeight: FontWeight.w600
                    )
                  )
                ]
              )
            );
          }
        )
      )
    );
  }
}
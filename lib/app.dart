import 'package:flutter/material.dart';

import 'package:dritte_chance_monitor_app/playlist_page.dart';
import 'package:dritte_chance_monitor_app/playlists.dart';
import 'package:dritte_chance_monitor_app/playlists_page.dart';
import 'package:dritte_chance_monitor_app/loading_page.dart';


class App extends StatefulWidget {

  const App({ super.key });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  bool _isLogoShown = true;
  Playlist? _selectedPlaylist;

  void _selectPlaylist(Playlist playlist) {
    setState(() { _selectedPlaylist = playlist; });
  }

  void _onBackToMenu() {
    setState(() { _selectedPlaylist = null; });
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () => setState(() => _isLogoShown = false));
  }

  @override
  Widget build(BuildContext context) {
    if (_isLogoShown) {
      return const LoadingPage();
    }

    if (_selectedPlaylist == null) {
      return PlaylistsPage(
        onPlaylistSelected: _selectPlaylist
      );
    }
    
    return PlaylistPage(
      playlist: _selectedPlaylist!,
      onBackToMenu: _onBackToMenu
    );
  }
}
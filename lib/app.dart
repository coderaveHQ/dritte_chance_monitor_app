import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:dritte_chance_monitor_app/1.dart';
import 'package:dritte_chance_monitor_app/2.dart';
import 'package:dritte_chance_monitor_app/3.dart';
import 'package:dritte_chance_monitor_app/4.dart';
import 'package:dritte_chance_monitor_app/5.dart';
import 'package:dritte_chance_monitor_app/6.dart';

class App extends StatefulWidget {

  const App({ super.key });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  final FocusNode _focusNode = FocusNode();
  bool _isLogoShown = true;
  int _selectedSongIndex = 1;

  String get titleForCurrentIndex => switch (_selectedSongIndex) {
    1 => title1,
    2 => title2,
    3 => title3,
    4 => title4,
    5 => title5,
    6 => title6,
    _ => ''
  };

  String get contentForCurrentIndex => switch (_selectedSongIndex) {
    1 => text1,
    2 => text2,
    3 => text3,
    4 => text4,
    5 => text5,
    6 => text6,
    _ => ''
  };

  void nextSong() {
    if (_selectedSongIndex == 6) return;
    setState(() => _selectedSongIndex++);
  }

  void previousSong() {
    if (_selectedSongIndex == 1) return;
    setState(() => _selectedSongIndex--);
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () => setState(() => _isLogoShown = false));
  }

  @override
  Widget build(BuildContext context) {
    if (_isLogoShown) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpeg',
              fit: BoxFit.contain
            ),
            const SizedBox(height: 50.0),
            Text(
              'TIME TO ROCK!',
              textAlign: TextAlign.center,
              style: GoogleFonts.graduate(
                fontSize: 48.0,
                color: const Color(0xFFFDFAD8),
                fontWeight: FontWeight.w700
              )
            )
          ]
        )
      );
    }
    
    return KeyboardListener(
      focusNode: _focusNode,
      autofocus: true, 
      onKeyEvent: (KeyEvent keyEvent) {
        if (keyEvent is KeyDownEvent) {
          switch (keyEvent.logicalKey.keyLabel) {
            case 'B':
              previousSong();
              break;
            case 'C':
              nextSong();
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
          backgroundColor: Colors.black,
          title: Text(
            titleForCurrentIndex,
            style: GoogleFonts.graduate(
              fontSize: 22.0,
              color: const Color(0xFFFDFAD8),
              fontWeight: FontWeight.w700
            )
          )
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            contentForCurrentIndex,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.w400
            )
          )
        )
      )
    );
  }
}
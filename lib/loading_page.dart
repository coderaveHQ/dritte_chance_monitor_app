import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class LoadingPage extends StatelessWidget {

  const LoadingPage({ super.key });

  @override
  Widget build(BuildContext context) {
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
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/game/presentation/game_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: GoogleFonts.coiny().fontFamily
      ),
      home:  const GamePage(),
    );
  }
}


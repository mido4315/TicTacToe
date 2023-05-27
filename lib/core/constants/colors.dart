import 'package:flutter/material.dart';

class MainColor {
  static Color primaryColor = const Color(0xFF391898);
  static Color secondaryColor = const Color(0xFFC4C4C4);
  static Color accentColor = primaryColor;
  static Color winnerColor = const Color(0xFF23C834);
  static const Gradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.center,
    colors: [
      Color(0xFF5D5FEF),
      Color(0xFF625BED),
      Color(0xFF843CE0),
    ],
  );

// static Color primaryColor = const Color(0xFF606c38);
// static Color secondaryColor = const Color(0xFF283618);
// static Color accentColor = const Color(0xFFe9c46a);
// static Color winnerColor = const Color(0xFFfefae0);

// static Color primaryColor = const Color(0xFF393646);
// static Color secondaryColor = const Color(0xFF4F4557);
// static Color accentColor = const Color(0xFF393646);
// static Color winnerColor = const Color(0xFF6D5D6E);
}

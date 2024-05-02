import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: const Color(0xFF0A0E21),
  hintColor: const Color(0xff40bf7a),
  scaffoldBackgroundColor: const Color(0xFF0A0E21),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF0A0E21),
  ),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: Colors.redAccent),
);

// ThemeData darkMode = ThemeData(
//   brightness: Brightness.dark,
//   primarySwatch: const MaterialColor(
//     0xFF0A0E21,
//     <int, Color>{
//       50: Color(0xFF30374C),
//       100: Color(0xFF272E41),
//       200: Color(0xFF1F2537),
//       300: Color(0xFF171C2D),
//       400: Color(0xFF101423),
//       500: Color(0xFF0A0E21),
//       600: Color(0xFF080B1D),
//       700: Color(0xFF060919),
//       800: Color(0xFF040715),
//       900: Color(0xFF020511),
//     },
//   ),
//
//   // Define the rest of your dark theme properties here
// );

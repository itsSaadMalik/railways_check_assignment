import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData appThemeData = ThemeData(
    buttonTheme: ButtonThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(130, 20, 130, 20)),
        backgroundColor: WidgetStatePropertyAll(Color(0xffa9a9a9)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        foregroundColor: WidgetStatePropertyAll(
          const Color.fromARGB(255, 8, 8, 8),
        ),
      ),
    ),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.dmSans(fontSize: 13),
      bodyMedium: GoogleFonts.dmSans(fontSize: 15),
      bodyLarge: GoogleFonts.dmSans(fontSize: 17),
      titleSmall: GoogleFonts.dmSans(fontSize: 15.5),
      titleLarge: GoogleFonts.dmSans(fontSize: 15.5),
      titleMedium: GoogleFonts.dmSans(fontSize: 15.5),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: const Color.fromARGB(
          255,
          65,
          65,
          65,
        ).withValues(alpha: .3),
        systemNavigationBarColor: const Color.fromARGB(255, 128, 128, 128),
      ),
    ),
    cardColor: Colors.white,
  );
}

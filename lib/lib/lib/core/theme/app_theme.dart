Enterimport 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryGreen = Color(0xFF2E7D32);
  static const Color accentGold = Color(0xFFFFD700);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryGreen,
    colorScheme: const ColorScheme.light(
      primary: primaryGreen, 
      secondary: accentGold,
    ),
    textTheme: GoogleFonts.cairoTextTheme(ThemeData.light().textTheme),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryGreen,
      foregroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: GoogleFonts.cairo(
        fontSize: 20, 
        fontWeight: FontWeight.bold, 
        color: Colors.white,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryGreen,
    colorScheme: const ColorScheme.dark(
      primary: primaryGreen, 
      secondary: accentGold,
    ),
    textTheme: GoogleFonts.cairoTextTheme(ThemeData.dark().textTheme),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF1E1E1E),
      foregroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: GoogleFonts.cairo(
        fontSize: 20, 
        fontWeight: FontWeight.bold, 
        color: Colors.white,
      ),
    ),
  );
}

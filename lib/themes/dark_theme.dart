// filepath: c:\Users\hp\Desktop\focusplanner\lib\themes\dark_theme.dart
import 'package:flutter/material.dart';

// Define color constants for dark theme
const Color primaryBlue = Color(0xFF2196F3); // Primary Blue
const Color blue700 = Color(0xFF1976D2); // Blue 700
const Color blue400 = Color(0xFF42A5F5); // Blue 400
const Color blue200 = Color(0xFF90CAF9); // Blue 200
const Color blue50 = Color(0xFFE3F2FD); // Blue 50
const Color grey900 = Color(0xFF212121); // Grey 900
const Color grey700 = Color(0xFF616161); // Grey 700
const Color grey400 = Color(0xFFBDBDBD); // Grey 400
const Color grey200 = Color(0xFFEEEEEE); // Grey 200
const Color grey50 = Color(0xFFFAFAFA); // Grey 50

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: grey900,

  colorScheme: ColorScheme.dark(
    primary: primaryBlue,
    secondary: blue700,
    surface: grey700, // Use this instead of background
    onSurface: grey200, // Use this instead of onBackground
    onPrimary: Colors.white,
    onSecondary: Colors.white,
  ),

  // Card Theme
  cardTheme: CardTheme(
    color: grey700,
    elevation: 2,
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),

  // Divider Theme
  dividerTheme: const DividerThemeData(
    color: grey400,
    thickness: 1,
    space: 0,
  ),

  // AppBar Theme
  appBarTheme: const AppBarTheme(
    backgroundColor: grey900,
    elevation: 4,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  ),

  // Text Theme
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: grey200,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: grey200,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: grey200,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      color: grey200,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      color: grey200,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      color: grey200,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: grey200,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      color: grey400,
      fontSize: 14,
    ),
    titleLarge: TextStyle(
      color: grey200,
      fontSize: 16,
    ),
    titleMedium: TextStyle(
      color: grey400,
      fontSize: 14,
    ),
    labelLarge: TextStyle(
      color: grey200,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: TextStyle(
      color: grey400,
      fontSize: 12,
    ),
    labelSmall: TextStyle(
      color: grey400,
      fontSize: 10,
    ),
  ),

  // Elevated Button Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryBlue,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  ),

  // Text Field Theme
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: grey700,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: grey400),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: primaryBlue),
      borderRadius: BorderRadius.circular(8),
    ),
    hintStyle: const TextStyle(color: grey400),
    labelStyle: const TextStyle(color: grey200),
  ),

  // Floating Action Button Theme
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primaryBlue,
    foregroundColor: Colors.white,
    elevation: 4,
  ),

  // Bottom Navigation Bar Theme
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: grey900,
    selectedItemColor: primaryBlue,
    unselectedItemColor: grey400,
    elevation: 4,
  ),

  // Chip Theme
  chipTheme: ChipThemeData(
    backgroundColor: grey700,
    selectedColor: primaryBlue,
    disabledColor: grey400,
    labelStyle: const TextStyle(color: grey200),
    secondaryLabelStyle: const TextStyle(color: Colors.white),
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),

  // SnackBar Theme
  snackBarTheme: SnackBarThemeData(
    backgroundColor: grey700,
    contentTextStyle: const TextStyle(color: Colors.white),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);
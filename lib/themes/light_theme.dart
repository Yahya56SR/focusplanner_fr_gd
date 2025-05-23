import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blueGrey[200],
      scaffoldBackgroundColor: Colors.grey[100],
      colorScheme: ColorScheme.light(
        primary: const Color(0xff6200ee),
        onPrimary: Colors.white,
        primaryContainer: const Color(0xffbb86fc),
        onPrimaryContainer: Colors.black,
        primaryFixed: const Color(0xff3700b3),
        primaryFixedDim: const Color(0xffbb86fc),
        onPrimaryFixed: Colors.black,
        onPrimaryFixedVariant: const Color(0xff6200ee),
        secondary: const Color(0xff03dac6),
        onSecondary: Colors.black,
        secondaryContainer: const Color(0xff018786),
        onSecondaryContainer: Colors.white,
        secondaryFixed: const Color(0xff03dac6),
        secondaryFixedDim: const Color(0xff018786),
        onSecondaryFixed: Colors.black,
        onSecondaryFixedVariant: const Color(0xff03dac6),
        tertiary: const Color(0xffb00020),
        onTertiary: Colors.white,
        tertiaryContainer: const Color(0xfff5f5f5),
        onTertiaryContainer: Colors.black,
        tertiaryFixed: const Color(0xffb00020),
        tertiaryFixedDim: const Color(0xfff5f5f5),
        onTertiaryFixed: Colors.black,
        onTertiaryFixedVariant: const Color(0xffb00020),
        error: const Color(0xffb00020),
        onError: Colors.white,
        errorContainer: const Color(0xffcf6679),
        onErrorContainer: Colors.black,
        surface: const Color(0xffffffff),
        onSurface: Colors.black,
        surfaceDim: const Color(0xfff5f5f5),
        surfaceBright: const Color(0xffffffff),
        surfaceContainerLowest: const Color(0xfff0f0f0),
        surfaceContainerLow: const Color(0xffe0e0e0),
        surfaceContainer: const Color(0xffd6d6d6),
        surfaceContainerHigh: const Color(0xffcfcfcf),
        surfaceContainerHighest: const Color(0xffc4c4c4),
        onSurfaceVariant: const Color(0xff4a4a4a),
        outline: const Color(0xff737373),
        outlineVariant: const Color(0xff8a8a8a),
        shadow: Colors.black,
        scrim: Colors.black,
        inverseSurface: const Color(0xff121212),
        onInverseSurface: const Color(0xffffffff),
        inversePrimary: const Color(0xffbb86fc),
        surfaceTint: const Color(0xff6200ee),
      ),
      cardColor: Colors.grey[200],
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blueGrey[100],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Colors.black87),
        bodyMedium: TextStyle(color: Colors.black87),
        headlineLarge: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w600),
        bodySmall: TextStyle(color: Colors.black54, fontSize: 12),
        labelLarge: TextStyle(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.w600),
        labelMedium: TextStyle(color: Colors.black87, fontSize: 12, fontWeight: FontWeight.w500),
        labelSmall: TextStyle(color: Colors.black54, fontSize: 10, fontWeight: FontWeight.w400),
        displayLarge: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(color: Colors.black87, fontSize: 28, fontWeight: FontWeight.w600),
        displaySmall: TextStyle(color: Colors.black87, fontSize: 24, fontWeight: FontWeight.w500),
        headlineMedium: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.w400),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blueGrey[300],
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, backgroundColor: Colors.blueGrey[300],
          textStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black87),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(color: Colors.black54),
      ),
    );
  }
}
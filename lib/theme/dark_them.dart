import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    fontFamily: 'SFProText',
    primaryColor: const Color(0xFF00735f),
    brightness: Brightness.dark,
    cardColor: const Color(0xFF242424),
    hintColor: const Color(0xFF9F9F9F),
    scaffoldBackgroundColor: const Color(0xFF1C1F1F),
    primaryColorDark: const Color(0xff01463e),

    colorScheme: const ColorScheme.dark(
        primary: Color(0xFF02B8A2),
        error: Color(0xFFE84D4F),
        secondary: Color(0xFF008C7B),
        tertiary: Color(0xFF7CCD8B)));
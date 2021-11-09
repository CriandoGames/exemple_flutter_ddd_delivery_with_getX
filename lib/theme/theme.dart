import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColor {
  static const purple = Color(0xFF5117AC);
  static const green = Color(0xFF20D0C4);
  static const dark = Color(0xFF03091E);
  static const grey = Color(0xFF212738);
  static const greyLight = Color(0xFFBBBBBB);
  static const veryLightGrey = Color(0xFFF3F3F3);
  static const white = Color(0xFFFFFFFF);
  static const pink = Color(0xFFF5638B);
}

final colorsGradients = [ThemeColor.green, ThemeColor.purple];

final _borderLight = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(
        color: ThemeColor.veryLightGrey, width: 2, style: BorderStyle.solid));

final _bordedark = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(
        color: ThemeColor.grey, width: 2, style: BorderStyle.solid));

final themeLight = ThemeData(
  scaffoldBackgroundColor: ThemeColor.white,
  appBarTheme:  AppBarTheme(
    color: ThemeColor.white,
    titleTextStyle: GoogleFonts.poppins(
      color: ThemeColor.purple,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  canvasColor: ThemeColor.white,
  primaryColor: ThemeColor.purple,
  colorScheme: const ColorScheme.light(
    primary: ThemeColor.white,
    onPrimary: ThemeColor.white,
    secondary: ThemeColor.veryLightGrey,
    onSecondary: ThemeColor.white,
    surface: ThemeColor.white,
    onSurface: ThemeColor.white,
    background: ThemeColor.white,
  ),
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: ThemeColor.purple,
    displayColor: ThemeColor.purple,
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsets.zero,
    border: _borderLight,
    enabledBorder: _borderLight,
    focusedBorder: _borderLight,
    labelStyle: GoogleFonts.poppins(
      color: ThemeColor.white,
      fontSize: 10,
    ),
    hintStyle: GoogleFonts.poppins(
      color: ThemeColor.greyLight,
      fontSize: 10,
    ),
  ),
  iconTheme: const IconThemeData(color: ThemeColor.purple),
  primaryIconTheme:
      const IconThemeData(color: ThemeColor.purple, opacity: 1, size: 60),
);

final thenmeDark = ThemeData(
  appBarTheme:  AppBarTheme(
    color: ThemeColor.purple,
    titleTextStyle: GoogleFonts.poppins(
      color: ThemeColor.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  canvasColor: ThemeColor.grey,
  primaryColor: ThemeColor.green,
  scaffoldBackgroundColor: ThemeColor.dark,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: ThemeColor.green,
    displayColor: ThemeColor.green,
  ),
  colorScheme: const ColorScheme.light(
    primary: ThemeColor.grey,
    onPrimary: ThemeColor.grey,
    secondary: Colors.transparent,
    onSecondary: ThemeColor.grey,
    surface: ThemeColor.grey,
    onSurface: ThemeColor.grey,
    background: ThemeColor.grey,
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsets.zero,
    border: _bordedark,
    enabledBorder: _bordedark,
    focusedBorder: _bordedark,
    fillColor: ThemeColor.grey,
    labelStyle: GoogleFonts.poppins(
      color: ThemeColor.purple,
      fontSize: 10,
    ),
    filled: true,
    hintStyle: GoogleFonts.poppins(
      color: ThemeColor.white,
      fontSize: 10,
    ),
  ),
  iconTheme: const IconThemeData(color: ThemeColor.white),
  primaryIconTheme:
      const IconThemeData(color: ThemeColor.purple, opacity: 1, size: 60),
);

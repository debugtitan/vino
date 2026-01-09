import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vino/utils/constants/brand_colors.dart';
import 'package:vino/utils/themes/components/button_theme.dart';

ThemeData lightTheme = ThemeData().copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: BrandColors.brand,
    primary: BrandColors.primary,
    surface: Colors.white,
    onPrimary: Colors.white,
    onSurface: BrandColors.surface,
  ),
  textTheme: GoogleFonts.dmSansTextTheme(),
  scaffoldBackgroundColor: Colors.white,
  filledButtonTheme: VinoButtonTheme.filledButtonTheme,
  outlinedButtonTheme: VinoButtonTheme.outlinedButtonTheme
);

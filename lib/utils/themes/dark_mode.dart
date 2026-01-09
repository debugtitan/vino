import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:vino/utils/constants/brand_colors.dart";
import 'package:vino/utils/themes/components/button_theme.dart';

ThemeData darkTheme = ThemeData().copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: BrandColors.brand,
    primary: BrandColors.brand,
    surface: BrandColors.surface,
    onPrimary: Colors.white,
    onSurface: Colors.white,
  ),
  brightness: Brightness.dark,
  textTheme: GoogleFonts.dmSansTextTheme(),
  scaffoldBackgroundColor: BrandColors.surface,
  filledButtonTheme: VinoButtonTheme.filledButtonTheme,
  outlinedButtonTheme: VinoButtonTheme.outlinedButtonTheme,
);

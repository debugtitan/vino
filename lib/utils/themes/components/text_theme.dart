import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vino/utils/constants/brand_colors.dart';

class VinoTextTheme {
  const VinoTextTheme._();

  static final TextTheme darkTextTheme = GoogleFonts.dmSansTextTheme().copyWith(
    bodyMedium: GoogleFonts.dmSans(
      fontSize: 16,
      height: 26 / 16,
      color: BrandColors.neutraDark,
    ),
    headlineSmall: GoogleFonts.dmSans(
      fontSize: 23,
      height: 33 / 23,
      fontWeight: FontWeight.w600,
      color: ThemeData.dark().colorScheme.onSurface,
    ),
  );

  static final TextTheme lightTextTheme = GoogleFonts.dmSansTextTheme()
      .copyWith(
        bodyMedium: GoogleFonts.dmSans(
          fontSize: 16,
          height: 26 / 16,
          color: BrandColors.neutral,
        ),
        headlineSmall: GoogleFonts.dmSans(
          fontSize: 23,
          height: 33 / 23,
          fontWeight: FontWeight.w600,
          color: ThemeData().colorScheme.onSurface,
        ),
      );
}

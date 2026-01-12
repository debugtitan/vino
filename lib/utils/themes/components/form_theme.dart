import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vino/utils/constants/brand_colors.dart';

class VinoFormTheme {
  VinoFormTheme._();

  static InputDecorationTheme formTheme(
    Brightness brightness,
    ColorScheme colorScheme,
  ) {
    final isLightMode = brightness == Brightness.light;

    return InputDecorationTheme().copyWith(
      labelStyle: GoogleFonts.dmSans(
        fontSize: 14,
        color: colorScheme.onSurface,
        height: 22 / 14,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 14),
      filled: true,
      fillColor: colorScheme.onSurface.withValues(alpha: .05),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: isLightMode ? Color(0xFFE0DDDA) : Color(0xFF423D39),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: isLightMode
              ? BrandColors.brand
              : colorScheme.primary.withValues(alpha: 0.2),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

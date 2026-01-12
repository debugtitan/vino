import 'package:flutter/material.dart';
import "package:vino/utils/constants/brand_colors.dart";

class VinoButtonTheme {
  VinoButtonTheme._();

  static OutlinedButtonThemeData outlinedButtonTheme(Brightness brightness) {
    final bool isLightTheme = brightness == Brightness.light;
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minimumSize: const Size.fromHeight(52),
        side: BorderSide(
          color: isLightTheme
              ? BrandColors.primary
              : BrandColors.brand.withValues(alpha: 0.2),
          width: 1,
        ),
        backgroundColor: isLightTheme ? Colors.white : BrandColors.outline,
      ),
    );
  }

  static final filledButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      minimumSize: const Size.fromHeight(52),
    ),
  );
}

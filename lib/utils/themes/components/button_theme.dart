import 'package:flutter/material.dart';

class VinoButtonTheme {
  VinoButtonTheme._();

  static final outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      minimumSize: const Size.fromHeight(52),
      textStyle: ThemeData().textTheme.titleMedium!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 26 / 16,
      ),
    ),
  );

  static final filledButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      minimumSize: const Size.fromHeight(52),
      textStyle: ThemeData().textTheme.titleMedium!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 26 / 16,
      ),
    ),
  );
}

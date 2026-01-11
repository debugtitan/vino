import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:vino/utils/constants/brand_colors.dart";
import 'package:vino/utils/themes/components/button_theme.dart';
import 'package:vino/utils/themes/components/text_theme.dart';

ThemeData darkTheme = ThemeData().copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: BrandColors.brand,
    primary: BrandColors.brand,
    surface: BrandColors.surface,
    onPrimary: Colors.white,
    onSurface: Colors.white,
  ),
  brightness: Brightness.dark,
  textTheme: VinoTextTheme.darkTextTheme,
  scaffoldBackgroundColor: BrandColors.surface,
  filledButtonTheme: VinoButtonTheme.filledButtonTheme,
  outlinedButtonTheme: VinoButtonTheme.outlinedButtonTheme(Brightness.dark),
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      // systemNavigationBarContrastEnforced: false,
    ),
  ),
);

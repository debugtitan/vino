import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:vino/utils/constants/brand_colors.dart';
import 'package:vino/utils/themes/components/button_theme.dart';
import 'package:vino/utils/themes/components/text_theme.dart';

ThemeData lightTheme = ThemeData().copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: BrandColors.brand,
    primary: BrandColors.primary,
    surface: Colors.white,
    onPrimary: Colors.white,
    onSurface: BrandColors.surface,
  ),
  textTheme: VinoTextTheme.lightTextTheme,
  scaffoldBackgroundColor: Colors.white,
  filledButtonTheme: VinoButtonTheme.filledButtonTheme,
  outlinedButtonTheme: VinoButtonTheme.outlinedButtonTheme,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  ),
);

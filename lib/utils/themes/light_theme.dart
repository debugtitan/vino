import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:vino/utils/constants/brand_colors.dart';
import 'package:vino/utils/themes/components/button_theme.dart';
import 'package:vino/utils/themes/components/form_theme.dart';
import 'package:vino/utils/themes/components/text_theme.dart';

final ColorScheme lightColorScheme = ColorScheme.fromSeed(
  seedColor: BrandColors.brand,
  primary: BrandColors.primary,
  surface: Colors.white,
  onPrimary: Colors.white,
  onSurface: BrandColors.surface,
);

ThemeData lightTheme = ThemeData().copyWith(
  colorScheme: lightColorScheme,
  textTheme: VinoTextTheme.lightTextTheme,
  scaffoldBackgroundColor: Colors.white,
  filledButtonTheme: VinoButtonTheme.filledButtonTheme,
  outlinedButtonTheme: VinoButtonTheme.outlinedButtonTheme(Brightness.light),
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  ),
  inputDecorationTheme: VinoFormTheme.formTheme(
    Brightness.light,
    lightColorScheme,
  ),
);

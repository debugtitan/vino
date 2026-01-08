import 'package:flutter/material.dart';
import 'package:vino/screens/splash.dart';
import 'package:vino/utils/themes/theme.dart';

void main() {
  runApp(Vino());
}

class Vino extends StatelessWidget {
  const Vino({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vino Wallet",
      themeMode: ThemeMode.system,
      theme: VinoAppTheme.lightMode,
      darkTheme: VinoAppTheme.darkMode,
      home: SplashView(),
    );
  }
}

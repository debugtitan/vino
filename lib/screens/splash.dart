import 'package:flutter/material.dart';
import 'package:vino/widgets/brand_text.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: BrandText()));
  }
}

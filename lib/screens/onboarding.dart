import 'package:flutter/material.dart';
import 'package:vino/widgets/brand_text.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: BrandText(fontSize: 23), centerTitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            FilledButton(onPressed: () {}, child: Text("Login")),
            SizedBox(height: 6),
            OutlinedButton(onPressed: () {}, child: Text("Create Account")),
          ],
        ),
      ),
    );
  }
}

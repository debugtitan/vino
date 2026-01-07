import 'package:flutter/material.dart';

void main() {
  runApp(const Vino());
}

class Vino extends StatelessWidget {
  const Vino({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Vino Wallet", home: Text("Hello vino"));
  }

}

import 'package:flutter/material.dart';
import 'package:vino/utils/constants/brand_colors.dart';

class BrandText extends StatelessWidget {
  const BrandText({super.key, this.fontSize = 33});

  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    final parentStyle = Theme.of(context).textTheme.bodyLarge!.copyWith(
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
      height: 45 / fontSize!,
    );

    return RichText(
      text: TextSpan(
        text: "Vino",
        children: [
          TextSpan(
            text: " Wallet",
            style: parentStyle.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              // letterSpacing: 1.5,
            ),
          ),
        ],
        style: parentStyle.copyWith(color: BrandColors.brand),
      ),
    );
  }
}

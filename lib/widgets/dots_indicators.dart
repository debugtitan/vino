import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.count, required this.index});

  final int count;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (i) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: i == index ? 20 : 8,
          decoration: BoxDecoration(
            color: i == index
                ? Theme.of(context).colorScheme.primary
                : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

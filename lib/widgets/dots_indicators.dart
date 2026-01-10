import 'package:flutter/material.dart';
import 'package:vino/widgets/ploygon_clipper.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.count,
    required this.index,
    this.polygonSides = 4,
  });

  final int count;
  final int index;
  final int polygonSides;

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    final inactive = Colors.grey.shade400;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (i) {
        final isActive = i == index;

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) =>
              ScaleTransition(scale: animation, child: child),
          child: isActive
              ? ClipPath(
                  key: ValueKey('polygon_$i'),
                  clipper: PolygonClipper(sides: polygonSides),
                  child: Container(
                    width: 8,
                    height: 8,
                    color: primary,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                  ),
                )
              : Container(
                  key: ValueKey('ellipse_$i'),
                  width: 6,
                  height: 6,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: inactive,
                    shape: BoxShape.circle,
                  ),
                ),
        );
      }),
    );
  }
}

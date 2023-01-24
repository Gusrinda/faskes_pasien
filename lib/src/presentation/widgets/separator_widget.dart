import 'package:flutter/material.dart';
import 'package:pasien/src/core/config/theme_colors.dart';

class HorizontalDottedSeparator extends StatelessWidget {
  const HorizontalDottedSeparator({
    Key? key,
    this.height = 1,
    this.dottedWidth = 4.0,
    this.color = ThemeColors.greyPrimary,
  }) : super(key: key);

  final double dottedWidth;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = dottedWidth;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();

        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}

import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:flutter/material.dart';

class HorizontalStripIndicator extends StatelessWidget {
  const HorizontalStripIndicator({
    Key? key,
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
    this.count = 2,
    this.activeIndex = 0,
    this.separator = 8,
  }) : super(key: key);

  final EdgeInsetsGeometry margin;
  final int count;
  final int activeIndex;
  final double separator;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];

    for (int i = 0; i < count; i++) {
      if (i > 0 && separator > 0) {
        children.add(SizedBox(width: separator));
      }
      final active = i <= activeIndex;
      children.add(
        Expanded(
          child: Container(
            color: active
                ? Theme.of(context).primaryColor
                : ThemeColors.backgroundField,
            height: 2,
          ),
        ),
      );
    }

    return Padding(padding: margin, child: Row(children: children));
  }
}

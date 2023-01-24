import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:flutter/material.dart';

import 'card_widget.dart';

class MenuOutlinedTile extends StatelessWidget {
  const MenuOutlinedTile(
    this.label, {
    super.key,
    this.onTap,
    this.margin = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  });

  final String label;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final row = Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Icon(
          Icons.chevron_right,
          color: ThemeColors.greyCaption,
          size: 20,
        ),
      ],
    );

    final container = OutlineCard(
      margin: margin,
      padding: const EdgeInsets.fromLTRB(16, 10, 8, 10),
      child: row,
    );

    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: container);
    }

    return container;
  }
}

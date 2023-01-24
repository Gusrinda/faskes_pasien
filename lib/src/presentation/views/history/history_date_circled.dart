import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';

class HistoryDateCircled extends StatelessWidget {
  const HistoryDateCircled({
    Key? key,
    required this.day,
    this.selected = false,
  }) : super(key: key);

  final int day;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.sp,
      width: 32.sp,
      margin: EdgeInsets.symmetric(horizontal: 2.sp, vertical: 4.sp),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: selected ? Border.all(color: ThemeColors.grey4) : null,
      ),
      child: Center(
        child: Text(
          day > 9 ? '$day' : '0$day',
          style: selected ? null : const TextStyle(color: ThemeColors.grey4),
        ),
      ),
    );
  }
}

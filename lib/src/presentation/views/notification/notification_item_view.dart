import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/formatter.dart';

class NotificationItemView extends StatelessWidget {
  const NotificationItemView({
    Key? key,
    required this.message,
    this.image,
    required this.timestamp,
    this.read = true,
    this.onTap,
  }) : super(key: key);

  final String message;
  final String? image;
  final DateTime timestamp;
  final bool read;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      padding: EdgeInsets.only(bottom: 7.sp),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 9.sp,
            height: 9.sp,
            margin: EdgeInsets.only(top: 6.sp),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: !read
                    ? Theme.of(context).primaryColor
                    : ThemeColors.greyCaption,
                width: 2.sp,
              ),
            ),
          ),
          SizedBox(width: 10.sp),
          if (image != null) ...{
            Container(
              width: 100.sp,
              height: 60.sp,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(3.sp)),
              ),
            ),
            SizedBox(width: 10.sp),
          },
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: !read
                        ? ThemeColors.blackPrimary
                        : ThemeColors.greyCaption,
                  ),
                ),
                SizedBox(height: 7.sp),
                Text(
                  kDateTimeFullMonthFormat.format(timestamp),
                  style: TextStyle(
                    fontSize: 8.sp,
                    color: !read
                        ? ThemeColors.blackPrimary
                        : ThemeColors.greyCaption,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    if (onTap != null) {
      return InkWell(onTap: onTap, child: child);
    }

    return child;
  }
}

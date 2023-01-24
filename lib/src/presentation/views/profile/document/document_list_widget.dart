import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';

class DocumentTile extends StatelessWidget {
  const DocumentTile({
    super.key,
    required this.name,
    this.value,
    this.uploaded = false,
  });

  final String name;
  final String? value;
  final bool uploaded;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 12.sp),
              ),
              Text(
                value ?? '-',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: ThemeColors.grey4,
                ),
              ),
            ],
          ),
        ),
        uploaded
            ? Icon(
                Icons.check_circle,
                color: Theme.of(context).primaryColor,
              )
            : Icon(
                Icons.check_circle,
                color: Theme.of(context).disabledColor,
              )
      ],
    );
  }
}

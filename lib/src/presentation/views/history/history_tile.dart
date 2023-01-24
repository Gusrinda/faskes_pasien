import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/formatter.dart';

import 'history_card.dart';

class HistoryTile extends StatelessWidget {
  const HistoryTile({
    Key? key,
    required this.hour,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.type,
  }) : super(key: key);

  final String hour;
  final String title;
  final String subtitle;
  final int price;
  final HistoryType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.sp),
      padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
      child: Row(
        children: [
          Container(
            width: 3.sp,
            height: 79.sp,
            color: () {
              switch (type) {
                case HistoryType.pembelianObat:
                  return const Color(0xFFF2C94C);
                case HistoryType.konsultasiOnline:
                  return Theme.of(context).primaryColor;
              }
            }(),
          ),
          SizedBox(width: 20.sp),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  hour,
                  style: TextStyle(
                    fontSize: 10.sp,
                    height: 1.5.sp,
                    color: ThemeColors.greyCaption,
                  ),
                ),
                SizedBox(height: 8.sp),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12.sp,
                    height: 1.5.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 10.sp,
                    height: 1.5.sp,
                  ),
                ),
              ],
            ),
          ),
          Text(
            kRupiahFormat.format(price),
            style: TextStyle(
              fontSize: 12.sp,
              height: 1.5.sp,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

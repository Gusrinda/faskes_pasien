import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/core/config/theme_colors.dart';

class DokterTile extends StatelessWidget {
  const DokterTile({
    super.key,
    required this.name,
    required this.poli,
    this.selected = false,
    this.onTap,
    this.image,
  });

  final String name;
  final String poli;
  final String? image;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          image != null
              ? Container(
                  height: 80.sp,
                  width: 80.sp,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image!),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                )
              : Assets.images.doctorPhoto.image(width: 80.sp, height: 80.sp),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Text(
                  poli,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: ThemeColors.greyCaption,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.work_history, size: 14.sp),
                    const SizedBox(width: 4),
                    Text(
                      '10 Tahun',
                      style: TextStyle(fontSize: 11.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (selected) ...{
            const SizedBox(width: 8),
            Icon(
              Icons.check_circle,
              color: Theme.of(context).primaryColor,
            ),
          }
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    Key? key,
    required this.image,
    this.imageWidth,
    this.imageHeight,
    required this.title,
    this.subtitle,
    this.action,
    this.button,
    this.dense = false,
  }) : super(key: key);

  final String image;
  final double? imageWidth;
  final double? imageHeight;
  final String title;
  final String? subtitle;
  final Widget? action;
  final Widget? button;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    final column = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildImage(),
        SizedBox(height: 24.sp),
        _buildTitle(),
        if (subtitle != null) ...{
          SizedBox(height: 8.sp),
          _buildSubtitle(),
        },
        if (action != null) ...{
          SizedBox(height: 24.sp),
          action!,
        },
        if (button != null) ...{
          SizedBox(height: 24.sp),
          button!,
        },
      ],
    );

    if (dense) return column;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: column,
      ),
    );
  }

  Widget _buildImage() {
    if (image.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: CircleAvatar(
          radius: 64.sp,
          backgroundColor: Colors.grey.shade300,
        ),
      );
    }

    if (imageWidth == null && imageHeight == null) {
      return Image.asset(image, height: 155.sp);
    }

    return Image.asset(image, width: imageWidth, height: imageHeight);
  }

  Widget _buildTitle() {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSubtitle() {
    return Text(
      subtitle!,
      style: TextStyle(fontSize: 12.sp),
      textAlign: TextAlign.center,
    );
  }
}

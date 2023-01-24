import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum HistoryType { pembelianObat, konsultasiOnline }

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    Key? key,
    required this.number,
    required this.title,
    required this.type,
  }) : super(key: key);

  final String number;
  final String title;
  final HistoryType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case HistoryType.pembelianObat:
        return Container(
          width: 225.sp,
          margin: EdgeInsets.symmetric(horizontal: 8.sp),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Theme.of(context).primaryColor,
          ),
          padding: EdgeInsets.all(16.sp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                number,
                style: TextStyle(
                  fontSize: 10.sp,
                  height: 1.5.sp,
                  color: Colors.white,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  height: 1.5.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Theme.of(context).primaryColor,
                      textStyle: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      visualDensity: VisualDensity.standard,
                    ),
                    child: const Text('Belum Dibayar'),
                  ),
                ],
              ),
            ],
          ),
        );
      case HistoryType.konsultasiOnline:
        return Container(
          width: 225.sp,
          margin: EdgeInsets.symmetric(horizontal: 8.sp),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFE3FFDE),
          ),
          padding: EdgeInsets.all(16.sp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                number,
                style: TextStyle(fontSize: 10.sp, height: 1.5.sp),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  height: 1.5.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      visualDensity: VisualDensity.standard,
                    ),
                    child: const Text('Belum Dibayar'),
                  ),
                ],
              ),
            ],
          ),
        );
    }
  }
}

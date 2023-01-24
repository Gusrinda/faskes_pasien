import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/presentation/widgets/card_widget.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class InsuranceCard extends StatelessWidget {
  const InsuranceCard({
    Key? key,
    required this.name,
    required this.status,
    required this.insurance,
  }) : super(key: key);

  final String name;
  final String status;
  final String insurance;

  @override
  Widget build(BuildContext context) {
    return OutlineCard(
      margin: EdgeInsets.symmetric(vertical: 8.sp),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(child: TitleLabel(name)),
              GreyChip(status),
            ],
          ),
          const SizedBox(height: 4),
          Text(insurance, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

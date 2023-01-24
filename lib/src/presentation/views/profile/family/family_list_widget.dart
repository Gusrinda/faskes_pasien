import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/presentation/widgets/card_widget.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class FamilyCard extends StatelessWidget {
  const FamilyCard({
    Key? key,
    required this.name,
    required this.status,
    required this.address,
  }) : super(key: key);

  final String name;
  final String status;
  final String address;

  @override
  Widget build(BuildContext context) {
    return OutlineCard(
      margin: const EdgeInsets.symmetric(vertical: 8),
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
          Text(address, style: TextStyle(fontSize: 12.sp)),
        ],
      ),
    );
  }
}

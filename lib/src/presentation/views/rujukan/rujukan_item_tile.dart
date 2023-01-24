import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';

class RujukanItemTile extends StatelessWidget {
  const RujukanItemTile({
    super.key,
    required this.name,
    required this.address,
    this.phone,
    required this.expired,
    required this.onTap,
  });

  final String name;
  final String address;
  final String? phone;
  final DateTime expired;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final container = Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          const SizedBox(height: 8),
          Text(
            address,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: ThemeColors.greyCaption,
            ),
          ),
          Text(
            'Telp. ${phone ?? '-'}',
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: ThemeColors.greyCaption,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              ActiveInActiveChip(active: expired.isAfter(now)),
              const Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    const WidgetSpan(
                      child: Icon(Icons.calendar_month_outlined, size: 16),
                      alignment: PlaceholderAlignment.middle,
                    ),
                    const TextSpan(text: '  '),
                    TextSpan(text: kDateFullMonthFormat.format(expired)),
                  ],
                ),
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );

    return GestureDetector(onTap: onTap, child: container);
  }
}

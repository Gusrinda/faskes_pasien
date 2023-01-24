import 'package:flutter/material.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';

class PesananObatTile extends StatelessWidget {
  const PesananObatTile({
    Key? key,
    required this.rs,
    required this.timestamp,
    required this.status,
    required this.onTap,
  }) : super(key: key);

  final String rs;
  final DateTime timestamp;
  final String status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final container = Container(
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColors.grey5),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(rs),
                const SizedBox(height: 4),
                Text.rich(
                  TextSpan(
                    children: [
                      const WidgetSpan(
                        child: Icon(
                          Icons.calendar_month_outlined,
                          size: 14,
                        ),
                        alignment: PlaceholderAlignment.middle,
                      ),
                      const TextSpan(text: '  '),
                      TextSpan(
                        text: kDayFullDate2Format.format(timestamp),
                      ),
                    ],
                  ),
                  style: const TextStyle(fontSize: 11),
                ),
                const SizedBox(height: 8),
                GreenChip(status),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: ThemeColors.greyCaption),
        ],
      ),
    );

    return GestureDetector(onTap: onTap, child: container);
  }
}

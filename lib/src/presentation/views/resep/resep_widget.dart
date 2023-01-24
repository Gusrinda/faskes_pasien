import 'package:flutter/material.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/formatter.dart';

class ResepTileCheckBox extends StatelessWidget {
  const ResepTileCheckBox({
    Key? key,
    this.selected = false,
    required this.title,
    required this.qty,
    required this.price,
    required this.description,
  }) : super(key: key);

  final bool? selected;
  final String title;
  final int qty;
  final int price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (selected != null) ...{
            selected!
                ? Icon(
                    Icons.check_circle,
                    color: Theme.of(context).primaryColor,
                  )
                : Icon(
                    Icons.circle_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
            const SizedBox(width: 8),
          },
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(title)),
                    Text(
                      kRupiahFormat.format(qty * price),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Qty ${qty}x @${kRupiahFormat.format(price)}',
                  style: const TextStyle(
                    fontSize: 11,
                    color: ThemeColors.greyCaption,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 11,
                    color: ThemeColors.greyCaption,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

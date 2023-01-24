import 'package:flutter/material.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';

class DokterTileChat extends StatelessWidget {
  const DokterTileChat({
    super.key,
    required this.name,
    required this.poli,
    this.image,
    required this.experienceYear,
    required this.rate,
    required this.onSelect,
  });

  final String name;
  final String poli;
  final String? image;
  final int experienceYear;
  final int rate;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          image != null
              ? Container(
                  height: 106,
                  width: 79,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image!),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                )
              : Assets.images.doctorPhoto.image(height: 106),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  poli,
                  style: const TextStyle(
                    fontSize: 12,
                    color: ThemeColors.greyCaption,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.work_history_outlined, size: 14),
                    const SizedBox(width: 4),
                    Text(
                      '$experienceYear Tahun',
                      style: const TextStyle(fontSize: 11),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FilterChips(kRupiahFormat.format(rate)),
                    const Spacer(),
                    FloatingActionButton(
                      onPressed: onSelect,
                      elevation: 0,
                      mini: true,
                      heroTag: name,
                      foregroundColor: Colors.white,
                      backgroundColor: ThemeColors.red,
                      child: const Icon(Icons.chat_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomeRsGridView extends StatelessWidget {
  const HomeRsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 176,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        children: [
          HomeRsWidget(
            image: Assets.images.rs.rs1.path,
            rs: 'Rumah Sakit A',
            rsType: 'Rumah Sakit',
          ),
          HomeRsWidget(
            image: Assets.images.rs.rs2.path,
            rs: 'Rumah Sakit B',
            rsType: 'Rumah Sakit',
          ),
        ],
      ),
    );
  }
}

class HomeRsWidget extends StatelessWidget {
  const HomeRsWidget({
    super.key,
    required this.image,
    required this.rs,
    required this.rsType,
  });

  final String image;
  final String rs;
  final String rsType;

  @override
  Widget build(BuildContext context) {
    return WhiteCard(
      margin: const EdgeInsets.all(8),
      child: SizedBox(
        width: 194,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(image, height: 105, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Text(
                rs,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                rsType,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

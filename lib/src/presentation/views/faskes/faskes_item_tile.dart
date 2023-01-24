import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/bottom_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../temudokter/jenis_pelayanan_selector.dart';
import '../temudokter/pertemuan_list_selector.dart';

class FaskesItemTile extends StatelessWidget {
  const FaskesItemTile({
    super.key,
    required this.name,
    required this.address,
    this.phone,
    required this.rating,
  });

  final String name;
  final String address;
  final String? phone;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
          ),
          const SizedBox(height: 8),
          Text(
            address,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: ThemeColors.greyCaption,
            ),
          ),
          Text(
            'Telp. ${phone ?? '-'}',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: ThemeColors.greyCaption,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              RatingBar.builder(
                initialRating: rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemSize: 20.sp,
                ignoreGestures: true,
                onRatingUpdate: (rating) {},
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () async {
                  final navigator = Navigator.of(context);
                  final jenisPelayanan = await showCustomBottomSheet(
                    context: context,
                    title: 'Jenis Pelayanan',
                    builder: (context, constraints) {
                      return const JenisPelayananSelector();
                    },
                  );

                  if (jenisPelayanan is JenisPelayanan) {
                    navigator.pushNamed(PertemuanListSelector.routeName);
                  }
                },
                style: ElevatedButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  textStyle: TextStyle(fontSize: 12.sp),
                ),
                child: const Text('Buat Janji'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FaskesObatItemTile extends StatelessWidget {
  const FaskesObatItemTile({
    super.key,
    required this.name,
    required this.address,
    this.phone,
    required this.onPressed,
  });

  final String name;
  final String address;
  final String? phone;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
          Row(
            children: [
              const Spacer(),
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  textStyle: const TextStyle(fontSize: 12),
                ),
                child: const Text('Pesan Obat'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FaskesListItem extends StatelessWidget {
  const FaskesListItem({
    super.key,
    required this.image,
    required this.name,
    required this.type,
    required this.rating,
    required this.distance,
    required this.onTap,
  });

  final String image;
  final String name;
  final String type;
  final double rating;
  final int distance;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final container = Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              image,
              width: 121,
              height: 78,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
                const SizedBox(height: 8),
                Text(
                  type,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ThemeColors.greyCaption,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('$rating'),
                    const SizedBox(width: 4),
                    RatingBar.builder(
                      initialRating: rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemSize: 20,
                      ignoreGestures: true,
                      onRatingUpdate: (rating) {},
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        visualDensity: VisualDensity.compact,
                        textStyle: const TextStyle(fontSize: 10),
                        backgroundColor: ThemeColors.backgroundPage,
                        foregroundColor: ThemeColors.blackPrimary,
                        elevation: 0,
                      ),
                      child: Text('$distance KM'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return GestureDetector(onTap: onTap, child: container);
  }
}

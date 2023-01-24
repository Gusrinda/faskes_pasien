import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import 'news_detail_view.dart';

class HomeNewsGridView extends StatelessWidget {
  const HomeNewsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 176,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        children: [
          HomeNewsWidget(
            image: Assets.images.news.akreditasi2022Small.path,
            title:
                'Akreditasi RSUD Ngudi Waluyo Wlingi Lulus Dengan Predikat Paripurna',
          ),
          HomeNewsWidget(
            image: Assets.images.news.monevsisruj2.path,
            title: 'Monitoring & Evaluasi Sistem Rujukan Rumah Sakit',
          ),
          HomeNewsWidget(
            image: Assets.images.news.stuba2Small.path,
            title:
                'Kunjungan Studi Tiru dari RSUD dr. H.Slamet Martodirdjo Pamekasan',
          ),
        ],
      ),
    );
  }
}

class HomeNewsWidget extends StatelessWidget {
  const HomeNewsWidget({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    final card = WhiteCard(
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
                title,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );

    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, NewsDetailView.routeName);
        },
        child: card);
  }
}

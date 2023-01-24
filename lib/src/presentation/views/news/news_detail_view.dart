import 'package:flutter/material.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/core/config/theme_colors.dart';

class NewsDetailView extends StatefulWidget {
  static const String routeName = '/news/detail';

  const NewsDetailView({Key? key}) : super(key: key);

  @override
  State<NewsDetailView> createState() => _NewsDetailViewState();
}

class _NewsDetailViewState extends State<NewsDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: const _ContentView(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Assets.baru.artikel1.image(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Text(
              'Masyarakat Umum Sudah Bisa Booster Kedua',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
            child: Text(
              '21 Januari 2023',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: ThemeColors.greyCaption,
                fontSize: 12,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
            child: Text(
              '''Tidak perlu tunggu dapat tiket, masyarakat umum sudah bisa mendapatkan vaksinasi COVID-19 Booster kedua. Hal ini dilakukan sebagai upaya percepatan vaksinasi sekaligus meningkatkan proteksi masyarakat Indonesia dari COVID-19.

“Dalam satu sampai dua minggu kedepan, masyarakat usia lebih dari 18 tahun sudah dapat vaksin booster kedua tanpa menunggu tiket/undangan. Untuk pencatatan masih dilakukan manual sambil menunggu pcare dan peduli lindungi disiapkan” Ujar Juru Bicara Kementerian Kesehatan dr. Muhammad Syahril di Jakarta.

Aturan ini tertuang dalam Surat Edaran Nomor HK.02.02/C/380/2023 Tentang Vaksinasi COVID-19 Dosis Booster Ke-2 Bagi kelompok Masyarakat Umum, yang ditetapkan oleh Dirjen Pencegahan dan Pengendalian penyakit Pada 20 Januari 2023.

Vaksinasi COVID-19 dosis booster kedua dapat diberikan kepada semua masyarakat umum (usia 18 tahun ke atas) mulai 24 Januari 2023.

Adapun jenis vaksin yang dapat digunakan adalah vaksin COVID-19 yang telah mendapat Persetujuan Penggunaan Dalam Kondisi Darurat atau Emergency Use Authorization (EUA) dari Badan Pengawas Obat dan Makanan (BPOM) dan memperhatikan vaksin yang ada.''',
              style: TextStyle(color: ThemeColors.greyCaption),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

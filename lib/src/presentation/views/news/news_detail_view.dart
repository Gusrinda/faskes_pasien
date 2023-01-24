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
          Assets.images.news.akreditasi2022Small.image(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Text(
              'Akreditasi RSUD Ngudi Waluyo Wlingi Lulus Dengan Predikat Paripurna',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
            child: Text(
              '07 November 2022',
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
              '''RSUD Ngudi Waluyo Wlingi kembali lulus akreditasi dengan predikat Paripurna . Penilaian dilakukan oleh komite akreditasi rumah sakit (KARS) pada tanggal 26,27 dan 28 Oktober 2022. Penilaian meliputi standar manajemen, standar medis dan standar keperawatan

Akreditasi rumah sakit bertujuan untuk meningkatan mutu pelayanan rumah sakit , meningkatkan  keselamatan pasien sehingga tercapai tata kelola rumah sakit dan tata kelola klinis yang baik, serta sebagai pelaksanaan program pembangunan  kesehatan nasional

Akreditasi tahun 2022 menggunakan standar akreditasi dari Kementerian Kesehatan (Kemenkes) yang digunakan dalam akreditasi sama untuk rumah sakit seluruh Indonesia

Tim akreditasi detail melakukan penilaian. Penunjang pelayanan seperti farmasi juga tak luput dari monitoring. Bahkan, hal-hal kecil misalnya penempatan sarana cuci tangan serta penerapannya juga menjadi catatan.

Tak hanya rumah sakit rujukan, RSUD Ngudi Waluyo Wlingi juga menjadi rumah sakit kelas B pendidikan. Sumber daya manusia (SDM) ini menjadi salah satu tantangan dalam proses akreditasi. rumah sakit harus memastikan semua  bisa menjalankan setiap standar pelayanan. menyatukan visi-misi untuk peningkatan mutu pelayanan. Semua individu harus bisa menjalankan setiap prosedur yang ada di rumah sakit

Karena kekompakan dan komitmen bersama dalam hal pelayanan, RSUD Ngudi Waluyo kembali berhasil lulus akreditasi dengan predikat tertinggi, paripurna bintang 5. Ini merupakan capaian kali ketiga diganjar paripurna bintang 5.

Direktur RSUD Ngudi Waluyo Wlingi , dr.Endah Woro Utami , MMRS menyampaikan ucapan syukur dan terima kasih kepada dewan pengawas, manajemen rumah sakit, tim pendukung fisik dan regulasi, kepala ruang, dan seluruh karyawan yang sudah berjuang bersama-sama dalam meraih predikat lulus Paripurna .''',
              style: TextStyle(color: ThemeColors.greyCaption),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

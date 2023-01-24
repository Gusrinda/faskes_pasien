import 'package:flutter/material.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/widgets/label_value_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';


class MedicalRecordDetailView extends StatefulWidget {
  static const String routeName = '/medical-record/detail';

  const MedicalRecordDetailView({Key? key}) : super(key: key);

  @override
  State<MedicalRecordDetailView> createState() =>
      _MedicalRecordDetailViewState();
}

class _MedicalRecordDetailViewState extends State<MedicalRecordDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderLabel('Alfiani Cantika'),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Tanggal Kunjungan',
              value: 'Jum’at, 18 Maret 2022',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Dokter',
              value: 'dr. Kartika Apshanti, Sp.JP',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Poli',
              value: 'Spesialis Penyakit Dalam',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Keluhan',
              value: 'Nyeri kepala belakang setelah benturan kecelakaan',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Diagnosis Dokter',
              value:
                  'Keluhan cedera atau tramu pada kepala adalah penyebab benjolan di kepala yang paling umum terjadi hal ini terjadi akibat benturan keras di kepala seperti terjatuh, mengalami kecelakaan atau kekerasan fisik. umumnya seseorang terbentur dan mengalami cedera kepala benjolan akan muncul sebagai respon alami tubuh akibat darah merembes dari pembuluh kapiler yang pecah di bawah kulit. hal ini menimbulkan terjadi peradangn sehingga dapat menyebabkan keluhan nyeri umumnya kondisi ini meurpakan cedera kepala ringan benjolan akan kempes dalam beberapa hari anda bisa melakukan kompres hangat pada bagian benjolan kepala selama 15-20 menit anda bisa ulangi setidaknya 2-3 kali sehari lalu bisa konsumsi obat anti nyeri seperti paracetamol.',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Kesimpulan Tindakan',
              value: 'MRI bagian kepala',
            ),
            const SizedBox(height: 16),
            LabelValueVertical(
              label: 'Obat',
              value: 'Aspirin 50mg, Ibuprofen',
              trailing: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Lihat Resep',
                  style: TextStyle(
                    color: ThemeColors.blue,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Download PDF Rekam Medik'),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Detail Rekam Medik'),
    );
  }
}

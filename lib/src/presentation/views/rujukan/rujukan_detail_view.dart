import 'package:flutter/material.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';
import 'package:pasien/src/presentation/widgets/label_value_widget.dart';


class RujukanDetailView extends StatefulWidget {
  static const String routeName = '/rujukan/list/detail';

  const RujukanDetailView({Key? key}) : super(key: key);

  @override
  State<RujukanDetailView> createState() => _RujukanDetailViewState();
}

class _RujukanDetailViewState extends State<RujukanDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LabelValueVertical(
              label: 'Fasilitas Kesehatan',
              value: 'RSUD Srengat',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Dokter',
              value: 'dr. Kartika Apshanti, Sp.JP',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Tanggal',
              value: '9 Maret 2022 - 12 Maret 2022',
            ),
            const SizedBox(height: 16),
            const Text(
              'Status',
              style: TextStyle(
                fontSize: 12,
                color: ThemeColors.greyCaption,
              ),
            ),
            const SizedBox(height: 4),
            Row(children: const [ActiveInActiveChip(active: true)]),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Fasilitas kesehatan yang dirujuk',
              value: 'RSUD Srengat',
            ),
            const SizedBox(height: 16),
            const Text(
              'Jl. Raya Dandong, Dandong, Kec. Srengat, Kabupaten Blitar, Jawa Timur 66152',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ThemeColors.greyCaption,
              ),
            ),
            const Text(
              'Telp. 0333421118',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ThemeColors.greyCaption,
              ),
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Poli',
              value: 'Spesialis Penyakit Dalam',
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: ElevatedButton(
          onPressed: () {

          },
          child: const Text('Download PDF Rujukan'),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Detail Rujukan'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/views/medical_record/medical_record_tile.dart';

import 'medical_record_detail_view.dart';

class MedicalRecordList extends StatefulWidget {
  static const String routeName = '/medical-record';

  const MedicalRecordList({Key? key}) : super(key: key);

  @override
  State<MedicalRecordList> createState() => _MedicalRecordListState();
}

class _MedicalRecordListState extends State<MedicalRecordList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MedicalRecordTile(
              dokter: 'dr. Kartika Apshanti, Sp.JP',
              keluhan: 'Nyeri kepala belakang setelah benturan kecelakaan',
              timestamp: DateTime(2022, 3, 18),
              color: ThemeColors.purple,
              onTap: () => handleDetail(context),
            ),
            MedicalRecordTile(
              dokter: 'dr. Ilham Tarmizi, Sp.PD',
              keluhan: 'Haid tidak lancar selama 3 bulan terakhir',
              timestamp: DateTime(2022, 3, 14),
              color: ThemeColors.blue,
              onTap: () => handleDetail(context),
            ),
            MedicalRecordTile(
              dokter: 'dr. Fajar Halim, Sp.PD',
              keluhan: 'Mata bengkak dan berair',
              timestamp: DateTime(2022, 3, 8),
              color: ThemeColors.red,
              onTap: () => handleDetail(context),
            ),
            MedicalRecordTile(
              dokter: 'dr. Susan Fauziah, Sp.PD',
              keluhan: 'Nyeri di bagian kiri perut',
              timestamp: DateTime(2022, 3, 1),
              color: ThemeColors.orange,
              onTap: () => handleDetail(context),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Rekam Medik'),
    );
  }

  handleDetail(BuildContext context) {
    Navigator.pushNamed(context, MedicalRecordDetailView.routeName);
  }
}

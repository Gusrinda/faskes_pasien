import 'package:flutter/material.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/widgets/label_value_widget.dart';
import 'package:pasien/src/presentation/widgets/separator_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

import '../home/dashboard_view.dart';
import 'resep_widget.dart';

class ResepPaidView extends StatefulWidget {
  static const String routeName = '/resep/paid';

  const ResepPaidView({Key? key}) : super(key: key);

  @override
  State<ResepPaidView> createState() => _ResepPaidViewState();
}

class _ResepPaidViewState extends State<ResepPaidView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Resep'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 35,
                foregroundColor: Colors.white,
                backgroundColor: ThemeColors.green,
                child: Icon(Icons.check, size: 56),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pembayaran Berhasil',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const HeaderLabel('Alfiani Cantika'),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'No Transaksi',
              value: 'No. 780012',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Tanggal Transaksi',
              value: 'Jum’at, 18 Maret 2022 12.30',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Fasilitas Kesehatan',
              value: 'RSUD Srengat',
            ),
            const SizedBox(height: 24),
            const HeaderLabel('Detail Obat'),
            const SizedBox(height: 8),
            const ResepTileCheckBox(
              selected: null,
              title: 'Aspirin 50mg',
              qty: 2,
              price: 25000,
              description: 'Minum sebelum makan',
            ),
            const SizedBox(height: 8),
            const HorizontalDottedSeparator(),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text('Total'),
                const Spacer(),
                Text(
                  kRupiahFormat.format(50000),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: OutlinedButton(
          onPressed: () {
            Navigator.popUntil(
              context,
              (route) => route.settings.name == DashboardView.routeName,
            );
          },
          child: const Text('Kembali ke Menu'),
        ),
      ),
    );
  }
}

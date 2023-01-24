import 'package:flutter/material.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/widgets/label_value_widget.dart';
import 'package:pasien/src/presentation/widgets/separator_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

import '../resep/resep_widget.dart';

class PesananObatDetailView extends StatefulWidget {
  static const String routeName = '/obat/detail';

  const PesananObatDetailView({Key? key}) : super(key: key);

  @override
  State<PesananObatDetailView> createState() => _PesananObatDetailViewState();
}

class _PesananObatDetailViewState extends State<PesananObatDetailView> {
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
            const HeaderLabel('Alfiani Cantika'),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Tanggal Transaksi',
              value: 'Jum’at, 18 Maret 2022 12.30',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Fasilitas Kesehatan',
              value: 'Rumah Sakit A',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Dokter',
              value: 'dr. Kartika Apshanti, Sp.JP',
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
            Navigator.pop(context);
          },
          child: const Text('Kembali'),
        ),
      ),
    );
  }
}

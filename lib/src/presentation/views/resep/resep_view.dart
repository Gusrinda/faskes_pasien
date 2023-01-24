import 'package:flutter/material.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/views/resep/resep_widget.dart';
import 'package:pasien/src/presentation/widgets/label_value_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

import '../payment/payment_view.dart';
import 'resep_paid_view.dart';

class ResepView extends StatefulWidget {
  static const String routeName = '/resep';

  const ResepView({Key? key}) : super(key: key);

  @override
  State<ResepView> createState() => _ResepViewState();
}

class _ResepViewState extends State<ResepView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lihat Resep'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderLabel('Alfiani Cantika'),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Tanggal Transaksi',
              value: 'Jum’at, 18 Maret 2022',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Dokter',
              value: 'dr. Kartika Apshanti, Sp.JP',
            ),
            const SizedBox(height: 16),
            const Text(
              'Fasilitas Kesehatan',
              style: TextStyle(
                fontSize: 12,
                color: ThemeColors.greyCaption,
              ),
            ),
            const SizedBox(height: 2),
            const RsSubtitleLabel('RSUD Srengat', big: true),
            const SizedBox(height: 8),
            const Text(
              'Jl. Raya Dandong, Dandong, Kec. Srengat, Kabupaten Blitar, Jawa Timur 66152',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ThemeColors.greyCaption,
              ),
            ),
            const Text(
              'Telp. (0342) 5651555',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ThemeColors.greyCaption,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Radio(
                  value: true,
                  groupValue: true,
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (value) {},
                ),
                const Text('Ambil Sendiri', style: TextStyle(fontSize: 14)),
                const SizedBox(width: 8),
                Radio(
                  value: false,
                  groupValue: true,
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (value) {},
                ),
                const Text('Kirim', style: TextStyle(fontSize: 14)),
              ],
            ),
            const SizedBox(height: 8),
            const HeaderLabel('Obat'),
            const SizedBox(height: 16),
            const ResepTileCheckBox(
              selected: true,
              title: 'Aspirin 50mg',
              qty: 2,
              price: 25000,
              description: 'Minum sebelum makan',
            ),
            const ResepTileCheckBox(
              title: 'Ibuprofen',
              qty: 2,
              price: 30000,
              description: 'Minum sesudah makan',
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x00E5F9E7), Color(0xFFE5F9E7)],
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Text('Total'),
                  const Spacer(),
                  Text(
                    kRupiahFormat.format(50000),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  PaymentView.routeName,
                  arguments: ResepPaidView.routeName,
                );
              },
              child: const Text('Pesan Obat'),
            ),
          ],
        ),
      ),
    );
  }
}

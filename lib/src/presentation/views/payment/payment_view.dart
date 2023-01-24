import 'package:flutter/material.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/widgets/label_value_widget.dart';
import 'package:pasien/src/presentation/widgets/separator_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';

class PaymentView extends StatefulWidget {
  static const String routeName = '/payment';

  const PaymentView({Key? key, required this.nextRoute}) : super(key: key);

  final String nextRoute;

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: const [
                Expanded(
                  flex: 2,
                  child: LabelValueVertical2(
                    label: 'Transaksi',
                    value: 'No. 780012',
                  ),
                ),
                LabelValueVertical2(
                  label: 'Tanggal',
                  value: 'Jum’at, 18 Maret 2022 12.30',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: HorizontalDottedSeparator(),
            ),
            Row(
              children: const [
                Text('Total', style: TextStyle(fontSize: 14)),
                Spacer(),
                Text(
                  'Rp 50.000',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const FormTextLabel(
              label: 'Pembayaran',
              mandatory: true,
              labelColor: Colors.black,
            ),
            const SizedBox(height: 4),
            TextField(
              controller: TextEditingController(text: 'Bank Jatim'),
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefix: Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: Assets.logo.bank.jatim.image(height: 15, width: 48),
                ),
                suffixIcon: const Icon(Icons.keyboard_arrow_down),
                contentPadding: const EdgeInsets.fromLTRB(12, 16, 12, 12),
              ),
              readOnly: true,
            ),
            const SizedBox(height: 16),
            const FormTextLabel(
              label: 'Pembayaran',
              labelColor: Colors.black,
            ),
            const SizedBox(height: 4),
            TextField(
              controller: TextEditingController(text: '70001082237249725'),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: ThemeColors.grey6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: ThemeColors.grey6),
                ),
                suffixIcon: Icon(Icons.copy),
                contentPadding: EdgeInsets.fromLTRB(12, 16, 12, 12),
                filled: true,
                fillColor: ThemeColors.grey6,
              ),
              readOnly: true,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Batas akhir pembayaran',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 4),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'Jum’at, 18 Maret 2022 10:27 WIB',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '00:58:30',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, widget.nextRoute);
          },
          child: const Text('Bayar'),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Pembayaran'),
    );
  }
}

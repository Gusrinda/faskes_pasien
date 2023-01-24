import 'package:flutter/material.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/widgets/label_value_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

import '../chat/chat_detail_view.dart';

class PaymentDetailView extends StatefulWidget {
  static const String routeName = '/payment/detail';

  const PaymentDetailView({Key? key}) : super(key: key);

  @override
  State<PaymentDetailView> createState() => _PaymentDetailViewState();
}

class _PaymentDetailViewState extends State<PaymentDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Center(
              child: CircleAvatar(
                radius: 35,
                foregroundColor: Colors.white,
                backgroundColor: ThemeColors.green,
                child: Icon(Icons.check, size: 56),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Pembayaran Berhasil',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            HeaderLabel('Alfiani Cantika'),
            SizedBox(height: 32),
            LabelValueVertical(
              label: 'No Transaksi',
              value: 'No. 780012',
            ),
            SizedBox(height: 16),
            LabelValueVertical(
              label: 'Tanggal Transaksi',
              value: 'Jum’at, 18 Maret 2022 12.30',
            ),
            SizedBox(height: 16),
            LabelValueVertical(
              label: 'Fasilitas Kesehatan',
              value: 'Rumah Sakit A',
            ),
            SizedBox(height: 16),
            Text(
              'Jl. Bunga Sepatu, Indonesia',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ThemeColors.greyCaption,
              ),
            ),
            Text(
              'Telp. (031) 71719283',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ThemeColors.greyCaption,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, ChatDetailView.routeName);
          },
          child: const Text('Chat Dokter'),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Detail Pembayaran'),
    );
  }
}

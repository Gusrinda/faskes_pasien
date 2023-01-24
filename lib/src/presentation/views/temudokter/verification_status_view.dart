import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/widgets/card_widget.dart';
import 'package:pasien/src/presentation/widgets/label_value_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

import '../home/dashboard_view.dart';
import 'revisi_rujukan_view.dart';

enum VerificationStatus {
  waiting('Menunggu Verifikasi', ThemeColors.yellow, Icons.hourglass_bottom),
  rejected('Pertemuan DItolak', ThemeColors.red, Icons.close);

  const VerificationStatus(this.label, this.background, this.icon);

  final String label;
  final Color background;
  final IconData icon;
}

class VerificationStatusView extends StatefulWidget {
  static const String routeName =
      '/janji-temu-dokter/pertemuan/dokter/konfirmasi/status';

  const VerificationStatusView({
    Key? key,
    this.status = VerificationStatus.waiting,
  }) : super(key: key);

  final VerificationStatus status;

  @override
  State<VerificationStatusView> createState() => _VerificationStatusViewState();
}

class _VerificationStatusViewState extends State<VerificationStatusView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Status Antrian'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              foregroundColor: Colors.white,
              backgroundColor: widget.status.background,
              radius: 40.sp,
              child: Icon(widget.status.icon, size: 32.sp),
            ),
            const SizedBox(height: 8),
            Text(
              widget.status.label,
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'Alfiani Cantika',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'No. RM 689689',
              style: TextStyle(fontSize: 12.sp, color: ThemeColors.greyCaption),
            ),
            const SizedBox(height: 8),
            Text(
              () {
                switch (widget.status) {
                  case VerificationStatus.waiting:
                    return 'Permintaan pertemuan telah disubmit, berkas akan dilakukan verifikasi terlebih dahulu oleh pihak rumah sakit.';
                  case VerificationStatus.rejected:
                    return 'Permintaan pertemuan Anda ditolak dikarenakan berkas rujukan yang dilampirkan tidak sesuai. Silahkan upload ulang berkas rujukan Anda. Pastikan data yang Anda input benar.';
                }
              }(),
              style: TextStyle(fontSize: 10.sp),
            ),
            const SizedBox(height: 16),
            const HeaderLabel('Detail Pertemuan'),
            const SizedBox(height: 8),
            OutlineCard(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: ThemeColors.backgroundField),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: ThemeColors.backgroundField,
                          foregroundColor: Theme.of(context).primaryColor,
                          child: const Icon(Icons.calendar_month),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kamis, 31 Maret 2022 08.00 WIB',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              Text(
                                'Rumah Sakit A',
                                style: TextStyle(fontSize: 10.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const LabelValueVertical(
                    label: 'Poli',
                    value: 'Spesialis Jantung dan Pembuluh Darah',
                  ),
                  const SizedBox(height: 8),
                  const LabelValueVertical(
                    label: 'Dokter',
                    value: 'dr. Kartika Apshanti, Sp.JP',
                  ),
                  const SizedBox(height: 8),
                  const LabelValueVertical(
                    label: 'Jenis Pelayanan',
                    value: 'Umum',
                  ),
                  const SizedBox(height: 8),
                  const LabelValueVertical(
                    label: 'Surat Rujukan',
                    value: 'Filename_9283804.pdf',
                    valueColor: ThemeColors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: () {
          switch (widget.status) {
            case VerificationStatus.waiting:
              return OutlinedButton(
                onPressed: () {
                  Navigator.popUntil(
                    context,
                    (route) => route.settings.name == DashboardView.routeName,
                  );
                },
                child: const Text('Kembali Ke Menu'),
              );
            case VerificationStatus.rejected:
              return ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    RevisiRujukanView.routeName,
                    (route) => route.settings.name == DashboardView.routeName,
                  );
                },
                child: const Text('Ubah'),
              );
          }
        }(),
      ),
    );
  }
}

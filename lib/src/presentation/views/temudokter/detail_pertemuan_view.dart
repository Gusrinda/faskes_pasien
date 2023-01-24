import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/widgets/label_value_widget.dart';
import 'package:pasien/src/presentation/widgets/separator_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../home/dashboard_view.dart';

class DetailPertemuanView extends StatefulWidget {
  static const String routeName = '/janji-temu-dokter/poli/pertemuan/detail';
  const DetailPertemuanView({Key? key}) : super(key: key);

  @override
  State<DetailPertemuanView> createState() => _DetailPertemuanViewState();
}

class _DetailPertemuanViewState extends State<DetailPertemuanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: ThemeColors.linearGradientColors,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: const EdgeInsets.all(28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'No Antrian',
                                style: TextStyle(fontSize: 13.sp),
                              ),
                              Text(
                                '016',
                                style: TextStyle(
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Text(
                                '31 MARET 2022',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Text(
                                'Jum’at, 08.00',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        QrImage(
                          data: "016",
                          version: QrVersions.auto,
                          size: 96.sp,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: HorizontalDottedSeparator(),
                    ),
                    Text(
                      'Alfiani Cantika',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '689689',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    const SizedBox(height: 16),
                    const LabelValueVertical(
                      label: 'Jenis Pelayanan',
                      value: 'Umum',
                    ),
                    const SizedBox(height: 16),
                    const LabelValueVertical(
                      label: 'Fasilitas Kesehatan',
                      value: 'Rumah Sakit A',
                    ),
                    const SizedBox(height: 16),
                    const LabelValueVertical(
                      label: 'Poli',
                      value: 'Spesialis Penyakit Dalam',
                    ),
                    const SizedBox(height: 16),
                    const LabelValueVertical(
                      label: 'Dokter',
                      value: 'dr. Kartika Apshanti, Sp.JP',
                    ),
                    const SizedBox(height: 16),
                    const LabelValueVertical(
                      label: 'Surat Rujukan',
                      value: 'Surat Rujukan.jpg',
                      valueColor: ThemeColors.blue,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Catatan',
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
              ),
              Text(
                'Harap datang 10 menit lebih awal dari jam yang dipilih. Apabila Anda terlambat dan melebihi no urut, maka akan dilanjut ke no urut selanjutnya.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                         Navigator.popUntil(
                    context,
                    (route) => route.settings.name == DashboardView.routeName,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColor,
                ),
                child: const Text('Kembali Ke Menu'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Detail Pertemuan'),
    );
  }
}

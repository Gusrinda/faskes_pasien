import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/bottom_sheets.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/views/temudokter/dokter_tile.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

import 'konfirmasi_antrian_view.dart';

class DokterListSelector extends StatefulWidget {
  static const String routeName = '/janji-temu-dokter/pertemuan/dokter';

  const DokterListSelector({Key? key}) : super(key: key);

  @override
  State<DokterListSelector> createState() => _DokterListSelectorState();
}

class _DokterListSelectorState extends State<DokterListSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _ContentView(),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: ElevatedButton(
          onPressed: () => handleSelectDokter(context),
          child: const Text('Lanjut'),
        ),
      ),
    );
  }

  handleSelectDokter(BuildContext context) async {
    final next = await showCustomBottomSheet(
      context: context,
      title: 'Upload Surat Rujukan',
      builder: (context, constraints) {
        return SafeArea(
          minimum: const EdgeInsets.fromLTRB(20, 8, 20, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DottedBorder(
                color: ThemeColors.grey8,
                radius: const Radius.circular(5),
                dashPattern: const <double>[5, 5],
                padding: const EdgeInsets.symmetric(vertical: 28),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.document_scanner_outlined),
                      const SizedBox(height: 16),
                      Text(
                        'Upload Surat Rujukan',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Format PDF, JPG',
                        style: TextStyle(
                          color: ThemeColors.greyCaption,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Lanjut'),
              ),
            ],
          ),
        );
      },
    );

    if (next == true) {
      await showCustomBottomSheet(
        context: context,
        title: 'Upload Surat Rujukan',
        builder: (context, constraints) {
          return SafeArea(
            minimum: const EdgeInsets.fromLTRB(20, 8, 20, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.file_present_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Surat-Rujukan.jpg',
                                style: TextStyle(
                                  color: ThemeColors.greyCaption,
                                  fontSize: 13,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.close, size: 18),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            child: LinearProgressIndicator(
                              value: 0.5,
                              minHeight: 8,
                              backgroundColor: ThemeColors.grey5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(
                      context,
                      KonfirmasiAntrianView.routeName,
                    );
                  },
                  child: const Text('Lanjut'),
                ),
              ],
            ),
          );
        },
      );
    }
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Pilih Dokter'),
    );
  }
}

class _ContentView extends StatelessWidget {
  _ContentView({Key? key}) : super(key: key);

  final workingHour = ['08:00', '11:00', '13:00', '17:00'];
  final rxSelectedWorkingHour = ValueNotifier('08:00');

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                'Tanggal Terpilih',
                style:
                    TextStyle(fontSize: 14.sp, color: ThemeColors.greyCaption),
              ),
              const Spacer(),
              Text(
                kDayFullDate2Format.format(today),
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const HeaderLabel('Daftar Dokter'),
          const SubHeaderLabel('Dokter yang bertugas pada tanggal tersebut'),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: workingHour.map((hour) {
              return ValueListenableBuilder(
                valueListenable: rxSelectedWorkingHour,
                builder: (context, value, child) {
                  return FilterChips(
                    hour,
                    selected: value == hour,
                    selectedColor: Theme.of(context).primaryColor,
                    selectedTextColor: Colors.white,
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 8),
          DokterTile(
            name: 'dr. Kartika Apshanti, Sp.JP',
            poli: 'Spesialis Jantung dan Pembuluh Darah',
            image: Assets.images.drKartikaApshantiSpJP1.path,
            selected: true,
          ),
          const Divider(color: Colors.grey),
          DokterTile(
            name: 'dr. Agus Andreas Santoso, Sp.P',
            poli: 'Spesialis Paru',
            image: Assets.images.drAgusAndreasSantosoSpP.path,
          ),
        ],
      ),
    );
  }
}

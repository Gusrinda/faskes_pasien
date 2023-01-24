import 'package:flutter/material.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/bottom_sheets.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/widgets/label_value_widget.dart';

import '../payment/payment_detail_view.dart';
import '../payment/payment_view.dart';
import '../temudokter/jenis_pelayanan_selector.dart';

class DokterDetailView extends StatefulWidget {
  static const String routeName = '/konsultasi-online/detail';

  const DokterDetailView({Key? key}) : super(key: key);

  @override
  State<DokterDetailView> createState() => _DokterDetailViewState();
}

class _DokterDetailViewState extends State<DokterDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Dokter'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                height: 106,
                width: 106,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.images.drKartikaApshantiSpJP1.path,
                    ),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'dr. Kartika Apshanti, Sp.JP',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'SIP',
              value: '503/06.1.10/DS.A/SIP-KES/DPM-PTSP/VII/20199',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Keahlian',
              value: 'Spesialis Jantung dan Pembuluh Darah',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Alumni',
              value: 'Universitas Airlangga',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Pengalaman',
              value: '18 Tahun',
            ),
            const SizedBox(height: 16),
            const LabelValueVertical(
              label: 'Deskripsi',
              value:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget lectus neque. Morbi ut dolor lorem. Vivamus congue velit eget nunc efficitur, nec malesuada elit condimentum. Mauris orci lacus, malesuada sed purus ac, finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget lectus neque. Morbi ut dolor lorem. Vivamus congue velit eget nunc efficitur, nec malesuada elit condimentum. Mauris orci lacus, malesuada sed purus ac, finibus',
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(color: Colors.grey),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Tarif',
                        style: TextStyle(
                          fontSize: 12,
                          color: ThemeColors.greyCaption,
                        ),
                      ),
                      Text(
                        kRupiahFormat.format(90000),
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                FloatingActionButton(
                  onPressed: () async {
                    final jenisPelayanan = await showCustomBottomSheet(
                      context: context,
                      title: 'Jenis Pelayanan',
                      builder: (context, constraints) {
                        return const JenisPelayananSelector();
                      },
                    );

                    if (jenisPelayanan is JenisPelayanan && mounted) {
                      handleUploadRujukan(context);
                    }
                  },
                  elevation: 0,
                  mini: true,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  foregroundColor: Colors.white,
                  backgroundColor: ThemeColors.red,
                  child: const Icon(Icons.chat_outlined),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  handleUploadRujukan(BuildContext context) {
    showCustomBottomSheet(
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
                    PaymentView.routeName,
                    arguments: PaymentDetailView.routeName,
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

import 'package:flutter/material.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';

import 'dokter_detail_view.dart';
import 'dokter_tile.dart';

class PilihDokterSelector extends StatefulWidget {
  static const String routeName = '/konsultasi-online';

  const PilihDokterSelector({Key? key}) : super(key: key);

  @override
  State<PilihDokterSelector> createState() => _PilihDokterSelectorState();
}

class _PilihDokterSelectorState extends State<PilihDokterSelector> {
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
            const SearchFieldBar(hintText: 'Cari Dokter'),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Text(
                  'Urut Berdasarkan',
                  style: TextStyle(fontSize: 10),
                ),
                FilterChips('A - Z'),
              ],
            ),
            const SizedBox(height: 8),
            DokterTileChat(
              name: 'dr. Kartika Apshanti, Sp.JP',
              poli: 'Spesialis Jantung dan Pembuluh Darah',
              image: Assets.images.drKartikaApshantiSpJP1.path,
              experienceYear: 18,
              rate: 90000,
              onSelect: () => handleSelectDokter(context),
            ),
            const Divider(color: Colors.grey),
            DokterTileChat(
              name: 'dr. Agus Andreas Santoso, Sp.P',
              poli: 'Spesialis Paru',
              image: Assets.images.drAgusAndreasSantosoSpP.path,
              experienceYear: 10,
              rate: 85000,
              onSelect: () => handleSelectDokter(context),
            ),
            const Divider(color: Colors.grey),
            DokterTileChat(
              name: 'dr. RR. Friska Fitri Ramadayanti, Sp.PD',
              poli: 'Spesialis Penyakit Dalam',
              image: Assets.images.drRRFriskaFitriRamadayantiSpPD.path,
              experienceYear: 12,
              rate: 95000,
              onSelect: () => handleSelectDokter(context),
            ),
            const Divider(color: Colors.grey),
            DokterTileChat(
              name: 'dr. Fadhila Nurisa, Sp.PD',
              poli: 'Spesialis Penyakit Dalam',
              image: Assets.images.drFadhilaNurisaSpPD1.path,
              experienceYear: 9,
              rate: 85000,
              onSelect: () => handleSelectDokter(context),
            ),
          ],
        ),
      ),
    );
  }

  handleSelectDokter(BuildContext context) {
    Navigator.pushNamed(context, DokterDetailView.routeName);
  }
}

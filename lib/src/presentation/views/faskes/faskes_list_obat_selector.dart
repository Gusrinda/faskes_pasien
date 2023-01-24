import 'package:pasien/src/presentation/widgets/chip_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

import '../obat/pesan_obat_view.dart';
import 'faskes_item_tile.dart';

class FaskesListObatSelector extends StatefulWidget {
  static const String routeName = '/pesan-obat/faskes';

  const FaskesListObatSelector({Key? key}) : super(key: key);

  @override
  State<FaskesListObatSelector> createState() => _FaskesListObatSelectorState();
}

class _FaskesListObatSelectorState extends State<FaskesListObatSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const _ContentView(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Pilih Fasilitas Kesehatan'),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SearchFieldBar(hintText: 'Cari Fasilitas Kesehatan'),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              spacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Text(
                  'Urut Berdasarkan',
                  style: TextStyle(fontSize: 10),
                ),
                FilterChips('Terdekat'),
                FilterChips('Terpopuler', selected: true),
              ],
            ),
          ),
          const SizedBox(height: 16),
          FaskesObatItemTile(
            name: 'RSUD Srengat',
            address:
                'Jl. Raya Dandong, Dandong, Kec. Srengat, Kabupaten Blitar, Jawa Timur 66152',
            phone: '(0342) 5651555',
            onPressed: () => handlePesanObat(context),
          ),
          const Divider(indent: 20, endIndent: 20, color: Colors.grey),
          FaskesObatItemTile(
            name: 'RSUD Ngudi Waluyo Wlingi',
            address:
                'Jl. Dokter Sucipto No.5, Beru, Kec. Wlingi, Kabupaten Blitar, Jawa Timur 66184',
            phone: '(0342) 691006',
            onPressed: () => handlePesanObat(context),
          ),
        ],
      ),
    );
  }

  handlePesanObat(BuildContext context) {
    Navigator.pushNamed(context, PesanObatView.routeName);
  }
}

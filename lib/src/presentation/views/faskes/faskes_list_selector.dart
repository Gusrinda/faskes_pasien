import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

import 'faskes_item_tile.dart';

class FaskesListSelector extends StatefulWidget {
  static const String routeName = '/janji-temu-dokter';

  const FaskesListSelector({Key? key}) : super(key: key);

  @override
  State<FaskesListSelector> createState() => _FaskesListSelectorState();
}

class _FaskesListSelectorState extends State<FaskesListSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Fasilitas Kesehatan'),
      ),
      body: const _ContentView(),
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
              children: [
                Text(
                  'Urut Berdasarkan',
                  style: TextStyle(fontSize: 10.sp),
                ),
                const FilterChips('Terdekat'),
                const FilterChips('Terpopuler', selected: true),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const FaskesItemTile(
            name: 'RSUD Srengat',
            address: 'Jl. Raya Dandong, Dandong, Kec. Srengat, Kabupaten Blitar'
                ' Jawa Timur 66152',
            phone: '(0342) 5651555',
            rating: 5,
          ),
          const Divider(indent: 20, endIndent: 20, color: Colors.grey),
          const FaskesItemTile(
            name: 'RSUD Ngudi Waluyo Wlingi',
            address:
                'Jl. Dokter Sucipto No.5, Beru, Kec. Wlingi, Kabupaten Blitar, Jawa Timur 66184',
            phone: '(0342) 691006',
            rating: 5,
          ),
        ],
      ),
    );
  }
}

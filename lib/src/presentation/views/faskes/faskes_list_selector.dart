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
            name: 'Rumah Sakit A',
            address: 'Jl. Bunga Sepatu, Indonesia',
            phone: '(031) 71712463',
            rating: 5,
          ),
          const Divider(indent: 20, endIndent: 20, color: Colors.grey),
          const FaskesItemTile(
            name: 'Rumah Sakit B',
            address:
                'Jl. Mawar Melati, Indonesia',
            phone: '(031) 71712573',
            rating: 5,
          ),
        ],
      ),
    );
  }
}

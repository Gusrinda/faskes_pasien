import 'package:pasien/src/presentation/widgets/chip_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

import 'rujukan_detail_view.dart';
import 'rujukan_item_tile.dart';

class RujukanListView extends StatefulWidget {
  static const String routeName = '/rujukan/list';

  const RujukanListView({Key? key}) : super(key: key);

  @override
  State<RujukanListView> createState() => _RujukanListViewState();
}

class _RujukanListViewState extends State<RujukanListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rujukan'),
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
            child: SearchFieldBar(hintText: 'Rujukan'),
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
                FilterChips('A - Z'),
                FilterChips('Tanggal', selected: true),
              ],
            ),
          ),
          const SizedBox(height: 16),
          RujukanItemTile(
            name: 'RSUD Srengat',
            address:
                'Jl. Raya Dandong, Dandong, Kec. Srengat, Kabupaten Blitar, Jawa Timur 66152',
            phone: '(0342) 5651555',
            expired: DateTime.now().add(const Duration(days: 2)),
            onTap: () => handleTap(context),
          ),
          const Divider(indent: 20, endIndent: 20, color: Colors.grey),
          RujukanItemTile(
            name: 'RSUD Srengat',
            address:
                'Jl. Raya Dandong, Dandong, Kec. Srengat, Kabupaten Blitar, Jawa Timur 66152',
            phone: '(0342) 5651555',
            expired: DateTime(2022, 3, 9),
            onTap: () => handleTap(context),
          ),
          const Divider(indent: 20, endIndent: 20, color: Colors.grey),
          RujukanItemTile(
            name: 'RSUD Ngudi Waluyo Wlingi',
            address:
                'Jl. Dokter Sucipto No.5, Beru, Kec. Wlingi, Kabupaten Blitar, Jawa Timur 66184',
            phone: '(0342) 691006',
            expired: DateTime(2022, 3, 7),
            onTap: () => handleTap(context),
          ),
        ],
      ),
    );
  }

  void handleTap(BuildContext context) {
    Navigator.pushNamed(context, RujukanDetailView.routeName);
  }
}

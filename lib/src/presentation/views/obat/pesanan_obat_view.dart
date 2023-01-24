import 'package:flutter/material.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/views/obat/pesanan_obat_tile.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

import '../faskes/faskes_list_obat_selector.dart';
import 'pesanan_obat_detail_view.dart';

class PesananObatView extends StatefulWidget {
  static const String routeName = '/obat';

  const PesananObatView({Key? key}) : super(key: key);

  @override
  State<PesananObatView> createState() => _PesananObatViewState();
}

class _PesananObatViewState extends State<PesananObatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const _ContentView(),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, FaskesListObatSelector.routeName);
          },
          child: const Text('Pesanan Obat Baru'),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Pesanan Obat'),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SearchFieldBar(hintText: 'Cari Pesanan'),
          const SizedBox(height: 16),
          const HeaderLabel('Sedang Dipesan'),
          Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Rumah Sakit A',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 8),
                          const ColorChip('Belum diambil',
                              color: Colors.white38),
                          const SizedBox(height: 8),
                          Text.rich(
                            TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.calendar_month_outlined,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  alignment: PlaceholderAlignment.middle,
                                ),
                                const TextSpan(text: '  '),
                                TextSpan(
                                  text: kDateFullMonthFormat
                                      .format(DateTime.now()),
                                ),
                              ],
                            ),
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 16,
                      right: 0,
                      child: Assets.images.vectorCard.image(),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox.shrink()),
            ],
          ),
          const HeaderLabel('Riwayat Pesanan'),
          PesananObatTile(
            rs: 'Rumah Sakit A',
            timestamp: DateTime(2022, 3, 9),
            status: 'Sudah Diambil',
            onTap: () => handleDetail(context),
          ),
          PesananObatTile(
            rs: 'Rumah Sakit B',
            timestamp: DateTime(2022, 3, 4),
            status: 'Sudah Diambil',
            onTap: () => handleDetail(context),
          ),
        ],
      ),
    );
  }

  void handleDetail(BuildContext context) {
    Navigator.pushNamed(context, PesananObatDetailView.routeName);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/views/history/history_card.dart';
import 'package:pasien/src/presentation/views/history/history_date_circled.dart';
import 'package:pasien/src/presentation/views/history/history_tile.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 128.sp,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8.sp),
              children: const [
                HistoryCard(
                  number: '1311/2022 08.00',
                  title: 'Pembelian Obat',
                  type: HistoryType.pembelianObat,
                ),
                HistoryCard(
                  number: '1311/2022 08.00',
                  title: 'Konsultasi Online',
                  type: HistoryType.konsultasiOnline,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.sp, 24.sp, 16.sp, 8.sp),
            child: const HeaderLabel('Riwayat Transaksi'),
          ),
          SizedBox(
            height: 48.sp,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              children: [
                FilterChip(
                  label: const Text('November'),
                  backgroundColor: ThemeColors.grey6,
                  onSelected: (bool value) {},
                ),
                SizedBox(width: 8.sp),
                for (int i = 10; i >= 3; i--)
                  HistoryDateCircled(day: i, selected: i == 10),
              ],
            ),
          ),
          SizedBox(width: 8.sp),
          const HistoryTile(
            hour: '10:30',
            title: 'Pembelian Obat',
            subtitle: 'Aspirin',
            price: 50000,
            type: HistoryType.pembelianObat,
          ),
          const HistoryTile(
            hour: '09:30',
            title: 'Konsultasi Online',
            subtitle: 'dr. Halim Perdana',
            price: 150000,
            type: HistoryType.konsultasiOnline,
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

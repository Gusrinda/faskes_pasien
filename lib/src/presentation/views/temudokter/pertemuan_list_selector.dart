import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/widgets/card_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

import 'dokter_list_selector.dart';

enum Poli {
  kulitDanKelamin(
    ThemeColors.orange,
    'assets/icons/poli/spesialis-kulit-dan-kelamin.webp',
    'Spesialis Kulit dan Kelamin',
  ),
  tht(
    ThemeColors.pink,
    'assets/icons/poli/spesialis-tht.webp',
    'Spesialis THT',
  ),
  bedahSyaraf(
    ThemeColors.purple,
    'assets/icons/poli/bedah-syaraf.webp',
    'Bedah Saraf',
  ),
  penyakitDalam(
    ThemeColors.yellow,
    'assets/icons/poli/spesialis-penyakit-dalam.webp',
    'Spesialis Penyakit Dalam',
  );

  const Poli(this.color, this.image, this.name);

  final Color color;
  final String image;
  final String name;
}

class PertemuanListSelector extends StatefulWidget {
  static const String routeName = '/janji-temu-dokter/pertemuan';

  const PertemuanListSelector({Key? key}) : super(key: key);

  @override
  State<PertemuanListSelector> createState() => _PertemuanListSelectorState();
}

class _PertemuanListSelectorState extends State<PertemuanListSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Pertemuan'),
      ),
      body: _ContentView(),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, DokterListSelector.routeName);
          },
          child: const Text('Lanjut'),
        ),
      ),
    );
  }
}

class _ContentView extends StatelessWidget {
  _ContentView({Key? key}) : super(key: key);

  final rxPoli = ValueNotifier(Poli.penyakitDalam);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: WhiteCard(
              child: SizedBox(
                width: 240,
                height: 210,
                child: CalendarDatePicker(
                  initialDate: today,
                  firstDate: today,
                  lastDate: DateTime(2037),
                  onDateChanged: (DateTime value) async {},
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Tanggal Terpilih',
                  style: TextStyle(
                      fontSize: 14.sp, color: ThemeColors.greyCaption),
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
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 8),
            child: HeaderLabel('Daftar Poli'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SearchFieldBar(hintText: 'Cari Poli'),
          ),
          const SizedBox(height: 16),
          ...Poli.values.map((poli) {
            return ValueListenableBuilder<Poli>(
              valueListenable: rxPoli,
              builder: (context, value, child) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                  leading: CircleAvatar(
                    backgroundColor: poli.color,
                    foregroundColor: Colors.white,
                    child: Image.asset(poli.image, height: 20),
                  ),
                  title: Text(poli.name, style: const TextStyle(fontSize: 14)),
                  selected: poli == value,
                  trailing: poli == value
                      ? Icon(
                          Icons.check_circle,
                          color: Theme.of(context).primaryColor,
                        )
                      : null,
                  onTap: () {
                    rxPoli.value = poli;
                  },
                );
              },
            );
          }),
        ],
      ),
    );
  }
}

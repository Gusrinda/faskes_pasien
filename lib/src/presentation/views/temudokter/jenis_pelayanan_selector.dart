import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

enum JenisPelayanan {
  bpjs('assets/icons/layanan/bpjs-kesehatan.webp', 'BPJS Kesehatan'),
  umum('assets/icons/layanan/pasien-umum.webp', 'Umum'),
  kis(
    'assets/icons/layanan/kartu-indonesia-sehat.webp',
    'Kartu Indonesia Sehat',
  ),
  sktm('assets/icons/layanan/pasien-tidak-mampu.webp', 'Pasien Tidak Mampu');

  const JenisPelayanan(this.image, this.label);

  final String image;
  final String label;
}

class JenisPelayananSelector extends StatefulWidget {
  const JenisPelayananSelector({Key? key}) : super(key: key);

  @override
  State<JenisPelayananSelector> createState() => _JenisPelayananSelectorState();
}

class _JenisPelayananSelectorState extends State<JenisPelayananSelector> {
  JenisPelayanan jenisPelayanan = JenisPelayanan.bpjs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...JenisPelayanan.values.map((pelayanan) {
            final selected = jenisPelayanan == pelayanan;

            late Widget card;
            if (selected) {
              card = WhiteCard(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: Image.asset(pelayanan.image, height: 44.sp),
                  title: Text(
                    pelayanan.label,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  trailing: const Icon(
                    Icons.check_circle_rounded,
                    color: ThemeColors.green,
                  ),
                ),
              );
            } else {
              card = OutlineCard(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.symmetric(vertical: 4),
                borderColor: ThemeColors.grey5,
                child: ListTile(
                  leading: Image.asset(pelayanan.image, height: 44.sp),
                  title: Text(
                    pelayanan.label,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              );
            }

            return GestureDetector(
              onTap: () {
                setState(() {
                  jenisPelayanan = pelayanan;
                });
              },
              child: card,
            );
          }),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, jenisPelayanan);
            },
            child: const Text('Lanjut'),
          ),
        ],
      ),
    );
  }
}

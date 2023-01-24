import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:flutter/material.dart';

import '../medical_record/medical_record_list.dart';
import '../obat/pesanan_obat_view.dart';
import '../rujukan/rujukan_list_view.dart';
import '../faskes/faskes_list_selector.dart';
import '../schedule/pilih_dokter_selector.dart';

class HomeMenuGridView extends StatelessWidget {
  const HomeMenuGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final kListMenu = [
      HomeMenu(
        image: Assets.icons.home.janjiTemuDokter.path,
        label: 'Janji Temu Dokter',
        onTap: () {
          Navigator.pushNamed(context, FaskesListSelector.routeName);
        },
      ),
      HomeMenu(
        image: Assets.icons.home.rujukan.path,
        label: 'Rujukan',
        onTap: () {
          Navigator.pushNamed(context, RujukanListView.routeName);
        },
      ),
      HomeMenu(
        image: Assets.icons.home.pesanObat.path,
        label: 'Pesan Obat',
        onTap: () {
          Navigator.pushNamed(context, PesananObatView.routeName);
        },
      ),
      HomeMenu(
        image: Assets.icons.home.rekamMedik.path,
        label: 'Rekam Medik',
        onTap: () {
          Navigator.pushNamed(context, MedicalRecordList.routeName);
        },
      ),
      HomeMenu(
        image: Assets.icons.home.konsultasiOnline.path,
        label: 'Konsultasi Online',
        onTap: () {
          Navigator.pushNamed(context, PilihDokterSelector.routeName);
        },
      ),
    ];

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth;
        const paddingWidth = 20 * 2;
        const cellSpace = 8 * 4;
        final cellSize = (maxWidth - paddingWidth - cellSpace) / 5;

        final grid = GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 8,
            mainAxisExtent: cellSize + 48.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return kListMenu[index];
          },
          itemCount: kListMenu.length,
        );

        return MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          child: grid,
        );
      },
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({
    super.key,
    required this.label,
    required this.image,
    required this.onTap,
  });

  final String label;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            onTap: onTap,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    blurRadius: 10,
                    color: Color(0x4066D066),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(image, width: 40, height: 40),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 9.sp),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

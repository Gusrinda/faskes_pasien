import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/presentation/widgets/card_widget.dart';
import 'package:pasien/src/presentation/widgets/chip_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class OnlineAppointmentsCard extends StatelessWidget {
  const OnlineAppointmentsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GreenCard(
          padding: const EdgeInsets.fromLTRB(16, 16, 24, 0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pendaftaran Online',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        height: 21 / 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Atur jadwal konsultasi dan pendaftaran mu melalui aplikasi ini, semoga lekas sembuh.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '- Hj. Rini Syarifah, A.Md',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 32.sp),
              Assets.images.bupati.image(height: 144.sp),
            ],
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Assets.images.vectorCard.image(),
        ),
      ],
    );
  }
}

class TodayScheduleCard extends StatelessWidget {
  const TodayScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteCard(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TitleLabel('dr. Kartika Apshanti, Sp.JP'),
                SizedBox(height: 8),
                RsSubtitleLabel('RSUD Srengat'),
                SizedBox(height: 8),
                GreenChip('Pukul 08:00'),
              ],
            ),
          ),
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  Assets.images.drKartikaApshantiSpJP1.path,
                ),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveTransactionCard extends StatelessWidget {
  const ActiveTransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteCard(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 29.sp,
            child: Assets.icons.home.pesanObat.image(
              color: Colors.white,
              colorBlendMode: BlendMode.srcIn,
              height: 35.sp,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TitleLabel('Alfiani, ada tagihan obat!'),
                SizedBox(height: 8),
                RsSubtitleLabel('RSUD Srengat'),
                SizedBox(height: 8),
                ColorChip('Rp. 50.000'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

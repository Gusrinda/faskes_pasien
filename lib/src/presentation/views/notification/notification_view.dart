import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

import 'notification_chat.dart';
import 'notification_item_view.dart';

class NotificationView extends StatelessWidget {
  static const String routeName = '/notification';

  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifikasi'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderLabel(
              'Hari ini',
              trailing: 'Tandai sudah dibaca',
              onTapTrailing: () {},
            ),
            SizedBox(height: 7.sp),
            NotificationItemView(
              message:
                  'Permintaan janji temu dokter telah terkirim. Silahkan tunggu verifikasi dari pihak rumah sakit.',
              timestamp: DateTime(2022, 10, 10, 14),
              read: false,
            ),
            NotificationItemView(
              message:
                  'Segera bayar tagihan obatmu, sekarang! Kesehatanmu sangat berharga.',
              timestamp: DateTime(2022, 10, 10, 14),
              read: false,
            ),
            NotificationItemView(
              message:
                  'Permintaan janji temu dokter telah terkirim. Silahkan tunggu verifikasi dari pihak rumah sakit.',
              timestamp: DateTime(2022, 10, 10, 14),
            ),
            NotificationItemView(
              message:
                  'Segera bayar tagihan obatmu, sekarang! Kesehatanmu sangat berharga.',
              timestamp: DateTime(2022, 10, 10, 14),
            ),
            SizedBox(height: 14.sp),
            const HeaderLabel('9 Oktober 2022'),
            SizedBox(height: 7.sp),
            NotificationItemView(
              message:
                  'Semoga lekas sembuh! Kesehatan Anda berharga bagi kami.',
              timestamp: DateTime(2022, 10, 10, 14),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationChat(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

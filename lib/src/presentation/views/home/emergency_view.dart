import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/dialogs.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyView extends StatelessWidget {
  static const String routeName = '/emergency';

  const EmergencyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak Darurat'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Assets.icons.redCall.image(height: 140.sp),
            ),
            SizedBox(height: 24.sp),
            Text(
              'Kontak Darurat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                height: 1.5,
              ),
            ),
            Text(
              'Berikut adalah kontak darurat dari rumah sakit terkait :',
              style: TextStyle(
                fontSize: 12.sp,
                height: 1.5,
              ),
            ),
            SizedBox(height: 12.sp),
            const _CallTile(
              title: 'RSUD Srengat',
              phone: '+62342-5651555',
            ),
            SizedBox(height: 12.sp),
            const _CallTile(
              title: 'RSUD Ngudi Waluyo Wlingi',
              phone: '+62342-691006',
            ),
            SizedBox(height: 12.sp),
            const _CallTile(
              title: 'Hallo PSC',
              phone: '119',
            ),
            SizedBox(height: 12.sp),
            _CustomTile(
              title: 'Layanan Ambulance',
              detail: 'Ambulance',
              image: Assets.icons.icAmbulance.path,
              onTap: () => handleFormAmbulance(context),
            ),
            SizedBox(height: 12.sp),
            _CustomTile(
              title: 'Layanan Kepolisian',
              detail: 'Kepolisian',
              image: Assets.icons.icPolice.path,
              onTap: () => handleCallPolice(context),
            ),
          ],
        ),
      ),
    );
  }

  handleCallPolice(BuildContext context) async {
    final choice = await showChoiceDialog(
      context: context,
      title: 'Kepolisian',
      options: [
        ChoiceItem(
          image: Assets.icons.call.path,
          title: '110',
          subtitle: 'Kepolisian [POLRES]',
        ),
        ChoiceItem(
          image: Assets.icons.whatsapp.path,
          title: '+62811482000',
          subtitle: 'Kepolisian [POLRES]',
        ),
      ],
    );

    if (choice is ChoiceItem) {
      launchUrl(Uri.parse('tel:${choice.title}'));
    }
  }

  handleFormAmbulance(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        final rxPickup = ValueNotifier('Rumah');
        final rxDestination = ValueNotifier('Faskes');

        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.sp)),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(24.sp, 24.sp, 24.sp, 16.sp),
            constraints: const BoxConstraints(minWidth: 340),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Ambulance',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(height: 16.sp),
                const FormTextLabel(label: 'Permintaan Ambulance'),
                SizedBox(height: 4.sp),
                const FormzTextField(
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16.sp),
                const FormTextLabel(label: 'Lokasi Penjemputan'),
                SizedBox(height: 4.sp),
                ...['Rumah', 'Lokasi Sekarang', 'Lokasi Lain'].map((pickup) {
                  return ValueListenableBuilder<String>(
                    valueListenable: rxPickup,
                    builder: (context, groupValue, child) {
                      return RadioListTile(
                        value: pickup,
                        groupValue: groupValue,
                        contentPadding: EdgeInsets.zero,
                        visualDensity: VisualDensity.compact,
                        title: Text(pickup),
                        onChanged: (value) => rxPickup.value = value!,
                      );
                    },
                  );
                }),
                SizedBox(height: 8.sp),
                const FormTextLabel(label: 'Lokasi Tujuan'),
                SizedBox(height: 4.sp),
                ...['Faskes', 'Lokasi Lain'].map((destination) {
                  return ValueListenableBuilder<String>(
                    valueListenable: rxDestination,
                    builder: (context, groupValue, child) {
                      return RadioListTile(
                        value: destination,
                        groupValue: groupValue,
                        contentPadding: EdgeInsets.zero,
                        visualDensity: VisualDensity.compact,
                        title: Text(destination),
                        onChanged: (value) => rxDestination.value = value!,
                      );
                    },
                  );
                }),
                SizedBox(height: 16.sp),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context, false),
                        style: ElevatedButton.styleFrom(
                          visualDensity: VisualDensity.standard,
                          backgroundColor: ThemeColors.backgroundField,
                          foregroundColor: ThemeColors.greyCaption,
                        ),
                        child: const Text('Batal'),
                      ),
                    ),
                    SizedBox(width: 16.sp),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context, true),
                        style: ElevatedButton.styleFrom(
                          visualDensity: VisualDensity.standard,
                        ),
                        child: const Text('Kirim'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _CallTile extends StatelessWidget {
  const _CallTile({
    Key? key,
    required this.title,
    required this.phone,
  }) : super(key: key);

  final String title;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.sp)),
        border: Border.all(
          color: ThemeColors.grey6,
        ),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          foregroundColor: ThemeColors.red,
          backgroundColor: ThemeColors.backgroundPage,
          child: Icon(Icons.call),
        ),
        title: Text(title, style: TextStyle(fontSize: 14.sp)),
        subtitle: Text(phone, style: TextStyle(fontSize: 12.sp)),
        onTap: () async {
          final confirm = await showConfirmationDialog(
            context: context,
            title: 'Konfirmasi',
            message: 'Apa Anda yakin untuk memanggil bantuan?',
          );

          if (confirm == true) {
            launchUrl(Uri.parse('tel:$phone'));
          }
        },
      ),
    );
  }
}

class _CustomTile extends StatelessWidget {
  const _CustomTile({
    Key? key,
    required this.title,
    required this.detail,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String detail;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.sp)),
        border: Border.all(
          color: ThemeColors.grey6,
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          foregroundColor: ThemeColors.red,
          backgroundColor: ThemeColors.backgroundPage,
          child: Image.asset(image, width: 24, height: 24),
        ),
        title: Text(title, style: TextStyle(fontSize: 14.sp)),
        subtitle: Text(detail, style: TextStyle(fontSize: 12.sp)),
        onTap: onTap,
      ),
    );
  }
}

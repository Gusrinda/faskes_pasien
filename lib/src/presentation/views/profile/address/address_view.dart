import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/domain/domain.dart';
import 'package:pasien/src/presentation/blocs/profile/address/address_bloc.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'address_form.dart';

class AddressView extends StatefulWidget {
  static const String routeName = '/profile/address';

  const AddressView({super.key});

  @override
  State<AddressView> createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alamat Saya'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderLabel('Detail Alamat'),
            const SizedBox(height: 8),
            BlocBuilder<AddressBloc, AddressState>(
              builder: (context, state) {
                final user = state.user;

                if (user.isNotSet) {
                  return Text(
                    'Belum diset',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontStyle: FontStyle.italic,
                      color: ThemeColors.greyCaption,
                    ),
                  );
                }

                return Text(
                  '${user.address ?? '-'} RT. ${user.rt ?? '-'} RW. ${user.rw ?? '-'}\n'
                  'Kelurahan ${user.kelurahan ?? '-'}, Kecamatan ${user.kecamatan ?? '-'},\n'
                  '${user.kota ?? '-'}, ${user.provinsi ?? '-'}\n'
                  'Kodepos ${user.kodePos ?? '-'}',
                  style: TextStyle(fontSize: 14.sp),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: OutlinedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              AddressForm.routeName,
              arguments: context.read<AddressBloc>(),
            );
          },
          child: const Text('Ubah'),
        ),
      ),
    );
  }
}

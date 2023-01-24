import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/presentation/blocs/auth/authentication/authentication_bloc.dart';
import 'package:pasien/src/presentation/views/profile/update_password_view.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';
import 'package:pasien/src/presentation/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'address/address_view.dart';
import 'document/document_list_view.dart';
import 'family/family_list_view.dart';
import 'insurance/insurance_list_view.dart';
import 'personal_data/personal_data_view.dart';
import 'profile_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthenticationBloc>().add(const FetchProfile());
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Theme(
      data: _themeData(context),
      child: Scaffold(
        appBar: _buildAppBar(),
        body: const _ContentView(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Profile'),
    );
  }

  ThemeData _themeData(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return themeData.copyWith(
      appBarTheme: themeData.appBarTheme.copyWith(
        centerTitle: true,
        elevation: 0.0,
        color: themeData.primaryColor,
        actionsIconTheme: themeData.primaryIconTheme.copyWith(
          color: Colors.white,
        ),
        iconTheme: themeData.primaryIconTheme.copyWith(
          color: Colors.white,
        ),
        titleTextStyle: textTheme.headline5?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _ContentView extends StatelessWidget {
  const _ContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: themeData.primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfilePicture(),
                const SizedBox(width: 24),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ProfileName(),
                      SizedBox(height: 4),
                      ProfileId(),
                      SizedBox(height: 4),
                      ProfilePhone(),
                      SizedBox(height: 4),
                      ProfileEmail(),
                      SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: HeaderLabel('Data Saya'),
          ),
          MenuOutlinedTile(
            'Data Diri',
            onTap: () async {
              final bloc = context.read<AuthenticationBloc>();
              await Navigator.pushNamed(context, PersonalDataView.routeName);
              bloc.add(const FetchProfile());
            },
          ),
          MenuOutlinedTile(
            'Alamat',
            onTap: () async {
              final authBloc = context.read<AuthenticationBloc>();
              await Navigator.pushNamed(context, AddressView.routeName);
              authBloc.add(const FetchProfile());
            },
          ),
          MenuOutlinedTile(
            'Detail Keluarga',
            onTap: () {
              Navigator.pushNamed(context, FamilyListView.routeName);
            },
          ),
          MenuOutlinedTile(
            'Detail Asuransi',
            onTap: () {
              Navigator.pushNamed(context, InsuranceListView.routeName);
            },
          ),
          MenuOutlinedTile(
            'Upload Data',
            onTap: () {
              Navigator.pushNamed(context, DocumentListView.routeName);
            },
          ),
          MenuOutlinedTile(
            'Ubah Password',
            onTap: () {
              Navigator.pushNamed(context, UpdatePasswordView.routeName);
            },
          ),
          SafeArea(
            minimum: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: ElevatedButton(
              onPressed: () => handleLogOut(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: ThemeColors.red,
              ),
              child: const Text('Keluar'),
            ),
          ),
        ],
      ),
    );
  }

  handleLogOut(BuildContext context) async {
    final bloc = context.read<AuthenticationBloc>();
    final confirm = await context.showConfirmationBottomSheet(
      image: '',
      title: 'Konfirmasi Keluar',
      message: 'Apakah Anda yakin akan keluar dari aplikasi Blitar Sehat?',
      positiveButton: 'Keluar',
    );

    if (confirm == true) {
      bloc.add(const AuthenticationLogoutRequested());
    }
  }
}

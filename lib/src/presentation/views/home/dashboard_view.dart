import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/repository/push_notification_repository.dart';
import 'package:pasien/src/presentation/widgets/bottom_app_bar.dart';

import '../history/history_view.dart';
import '../message/message_view.dart';
import '../profile/profile_view.dart';
import 'emergency_view.dart';
import 'home_view.dart';

class DashboardView extends StatefulWidget {
  static const String routeName = '/dashboard';

  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final pageController = PageController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PushNotificationRepository>().requestPermission();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const _Fab(),
    );
  }

  Widget _body() {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        HomeView(),
        HistoryView(),
        MessageView(),
        ProfileView(),
      ],
    );
  }

  CustomBottomAppBar _bottomNavigationBar() {
    return CustomBottomAppBar(
      notchedShape: const CircularNotchedRectangle(),
      onTap: (page) {
        pageController.jumpToPage(page);
      },
      height: kToolbarHeight,
      backgroundColor: Colors.white,
      selectedItemColor: ThemeColors.green,
      unselectedItemColor: ThemeColors.grey4,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      items: [
        CustomBottomAppBarItem(
          icon: IconlyLight.home,
          activeIcon: IconlyBold.home,
        ),
        CustomBottomAppBarItem(
          icon: IconlyLight.document,
          activeIcon: IconlyBold.document,
        ),
        CustomBottomAppBarItem(
          icon: IconlyLight.message,
          activeIcon: IconlyBold.message,
        ),
        CustomBottomAppBarItem(
          icon: IconlyLight.profile,
          activeIcon: IconlyBold.profile,
        ),
      ],
    );
  }
}

class _Fab extends StatelessWidget {
  const _Fab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, EmergencyView.routeName);
      },
      backgroundColor: ThemeColors.red,
      foregroundColor: Colors.white,
      child: Image.asset(
        Assets.icons.emergencyCall.path,
        height: 28,
      ),
    );
  }
}

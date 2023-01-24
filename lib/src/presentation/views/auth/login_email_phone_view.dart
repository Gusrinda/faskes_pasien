import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/base/base_material_page.dart';
import 'package:pasien/src/presentation/widgets/hero_widget.dart';
import 'package:pasien/src/presentation/widgets/logo_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'login_otp_view.dart';
import 'register_view.dart';

class LoginEmailPhoneView extends StatefulWidget {
  static const String routeName = '/login/email-phone';

  const LoginEmailPhoneView({super.key, this.tabIndex = 1});

  final int tabIndex;

  @override
  State<LoginEmailPhoneView> createState() => _LoginEmailPhoneViewState();
}

class _LoginEmailPhoneViewState extends State<LoginEmailPhoneView>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  final ValueNotifier<int> tabIndex = ValueNotifier(1);

  @override
  void initState() {
    tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: widget.tabIndex,
    );
    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseMaterialPage(
      child: Scaffold(
        body: _ContentView(tabController: tabController, tabIndex: tabIndex),
        bottomNavigationBar: const _BottomBar(),
      ),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({
    Key? key,
    required this.tabController,
    required this.tabIndex,
  }) : super(key: key);

  final TabController tabController;
  final ValueNotifier<int> tabIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: kToolbarHeight),
            const FastkesLogo(),
            const SizedBox(height: 64),
            Text(
              'Pilih salah satu cara untuk masuk menggunakan alamat email atau nomor telepon yang terdaftar',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
            ),
            const SizedBox(height: 16),
            // TabBar(
            //   controller: tabController,
            //   tabs: const [
            //     Tab(text: 'Email'),
            //     Tab(text: 'Nomor Telepon'),
            //   ],
            //   labelStyle: TextStyle(fontSize: 14.sp),
            //   labelColor: Theme.of(context).primaryColor,
            //   unselectedLabelColor: ThemeColors.blackPrimary,
            // ),
            // const Divider(height: 0),
            // const SizedBox(height: 24),
            IntrinsicHeight(
              child: ValueListenableBuilder<int>(
                valueListenable: tabIndex,
                builder: (context, value, child) {
                  return IndexedStack(
                    index: value,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          FormTextLabel(
                            label:
                                AppLocalizations.of(context)!.labelEmailAddress,
                          ),
                          const SizedBox(height: 8),
                          const _FormEmailField(),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          FormTextLabel(
                            label: AppLocalizations.of(context)!.labelPhone,
                          ),
                          const SizedBox(height: 8),
                          const _FormPhoneField(),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Hero(
              tag: 'Form-Button',
              flightShuttleBuilder: flightShuttleBuilder,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    LoginOTPView.routeName,
                  );
                },
                child: Text(
                  AppLocalizations.of(context)!.buttonNext,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Expanded(child: Divider(color: ThemeColors.greyCaption)),
                const SizedBox(width: 16),
                Text(
                  'ATAU',
                  style: TextStyle(
                    color: ThemeColors.greyCaption,
                    fontSize: 14.sp,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(child: Divider(color: ThemeColors.greyCaption)),
              ],
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: ThemeColors.greyCaption,
                side: const BorderSide(
                  color: ThemeColors.greyCaption,
                ),
              ),
              child: const Text('Login dengan NIK'),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Hero(
        tag: 'Form-Footer',
        flightShuttleBuilder: flightShuttleBuilder,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: AppLocalizations.of(context)!.textNoAccount),
              TextSpan(
                text: AppLocalizations.of(context)!.textRegister,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, RegisterView.routeName);
                  },
              ),
            ],
            style: TextStyle(fontSize: 15.sp),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _FormEmailField extends StatelessWidget {
  const _FormEmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<LoginBloc, LoginState>(
    //   buildWhen: (previous, current) =>
    //       previous.status != current.status ||
    //       previous.fieldUsername != current.fieldUsername,
    //   builder: (context, state) {
    return Material(
      color: Colors.transparent,
      child: FormzTextField(
        trailing: const Icon(Icons.email_outlined),
        hintText: AppLocalizations.of(context)!.labelEmailAddress,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        // onChanged: (email) =>
        //     context.read<LoginBloc>().add(OnUsernameChanged(email)),
        // readOnly: state.status.isSubmissionInProgress,
        // errorText:
        //     state.fieldUsername.invalid ? 'Silakan isi username' : null,
      ),
    );
    //   },
    // );
  }
}

class _FormPhoneField extends StatelessWidget {
  const _FormPhoneField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<LoginBloc, LoginState>(
    //   buildWhen: (previous, current) =>
    //       previous.status != current.status ||
    //       previous.fieldUsername != current.fieldUsername,
    //   builder: (context, state) {
    return Material(
      color: Colors.transparent,
      child: FormzTextField(
        trailing: const Icon(Icons.phone_android_outlined),
        hintText: AppLocalizations.of(context)!.labelPhone,
        keyboardType: TextInputType.phone,
        textInputAction: TextInputAction.done,
        // onChanged: (email) =>
        //     context.read<LoginBloc>().add(OnUsernameChanged(email)),
        // readOnly: state.status.isSubmissionInProgress,
        // errorText:
        //     state.fieldUsername.invalid ? 'Silakan isi username' : null,
      ),
    );
    //   },
    // );
  }
}

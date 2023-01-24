import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/base/base_material_page.dart';
import 'package:pasien/src/presentation/widgets/hero_widget.dart';
import 'package:pasien/src/presentation/widgets/logo_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'register_view.dart';

class LoginOTPView extends StatefulWidget {
  static const String routeName = '/login/email-phone/otp';

  const LoginOTPView({super.key, this.tabIndex = 0});

  final int tabIndex;

  @override
  State<LoginOTPView> createState() => _LoginOTPViewState();
}

class _LoginOTPViewState extends State<LoginOTPView> {
  @override
  Widget build(BuildContext context) {
    return const BaseMaterialPage(
      child: Scaffold(
        body: _ContentView(),
        bottomNavigationBar: _BottomBar(),
      ),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({
    Key? key,
  }) : super(key: key);

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
              'Silahkan cek email kami telah mengirim kode OTP pada email terdaftar',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const FormTextLabel(label: 'Kode OTP'),
                const Spacer(),
                Text(
                  '01:30',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: ThemeColors.greyCaption,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const _FormOTPField(),
            const SizedBox(height: 16),
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Belum Menerima? Kirim Ulang',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: ThemeColors.greyCaption,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Hero(
              tag: 'Form-Button',
              flightShuttleBuilder: flightShuttleBuilder,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  AppLocalizations.of(context)!.buttonLogin,
                ),
              ),
            ),
            const SizedBox(height: 16),
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
      padding: const EdgeInsets.fromLTRB(16, 0, 16, kToolbarHeight),
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

class _FormOTPField extends StatelessWidget {
  const _FormOTPField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<LoginBloc, LoginState>(
    //   buildWhen: (previous, current) =>
    //       previous.status != current.status ||
    //       previous.fieldUsername != current.fieldUsername,
    //   builder: (context, state) {
    return const Material(
      color: Colors.transparent,
      child: FormzTextField(
        hintText: 'Kode OTP',
        keyboardType: TextInputType.number,
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

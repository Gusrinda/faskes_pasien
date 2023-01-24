import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/presentation/blocs/auth/forgot/forgot_password_bloc.dart';

import 'change_password_view.dart';

class ForgotPasswordView extends StatefulWidget {
  static const String routeName = '/forgot-password/sent';

  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ForgotPasswordBloc>().add(const RequestResetPassword());
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ForgotPasswordBloc>();
    String email = bloc.email;

    try {
      final split = email.split('@');
      if (split.length >= 2) {
        final domain = split.last;
        final username = split.first;
        final regex = RegExp(r'[a-zA-Z]');
        final maskedUsername =
            '${username[0]}${username.substring(1).replaceAll(regex, '*')}';
        email = '$maskedUsername@$domain';
      }
    } catch (_) {}

    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if (state.toastData != null) {
          context.showToastData(state.toastData!);
          context.read<ForgotPasswordBloc>().add(const ResetError());
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.titleResetPassword),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32),
              Center(child: Assets.images.emailVerification.image(width: 144)),
              const SizedBox(height: 32),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!
                          .messageLinkResetPasswordSentBeforeEmail,
                    ),
                    TextSpan(
                      text: email,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!
                          .messageLinkResetPasswordSentAfterEmail,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.sp),
              ),
              const SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      ChangePasswordView.routeName,
                      arguments: context.read<ForgotPasswordBloc>(),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      AppLocalizations.of(context)!.buttonOpenEmail,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const _BottomBar(),
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
    return SafeArea(
      minimum: const EdgeInsets.fromLTRB(16, 0, 16, kToolbarHeight),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: AppLocalizations.of(context)!.textNotReceivedEmail),
            TextSpan(
              text: AppLocalizations.of(context)!.linkButtonResend,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
          style: TextStyle(fontSize: 15.sp),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

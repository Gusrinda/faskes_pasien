import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'verify_email_code_view.dart';

class VerifyEmailView extends StatelessWidget {
  static const String routeName = '/register/verify-email';

  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppLocalizations.of(context)!.titleVerification,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 32),
              Center(child: Assets.images.verification.image(width: 250)),
              const SizedBox(height: 32),
              Text(
                AppLocalizations.of(context)!.messageVerification,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.sp),
              ),
              const SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, VerifyEmailCodeView.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      AppLocalizations.of(context)!.buttonVerification,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

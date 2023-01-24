import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/presentation/blocs/auth/register/verification/register_verification_bloc.dart';
import 'package:pasien/src/presentation/views/auth/login_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyEmailCodeView extends StatefulWidget {
  static const String routeName = '/register/verify-email/code';

  const VerifyEmailCodeView({super.key});

  @override
  State<VerifyEmailCodeView> createState() => _VerifyEmailCodeViewState();
}

class _VerifyEmailCodeViewState extends State<VerifyEmailCodeView> {
  final errorController = StreamController<ErrorAnimationType>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterVerificationBloc, RegisterVerificationState>(
      listenWhen: (previous, current) =>
          previous.status != current.status ||
          previous.toastData != current.toastData,
      listener: (context, state) {
        final toast = state.toastData;

        if (state.status.isSubmissionFailure) {
          errorController.add(ErrorAnimationType.shake);
          context.showToastData(toast!).closed.then((value) {
            context
                .read<RegisterVerificationBloc>()
                .add(const ResetToastData());
          });
        } else if (state.status.isSubmissionSuccess) {
          context
              .showToastData(toast!)
              .closed
              .then((SnackBarClosedReason reason) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              LoginView.routeName,
              (route) => false,
            );
          });
        }
      },
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: _ContentView(errorController: errorController),
        bottomNavigationBar: const _BottomBar(),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(AppLocalizations.of(context)!.titleEmailVerification),
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
      minimum: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: BlocBuilder<RegisterVerificationBloc, RegisterVerificationState>(
        buildWhen: (previous, current) =>
            previous.status != current.status ||
            previous.fieldOTP != current.fieldOTP,
        builder: (context, state) {
          if (state.status.isSubmissionInProgress) {
            return ElevatedButton.icon(
              onPressed: null,
              icon: const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator.adaptive(
                  backgroundColor: Colors.white,
                ),
              ),
              label: Text(AppLocalizations.of(context)!.buttonVerifying),
            );
          }

          bool enabled = state.fieldOTP.value.length == 6;

          return ElevatedButton(
            onPressed: !enabled
                ? null
                : () => context
                    .read<RegisterVerificationBloc>()
                    .add(const SubmitVerification()),
            child: Text(AppLocalizations.of(context)!.buttonVerification),
          );
        },
      ),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({
    Key? key,
    required this.errorController,
  }) : super(key: key);

  final StreamController<ErrorAnimationType> errorController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.messageEmailVerification,
            style: TextStyle(fontSize: 12.sp),
          ),
          const SizedBox(height: 16),
          BlocBuilder<RegisterVerificationBloc, RegisterVerificationState>(
            builder: (context, state) {
              final showError = state.status.isSubmissionFailure;

              return PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  activeColor: showError
                      ? Theme.of(context).errorColor
                      : ThemeColors.backgroundField,
                  selectedColor: showError
                      ? Theme.of(context).errorColor
                      : ThemeColors.green,
                  inactiveColor: ThemeColors.backgroundField,
                  activeFillColor: ThemeColors.backgroundField,
                  inactiveFillColor: ThemeColors.backgroundField,
                  selectedFillColor: ThemeColors.backgroundField,
                  errorBorderColor: Theme.of(context).errorColor,
                ),
                textStyle: TextStyle(
                  color: showError ? ThemeColors.red : ThemeColors.blackPrimary,
                ),
                animationDuration: const Duration(milliseconds: 300),
                cursorColor: ThemeColors.green,
                errorAnimationController: errorController,
                controller: state.fieldOTP.textEditingController,
                enableActiveFill: true,
                autoFocus: true,
                keyboardType: TextInputType.number,
                onCompleted: (pin) {},
                onChanged: (value) => context
                    .read<RegisterVerificationBloc>()
                    .add(InputOTP(value)),
                beforeTextPaste: (text) {
                  return true;
                },
              );
            },
          ),
          Row(
            children: [
              const Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!
                          .messageVerificationNotReceived,
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.linkButtonResend,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  style: TextStyle(fontSize: 12.sp),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}

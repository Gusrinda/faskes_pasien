import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/presentation/base/base_material_page.dart';
import 'package:pasien/src/presentation/blocs/auth/forgot/forgot_password_bloc.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'login_view.dart';

class ChangePasswordView extends StatefulWidget {
  static const String routeName = '/change-password';

  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if (state.statusChange.isSubmissionSuccess) {
          context.showToastData(state.toastData!).closed.then((_) {
            Navigator.popUntil(
              context,
              (route) => route.settings.name == LoginView.routeName,
            );
          });
        } else if (state.statusChange.isSubmissionFailure) {
          context.showToastData(state.toastData!);
          context.read<ForgotPasswordBloc>().add(const ResetError());
        }
      },
      child: BaseMaterialPage(
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.titleChangePassword),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  AppLocalizations.of(context)!.messageChangePassword,
                  style: TextStyle(fontSize: 14.sp),
                ),
                const SizedBox(height: 16),
                FormTextLabel(
                  label: AppLocalizations.of(context)!.labelPassword,
                  mandatory: true,
                ),
                const SizedBox(height: 8),
                const _FormPasswordField(),
                const SizedBox(height: 16),
                FormTextLabel(
                  label:
                      AppLocalizations.of(context)!.labelPasswordConfirmation,
                  mandatory: true,
                ),
                const SizedBox(height: 8),
                const _FormPasswordConfirmationField(),
                const SizedBox(height: 16),
                const FormTextLabel(label: 'Kode OTP'),
                const SizedBox(height: 8),
                const _FormOTPField(),
              ],
            ),
          ),
          bottomNavigationBar: SafeArea(
            minimum: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
              buildWhen: (previous, current) =>
                  previous.statusChange != current.statusChange,
              builder: (context, state) {
                if (state.statusChange.isSubmissionInProgress) {
                  return ElevatedButton.icon(
                    onPressed: null,
                    icon: const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator.adaptive(
                        backgroundColor: Colors.white,
                      ),
                    ),
                    label: const Text('MENGUBAH PASSWORD'),
                  );
                }

                return ElevatedButton(
                  onPressed: () {
                    context
                        .read<ForgotPasswordBloc>()
                        .add(const RequestChangePassword());
                  },
                  child:
                      Text(AppLocalizations.of(context)!.buttonResetPassword),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _FormPasswordField extends StatelessWidget {
  const _FormPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      buildWhen: (previous, current) =>
          previous.statusChange != current.statusChange ||
          previous.fieldPassword != current.fieldPassword ||
          previous.obscurePassword != current.obscurePassword,
      builder: (context, state) {
        return FormzTextField(
          trailing: GestureDetector(
            child: state.obscurePassword
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
            onTap: () => context
                .read<ForgotPasswordBloc>()
                .add(TogglePasswordObscured(!state.obscurePassword)),
          ),
          hintText: '••••••••',
          obscureText: state.obscurePassword,
          onChanged: (password) => context
              .read<ForgotPasswordBloc>()
              .add(OnPasswordChanged(password)),
          textInputAction: TextInputAction.next,
          readOnly: state.statusChange.isSubmissionInProgress,
          errorText:
              state.fieldPassword.invalid ? 'Silakan isi password' : null,
        );
      },
    );
  }
}

class _FormPasswordConfirmationField extends StatelessWidget {
  const _FormPasswordConfirmationField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      buildWhen: (previous, current) =>
          previous.statusChange != current.statusChange ||
          previous.fieldConfirmPassword != current.fieldConfirmPassword ||
          previous.obscureConfirmPassword != current.obscureConfirmPassword ||
          previous.fieldPassword != current.fieldPassword,
      builder: (context, state) {
        return FormzTextField(
          trailing: GestureDetector(
            child: state.obscureConfirmPassword
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
            onTap: () => context.read<ForgotPasswordBloc>().add(
                TogglePasswordConfirmationObscured(
                    !state.obscureConfirmPassword)),
          ),
          hintText: '••••••••',
          obscureText: state.obscureConfirmPassword,
          onChanged: (password) => context
              .read<ForgotPasswordBloc>()
              .add(OnPasswordConfirmationChanged(password)),
          readOnly: state.statusChange.isSubmissionInProgress,
          errorText: () {
            if (state.fieldConfirmPassword.invalid) {
              return 'Silakan ulangi password';
            }

            final password = state.fieldPassword.value;
            final confirmPassword = state.fieldConfirmPassword.value;
            if (password.isNotEmpty &&
                confirmPassword.isNotEmpty &&
                password != confirmPassword) {
              return 'Konfirmasi password tidak sesuai';
            }

            return null;
          }(),
        );
      },
    );
  }
}

class _FormOTPField extends StatelessWidget {
  const _FormOTPField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      buildWhen: (previous, current) =>
          previous.statusChange != current.statusChange ||
          previous.fieldOtp != current.fieldOtp,
      builder: (context, state) {
        return FormzTextField(
          hintText: 'Kode OTP',
          keyboardType: TextInputType.number,
          maxLength: 6,
          textInputAction: TextInputAction.done,
          onChanged: (otp) =>
              context.read<ForgotPasswordBloc>().add(OnOTPChanged(otp)),
          errorText: state.fieldOtp.invalid
              ? 'Silakan isi kode otp yang dikirim via email'
              : null,
        );
      },
    );
  }
}

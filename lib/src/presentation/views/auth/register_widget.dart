import 'package:formz/formz.dart';
import 'package:pasien/src/presentation/blocs/auth/register/register_bloc.dart';
import 'package:pasien/src/presentation/widgets/hero_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class FormPasswordConfirmationField extends StatelessWidget {
  const FormPasswordConfirmationField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.fieldConfirmPassword != current.fieldConfirmPassword ||
          previous.obscureConfirmPassword != current.obscureConfirmPassword ||
          previous.fieldPassword != current.fieldPassword,
      builder: (context, state) {
        return FormzTextField(
          trailing: GestureDetector(
            child: state.obscureConfirmPassword
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
            onTap: () => context.read<RegisterBloc>().add(
                TogglePasswordConfirmationObscured(
                    !state.obscureConfirmPassword)),
          ),
          hintText: '••••••••',
          obscureText: state.obscureConfirmPassword,
          onChanged: (password) => context
              .read<RegisterBloc>()
              .add(OnPasswordConfirmationChanged(password)),
          readOnly: state.status.isSubmissionInProgress,
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

class FormPasswordField extends StatelessWidget {
  const FormPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.fieldPassword != current.fieldPassword ||
          previous.obscurePassword != current.obscurePassword,
      builder: (context, state) {
        return Hero(
          tag: 'Form-Password',
          flightShuttleBuilder: flightShuttleBuilder,
          child: Material(
            color: Colors.transparent,
            child: FormzTextField(
              trailing: GestureDetector(
                child: state.obscurePassword
                    ? const Icon(Icons.visibility_outlined)
                    : const Icon(Icons.visibility_off_outlined),
                onTap: () => context
                    .read<RegisterBloc>()
                    .add(TogglePasswordObscured(!state.obscurePassword)),
              ),
              hintText: '••••••••',
              obscureText: state.obscurePassword,
              onChanged: (password) =>
                  context.read<RegisterBloc>().add(OnPasswordChanged(password)),
              textInputAction: TextInputAction.next,
              readOnly: state.status.isSubmissionInProgress,
              errorText:
                  state.fieldPassword.invalid ? 'Silakan isi password' : null,
            ),
          ),
        );
      },
    );
  }
}

class FormPhoneField extends StatelessWidget {
  const FormPhoneField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.fieldPhone != current.fieldPhone ||
          previous.phoneCountryData != current.phoneCountryData,
      builder: (context, state) {
        final countryCode = state.phoneCountryData?.countryCode;

        return FormzTextField(
          trailing: countryCode == null
              ? const Icon(Icons.phone_android)
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'icons/flags/png/${countryCode.toLowerCase()}.png',
                    package: 'country_icons',
                    width: 32,
                  ),
                ),
          textEditingController: state.fieldPhone.textEditingController,
          hintText: '+62 8xx-xxxx-xxxxx',
          keyboardType: TextInputType.phone,
          onChanged: (phone) =>
              context.read<RegisterBloc>().add(OnPhoneChanged(phone)),
          textInputAction: TextInputAction.next,
          inputFormatters: [
            PhoneInputFormatter(
              onCountrySelected: (countryData) {
                context
                    .read<RegisterBloc>()
                    .add(OnPhoneCountryDataChanged(countryData));
              },
              allowEndlessPhone: false,
            ),
          ],
          readOnly: state.status.isSubmissionInProgress,
          errorText: state.fieldPhone.invalid ? 'Silakan isi phone' : null,
        );
      },
    );
  }
}

class FormNikField extends StatelessWidget {
  const FormNikField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.fieldNik != current.fieldNik,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldNik.textEditingController,
          trailing: state.fieldNik.value.length == 16
              ? const Icon(Icons.check_circle)
              : const Icon(Icons.check_circle_outline),
          hintText: 'Masukkan 16-digit NIK',
          keyboardType: TextInputType.number,
          maxLength: 16,
          onChanged: (nik) =>
              context.read<RegisterBloc>().add(OnNikChanged(nik)),
          textInputAction: TextInputAction.next,
          readOnly: state.status.isSubmissionInProgress,
          errorText: state.fieldNik.invalid ? 'Silakan isi NIK' : null,
        );
      },
    );
  }
}

class FormEmailField extends StatelessWidget {
  const FormEmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.fieldEmail != current.fieldEmail,
      builder: (context, state) {
        return Hero(
          tag: 'Form-Email-Address',
          flightShuttleBuilder: flightShuttleBuilder,
          child: Material(
            color: Colors.transparent,
            child: FormzTextField(
              trailing: const Icon(Icons.email_outlined),
              hintText: 'akun@email.com',
              keyboardType: TextInputType.emailAddress,
              onChanged: (email) =>
                  context.read<RegisterBloc>().add(OnEmailChanged(email)),
              textInputAction: TextInputAction.next,
              readOnly: state.status.isSubmissionInProgress,
              errorText: state.fieldEmail.invalid ? 'Silakan isi email' : null,
            ),
          ),
        );
      },
    );
  }
}

class FormUsernameField extends StatelessWidget {
  const FormUsernameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.fieldUsername != current.fieldUsername,
      builder: (context, state) {
        return Hero(
          tag: 'Form-Username',
          flightShuttleBuilder: flightShuttleBuilder,
          child: Material(
            color: Colors.transparent,
            child: FormzTextField(
              trailing: const Icon(Icons.person_outline),
              hintText: AppLocalizations.of(context)!.labelUsername,
              keyboardType: TextInputType.emailAddress,
              onChanged: (username) =>
                  context.read<RegisterBloc>().add(OnUsernameChanged(username)),
              textInputAction: TextInputAction.next,
              readOnly: state.status.isSubmissionInProgress,
              errorText:
                  state.fieldUsername.invalid ? 'Silakan isi username' : null,
            ),
          ),
        );
      },
    );
  }
}

class FormNameField extends StatelessWidget {
  const FormNameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.fieldName != current.fieldName,
      builder: (context, state) {
        return Hero(
          tag: 'Form-Name',
          flightShuttleBuilder: flightShuttleBuilder,
          child: Material(
            color: Colors.transparent,
            child: FormzTextField(
              hintText: 'Nama Lengkap',
              keyboardType: TextInputType.name,
              onChanged: (name) =>
                  context.read<RegisterBloc>().add(OnNameChanged(name)),
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.words,
              readOnly: state.status.isSubmissionInProgress,
              errorText:
                  state.fieldName.invalid ? 'Silakan isi nama lengkap' : null,
            ),
          ),
        );
      },
    );
  }
}

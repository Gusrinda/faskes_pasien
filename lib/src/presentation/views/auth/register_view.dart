import 'package:formz/formz.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/presentation/base/base_material_page.dart';
import 'package:pasien/src/presentation/blocs/auth/register/register_bloc.dart';
import 'package:pasien/src/presentation/widgets/hero_widget.dart';
import 'package:pasien/src/presentation/widgets/logo_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

import 'register_widget.dart';
import 'verify_email_view.dart';

class RegisterView extends StatefulWidget {
  static const String routeName = '/register';

  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  void initState() {
    super.initState();

    PhoneInputFormatter.replacePhoneMask(
      countryCode: 'ID',
      newMask: '+00 000-0000-00000',
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: _listener,
      child: BaseMaterialPage(
        child: Scaffold(
          appBar: _buildAppBar(),
          body: const _ContentView(),
        ),
      ),
    );
  }

  void _listener(BuildContext context, RegisterState state) {
    if (state.status.isSubmissionFailure) {
      context.showErrorToast(state.error!);
      return;
    }

    if (state.status.isSubmissionSuccess) {
      // context.read<AuthenticationBloc>().add(
      //       AuthenticationStatusChanged(
      //         AuthenticationStatus.authenticated,
      //         state.loginUser,
      //       ),
      //     );
      Navigator.pushReplacementNamed(context, VerifyEmailView.routeName);
    }
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(''),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const FastkesLogo(),
          const SizedBox(height: 32),
          Hero(
            tag: 'Label-Name',
            flightShuttleBuilder: flightShuttleBuilder,
            child: FormTextLabel(
              label: AppLocalizations.of(context)!.labelName,
              mandatory: true,
            ),
          ),
          const SizedBox(height: 8),
          const FormNameField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelNIK,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const FormNikField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelPhone,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const FormPhoneField(),
          // const SizedBox(height: 16),
          // Hero(
          //   tag: 'Label-Username',
          //   flightShuttleBuilder: flightShuttleBuilder,
          //   child: FormTextLabel(
          //     label: AppLocalizations.of(context)!.labelUsername,
          //     mandatory: true,
          //   ),
          // ),
          // const SizedBox(height: 8),
          // const _FormUsernameField(),
          const SizedBox(height: 16),
          Hero(
            tag: 'Label-Email',
            flightShuttleBuilder: flightShuttleBuilder,
            child: FormTextLabel(
              label: AppLocalizations.of(context)!.labelEmailAddress,
              mandatory: true,
            ),
          ),
          const SizedBox(height: 8),
          const FormEmailField(),
          const SizedBox(height: 16),
          Hero(
            tag: 'Label-Password',
            flightShuttleBuilder: flightShuttleBuilder,
            child: FormTextLabel(
              label: AppLocalizations.of(context)!.labelPassword,
              mandatory: true,
            ),
          ),
          const SizedBox(height: 8),
          const FormPasswordField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelPasswordConfirmation,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const FormPasswordConfirmationField(),
          const SizedBox(height: 16),
          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) => previous.status != current.status,
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
                  label: const Text('MELAKUKAN PENDAFTARAN'),
                );
              }

              return Hero(
                tag: 'Form-Button',
                flightShuttleBuilder: flightShuttleBuilder,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<RegisterBloc>().add(const SubmitRegister());
                  },
                  child: Text(AppLocalizations.of(context)!.buttonRegister),
                ),
              );
            },
          ),
          const _BottomBar(),
        ],
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
      padding: const EdgeInsets.fromLTRB(16, 32, 16, kToolbarHeight),
      child: Hero(
        tag: 'Form-Footer',
        flightShuttleBuilder: flightShuttleBuilder,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: AppLocalizations.of(context)!.textHaveAccount),
              TextSpan(
                text: AppLocalizations.of(context)!.textLogin,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pop(context);
                  },
              ),
            ],
            style: const TextStyle(fontSize: 15),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

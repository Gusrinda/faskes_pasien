import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/presentation/base/base_material_page.dart';
import 'package:pasien/src/presentation/blocs/auth/authentication/authentication_bloc.dart';
import 'package:pasien/src/presentation/blocs/auth/login/login_bloc.dart';
import 'package:pasien/src/presentation/widgets/hero_widget.dart';
import 'package:pasien/src/presentation/widgets/logo_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'forgot_password_view.dart';
import 'login_email_phone_view.dart';
import 'register_view.dart';
import 'reset_password_view.dart';

class LoginView extends StatefulWidget {
  static const String routeName = '/login';

  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      const id = String.fromEnvironment('IDENTITY');
      const pass = String.fromEnvironment('PASSWORD');
      if (id.isNotEmpty && pass.isNotEmpty) {
        final bloc = context.read<LoginBloc>();
        bloc
          ..add(const OnUsernameChanged(id))
          ..add(const OnPasswordChanged(pass));
        bloc.state.fieldUsername.textEditingController.text = id;
        bloc.state.fieldPassword.textEditingController.text = pass;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          context.showErrorToast(state.error!);
          return;
        }

        if (state.status.isSubmissionSuccess) {
          context.read<AuthenticationBloc>().add(
                AuthenticationStatusChanged(
                  AuthenticationStatus.authenticated,
                  state.loginUser,
                ),
              );
        }
      },
      child: const BaseMaterialPage(
        child: Scaffold(
          body: _ContentView(),
          bottomNavigationBar: _BottomBar(),
        ),
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
            Hero(
              tag: 'Label-Username',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: AppLocalizations.of(context)!.labelNIK,
              ),
            ),
            const SizedBox(height: 8),
            const _FormUsernameField(),
            const SizedBox(height: 16),
            Hero(
              tag: 'Label-Password',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: AppLocalizations.of(context)!.labelPassword,
              ),
            ),
            const SizedBox(height: 8),
            const _FormPasswordField(),
            const SizedBox(height: 16),
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () => handleResetPassword(context),
                  child: Text(
                    AppLocalizations.of(context)!.linkButtonForgotPassword,
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: ThemeColors.greyCaption,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            BlocBuilder<LoginBloc, LoginState>(
              buildWhen: (previous, current) =>
                  previous.status != current.status,
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
                    label: const Text('MELAKUKAN VERIFIKASI'),
                  );
                }

                return ElevatedButton(
                  onPressed: () {
                    context.read<LoginBloc>().add(const SubmitLogin());
                  },
                  child: Text(
                    AppLocalizations.of(context)!.buttonLogin,
                  ),
                );
              },
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
                    fontSize: 15.sp,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(child: Divider(color: ThemeColors.greyCaption)),
              ],
            ),
            const SizedBox(height: 16),
            // OutlinedButton.icon(
            //   onPressed: () {
            //     Navigator.pushReplacementNamed(
            //       context,
            //       LoginEmailPhoneView.routeName,
            //     );
            //   },
            //   style: OutlinedButton.styleFrom(
            //     foregroundColor: ThemeColors.greyCaption,
            //     side: const BorderSide(
            //       color: ThemeColors.greyCaption,
            //     ),
            //   ),
            //   icon: const Icon(Icons.email_outlined),
            //   label: const Text('Login dengan Email'),
            // ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  LoginEmailPhoneView.routeName,
                  arguments: 1,
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: ThemeColors.greyCaption,
                side: const BorderSide(
                  color: ThemeColors.greyCaption,
                ),
              ),
              icon: const Icon(Icons.call_outlined),
              label: const Text('Login dengan No. Telepon'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> handleResetPassword(BuildContext context) async {
    final navigator = Navigator.of(context);
    final email = await navigator.pushNamed(ResetPasswordView.routeName);

    if (email is String) {
      navigator.pushNamed(ForgotPasswordView.routeName, arguments: email);
    }
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
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

class _FormPasswordField extends StatelessWidget {
  const _FormPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.fieldPassword != current.fieldPassword ||
          previous.obscurePassword != current.obscurePassword,
      builder: (context, state) {
        return Hero(
          tag: 'Form-Password',
          flightShuttleBuilder: flightShuttleBuilder,
          child: Material(
            color: Colors.transparent,
            child: FormzTextField(
              textEditingController: state.fieldPassword.textEditingController,
              trailing: GestureDetector(
                child: state.obscurePassword
                    ? const Icon(Icons.visibility_outlined)
                    : const Icon(Icons.visibility_off_outlined),
                onTap: () => context
                    .read<LoginBloc>()
                    .add(TogglePasswordObscured(!state.obscurePassword)),
              ),
              hintText: '••••••••',
              obscureText: state.obscurePassword,
              textInputAction: TextInputAction.done,
              onChanged: (password) =>
                  context.read<LoginBloc>().add(OnPasswordChanged(password)),
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

class _FormUsernameField extends StatelessWidget {
  const _FormUsernameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.fieldUsername != current.fieldUsername,
      builder: (context, state) {
        return Hero(
          tag: 'Form-Username',
          flightShuttleBuilder: flightShuttleBuilder,
          child: Material(
            color: Colors.transparent,
            child: FormzTextField(
              textEditingController: state.fieldUsername.textEditingController,
              trailing: const Icon(Icons.person_outline),
              hintText: AppLocalizations.of(context)!.labelNIK,
              keyboardType: TextInputType.number,
              maxLength: 16,
              textInputAction: TextInputAction.next,
              onChanged: (email) =>
                  context.read<LoginBloc>().add(OnUsernameChanged(email)),
              readOnly: state.status.isSubmissionInProgress,
              errorText: state.fieldUsername.invalid ? 'Silakan isi NIK' : null,
            ),
          ),
        );
      },
    );
  }
}

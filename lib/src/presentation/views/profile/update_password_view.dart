import 'package:pasien/src/presentation/base/base_material_page.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class UpdatePasswordView extends StatefulWidget {
  static const String routeName = '/profile/update-password';

  const UpdatePasswordView({super.key});

  @override
  State<UpdatePasswordView> createState() => _UpdatePasswordViewState();
}

class _UpdatePasswordViewState extends State<UpdatePasswordView> {
  @override
  Widget build(BuildContext context) {
    return BaseMaterialPage(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.titleChangePassword),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FormTextLabel(
                label: AppLocalizations.of(context)!.labelOldPassword,
                mandatory: true,
              ),
              const SizedBox(height: 8),
              const _FormOldPasswordField(),
              const SizedBox(height: 16),
              FormTextLabel(
                label: AppLocalizations.of(context)!.labelNewPassword,
                mandatory: true,
              ),
              const SizedBox(height: 8),
              const _FormNewPasswordField(),
              const SizedBox(height: 16),
              FormTextLabel(
                label: AppLocalizations.of(context)!.labelConfirmationPassword,
                mandatory: true,
              ),
              const SizedBox(height: 8),
              const _FormConfirmationPasswordField(),
            ],
          ),
        ),
        bottomNavigationBar: SafeArea(
          minimum: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(AppLocalizations.of(context)!.buttonSave),
          ),
        ),
      ),
    );
  }
}

class _FormConfirmationPasswordField extends StatelessWidget {
  const _FormConfirmationPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormzTextField(
      trailing: GestureDetector(
        child: const Icon(Icons.visibility_outlined),
      ),
      hintText: '••••••••',
      obscureText: true,
    );
  }
}

class _FormNewPasswordField extends StatelessWidget {
  const _FormNewPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormzTextField(
      trailing: GestureDetector(
        child: const Icon(Icons.visibility_outlined),
      ),
      hintText: '••••••••',
      obscureText: true,
    );
  }
}

class _FormOldPasswordField extends StatelessWidget {
  const _FormOldPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormzTextField(
      trailing: GestureDetector(
        child: const Icon(Icons.visibility_outlined),
      ),
      hintText: '••••••••',
      obscureText: true,
    );
  }
}

import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class DocumentForm extends StatefulWidget {
  static const String routeName = '/profile/document/form';

  const DocumentForm({super.key});

  @override
  State<DocumentForm> createState() => _DocumentFormState();
}

class _DocumentFormState extends State<DocumentForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const _ContentView(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Tambah Dokumen'),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rxPermanent = ValueNotifier(true);

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelDocumentType,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormDocumentTypeField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelNumber,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormNumberField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelActiveDate,
          ),
          const SizedBox(height: 8),
          const _FormActiveDateField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelPermanent,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              ValueListenableBuilder(
                valueListenable: rxPermanent,
                builder: (context, value, child) {
                  return Radio(
                    value: true,
                    groupValue: value,
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onChanged: (value) {
                      rxPermanent.value = value!;
                    },
                  );
                },
              ),
              const Text('Ya'),
              const SizedBox(width: 16),
              ValueListenableBuilder(
                valueListenable: rxPermanent,
                builder: (context, value, child) {
                  return Radio(
                    value: false,
                    groupValue: value,
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onChanged: (value) {
                      rxPermanent.value = value!;
                    },
                  );
                },
              ),
              const Text('Tidak'),
            ],
          ),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelUploadCard,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormUploadCardField(),
          const SizedBox(height: 16),
          SafeArea(
            minimum: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(AppLocalizations.of(context)!.buttonSave),
            ),
          )
        ],
      ),
    );
  }
}

class _FormActiveDateField extends StatelessWidget {
  const _FormActiveDateField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormzTextField(
      textEditingController: TextEditingController(text: '22 Maret 1990'),
      hintText: AppLocalizations.of(context)!.labelActiveDate,
      readOnly: true,
      trailing: const Icon(Icons.calendar_month_outlined),
    );
  }
}

class _FormNumberField extends StatelessWidget {
  const _FormNumberField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormzTextField(
      textEditingController: TextEditingController(text: '31271551507960002'),
      hintText: AppLocalizations.of(context)!.labelNumber,
      keyboardType: TextInputType.number,
    );
  }
}

class _FormDocumentTypeField extends StatelessWidget {
  const _FormDocumentTypeField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormzTextField(
      textEditingController: TextEditingController(text: 'KTP'),
      hintText: AppLocalizations.of(context)!.labelDocumentType,
      readOnly: true,
      trailing: const Icon(Icons.keyboard_arrow_down),
    );
  }
}

class _FormUploadCardField extends StatelessWidget {
  const _FormUploadCardField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      decoration: const BoxDecoration(
        color: ThemeColors.backgroundField,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Center(
        child: Icon(
          Icons.add,
          color: ThemeColors.backgroundFieldDark,
        ),
      ),
    );
  }
}

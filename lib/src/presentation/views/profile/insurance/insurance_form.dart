import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/model/toast_data.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/core/util/image_picker.dart';
import 'package:pasien/src/presentation/blocs/profile/insurance/form/insurance_form_bloc.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InsuranceForm extends StatefulWidget {
  static const String routeName = '/profile/insurance/form';

  const InsuranceForm({super.key});

  @override
  State<InsuranceForm> createState() => _InsuranceFormState();
}

class _InsuranceFormState extends State<InsuranceForm> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<InsuranceFormBloc, InsuranceFormState>(
      listenWhen: (previous, current) =>
          previous.toastData != current.toastData,
      listener: (context, state) {
        final toastData = state.toastData;
        if (toastData != null) {
          context.showToastData(toastData).closed.then((_) {
            if (toastData.type == ToastType.ok) {
              Navigator.pop(context, true);
            }
          });
        }
      },
      child: Scaffold(
        appBar: _buildAppBar(),
        body: const _ContentView(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Tambah Asuransi'),
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelParticipantName,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormParticipantNameField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelNumber,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormNumberField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelPaymentMethod,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormPaymentMethodField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelClass,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormClassField(),
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
                context.read<InsuranceFormBloc>().add(const SubmitForm());
              },
              child: Text(AppLocalizations.of(context)!.buttonAddInsurance),
            ),
          )
        ],
      ),
    );
  }
}

class _FormClassField extends StatelessWidget {
  const _FormClassField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InsuranceFormBloc, InsuranceFormState>(
      buildWhen: (previous, current) =>
          previous.fieldClass != current.fieldClass,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldClass.textEditingController,
          hintText: AppLocalizations.of(context)!.labelClass,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          errorText: state.fieldClass.invalid ? 'Silakan isi kelas' : null,
          onTap: () async {
            final bloc = context.read<InsuranceFormBloc>();
            final clazz = await context.showSelectionBottomSheet<String>(
              title: AppLocalizations.of(context)!.labelClass,
              mapLabelData: {
                'Kelas I': 'Kelas I',
                'Kelas II': 'Kelas II',
                'Kelas III': 'Kelas III',
                'VIP': 'VIP',
                'VVIP': 'VVIP',
              },
              selected: state.fieldClass.value,
            );

            if (clazz != null) {
              state.fieldClass.textEditingController.text = clazz;
              bloc.add(ChangeClass(clazz));
            }
          },
        );
      },
    );
  }
}

class _FormParticipantNameField extends StatelessWidget {
  const _FormParticipantNameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InsuranceFormBloc, InsuranceFormState>(
      buildWhen: (previous, current) => previous.fieldName != current.fieldName,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldName.textEditingController,
          hintText: AppLocalizations.of(context)!.labelParticipantName,
          keyboardType: TextInputType.name,
          onChanged: (name) =>
              context.read<InsuranceFormBloc>().add(ChangeName(name)),
          textInputAction: TextInputAction.next,
          textCapitalization: TextCapitalization.words,
          readOnly: state.status.isSubmissionInProgress,
          errorText:
              state.fieldName.invalid ? 'Silakan isi nama peserta' : null,
        );
      },
    );
  }
}

class _FormNumberField extends StatelessWidget {
  const _FormNumberField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InsuranceFormBloc, InsuranceFormState>(
      buildWhen: (previous, current) =>
          previous.fieldNumber != current.fieldNumber,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldNumber.textEditingController,
          hintText: AppLocalizations.of(context)!.labelNumber,
          keyboardType: TextInputType.number,
          onChanged: (number) =>
              context.read<InsuranceFormBloc>().add(ChangeNumber(number)),
          textInputAction: TextInputAction.next,
          readOnly: state.status.isSubmissionInProgress,
          errorText: state.fieldNumber.invalid ? 'Silakan isi nomor' : null,
        );
      },
    );
  }
}

class _FormPaymentMethodField extends StatelessWidget {
  const _FormPaymentMethodField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InsuranceFormBloc, InsuranceFormState>(
      buildWhen: (previous, current) =>
          previous.fieldPaymentMethod != current.fieldPaymentMethod,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldPaymentMethod.textEditingController,
          hintText: AppLocalizations.of(context)!.labelPaymentMethod,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          errorText: state.fieldPaymentMethod.invalid
              ? 'Silakan isi cara bayar'
              : null,
          onTap: () async {
            final bloc = context.read<InsuranceFormBloc>();
            final paymentMethod =
                await context.showSelectionBottomSheet<String>(
              title: AppLocalizations.of(context)!.labelPaymentMethod,
              mapLabelData: {
                'Umum': 'Umum',
                'BPJS Ketenagakerjaan': 'BPJS Ketenagakerjaan',
                'BPJS Kesehatan': 'BPJS Kesehatan',
                'Keringanan': 'Keringanan',
              },
              selected: state.fieldPaymentMethod.value,
            );

            if (paymentMethod != null) {
              state.fieldPaymentMethod.textEditingController.text =
                  paymentMethod;
              bloc.add(ChangePaymentMethod(paymentMethod));
            }
          },
        );
      },
    );
  }
}

class _FormUploadCardField extends StatelessWidget {
  const _FormUploadCardField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InsuranceFormBloc, InsuranceFormState>(
      buildWhen: (previous, current) =>
          previous.uploadCard != current.uploadCard,
      builder: (context, state) {
        if (state.insurance != null) {
          return GestureDetector(
            onTap: () => handlePickImage(context),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.network(state.insurance!.imageUrl),
            ),
          );
        }

        final defaultStateUploader = GestureDetector(
          onTap: () => handlePickImage(context),
          child: Container(
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
          ),
        );

        if (state.uploadCard != null) {
          return FutureBuilder<Uint8List>(
            future: state.uploadCard!.readAsBytes(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return defaultStateUploader;
              }

              return GestureDetector(
                onTap: () => handlePickImage(context),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.memory(snapshot.data!),
                ),
              );
            },
          );
        }

        return defaultStateUploader;
      },
    );
  }

  handlePickImage(BuildContext context) async {
    final bloc = context.read<InsuranceFormBloc>();
    final card = await ImagePickers.show(
      context,
      title: AppLocalizations.of(context)!.labelUploadCard,
    );

    if (card != null) {
      bloc.add(ChangeCard(card));
    }
  }
}

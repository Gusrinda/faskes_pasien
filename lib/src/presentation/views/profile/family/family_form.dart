import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:pasien/src/core/model/toast_data.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/presentation/blocs/profile/family/form/family_form_bloc.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FamilyForm extends StatefulWidget {
  static const String routeName = '/profile/family/form';

  const FamilyForm({super.key});

  @override
  State<FamilyForm> createState() => _FamilyFormState();
}

class _FamilyFormState extends State<FamilyForm> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<FamilyFormBloc, FamilyFormState>(
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
      title: const Text('Tambah Keluarga'),
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
            label: AppLocalizations.of(context)!.labelName,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormFullNameField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelFamilyRelationship,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormFamilyRelationshipField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelStatus,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormStatusField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelAddress,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormAddressField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelPhone,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormPhoneField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelJob,
          ),
          const SizedBox(height: 8),
          const _FormJobField(),
          const SizedBox(height: 16),
          SafeArea(
            minimum: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ElevatedButton(
              onPressed: () {
                context.read<FamilyFormBloc>().add(const SubmitForm());
              },
              child: Text(AppLocalizations.of(context)!.buttonAddFamily),
            ),
          )
        ],
      ),
    );
  }
}

class _FormAddressField extends StatelessWidget {
  const _FormAddressField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FamilyFormBloc, FamilyFormState>(
      buildWhen: (previous, current) =>
          previous.fieldAddress != current.fieldAddress,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldAddress.textEditingController,
          hintText: AppLocalizations.of(context)!.labelAddress,
          keyboardType: TextInputType.streetAddress,
          maxLines: 5,
          minLines: 3,
          onChanged: (address) =>
              context.read<FamilyFormBloc>().add(ChangeAddress(address)),
          textInputAction: TextInputAction.next,
          textCapitalization: TextCapitalization.words,
          readOnly: state.status.isSubmissionInProgress,
          errorText: state.fieldAddress.invalid ? 'Silakan isi alamat' : null,
        );
      },
    );
  }
}

class _FormFullNameField extends StatelessWidget {
  const _FormFullNameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FamilyFormBloc, FamilyFormState>(
      buildWhen: (previous, current) => previous.fieldName != current.fieldName,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldName.textEditingController,
          hintText: AppLocalizations.of(context)!.labelName,
          keyboardType: TextInputType.name,
          onChanged: (name) =>
              context.read<FamilyFormBloc>().add(ChangeName(name)),
          textInputAction: TextInputAction.next,
          textCapitalization: TextCapitalization.words,
          readOnly: state.status.isSubmissionInProgress,
          errorText:
              state.fieldName.invalid ? 'Silakan isi nama lengkap' : null,
        );
      },
    );
  }
}

class _FormFamilyRelationshipField extends StatelessWidget {
  const _FormFamilyRelationshipField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FamilyFormBloc, FamilyFormState>(
      buildWhen: (previous, current) =>
          previous.fieldRelation != current.fieldRelation,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldRelation.textEditingController,
          hintText: AppLocalizations.of(context)!.labelFamilyRelationship,
          trailing: const Icon(Icons.keyboard_arrow_down),
          textInputAction: TextInputAction.next,
          readOnly: true,
          errorText: state.fieldRelation.invalid
              ? 'Silakan isi hubungan keluarga'
              : null,
          onTap: () async {
            final bloc = context.read<FamilyFormBloc>();
            final relation = await context.showSelectionBottomSheet<String>(
              title: AppLocalizations.of(context)!.labelFamilyRelationship,
              mapLabelData: {
                'Suami': 'Suami',
                'Istri': 'Istri',
                'Anak': 'Anak',
              },
              selected: state.fieldRelation.value,
            );

            if (relation != null) {
              state.fieldRelation.textEditingController.text = relation;
              bloc.add(ChangeRelation(relation));
            }
          },
        );
      },
    );
  }
}

class _FormStatusField extends StatelessWidget {
  const _FormStatusField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FamilyFormBloc, FamilyFormState>(
      buildWhen: (previous, current) =>
          previous.fieldStatus != current.fieldStatus,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldStatus.textEditingController,
          hintText: AppLocalizations.of(context)!.labelStatus,
          trailing: const Icon(Icons.keyboard_arrow_down),
          textInputAction: TextInputAction.next,
          readOnly: true,
          errorText: state.fieldStatus.invalid ? 'Silakan isi status' : null,
          onTap: () async {
            final bloc = context.read<FamilyFormBloc>();
            final status = await context.showSelectionBottomSheet<String>(
              title: AppLocalizations.of(context)!.labelFamilyRelationship,
              mapLabelData: {
                'Anggota Keluarga': 'Anggota Keluarga',
                'Penanggung Jawab': 'Penanggung Jawab',
              },
              selected: state.fieldStatus.value,
            );

            if (status != null) {
              state.fieldStatus.textEditingController.text = status;
              bloc.add(ChangeStatus(status));
            }
          },
        );
      },
    );
  }
}

class _FormPhoneField extends StatelessWidget {
  const _FormPhoneField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FamilyFormBloc, FamilyFormState>(
      buildWhen: (previous, current) =>
          previous.fieldPhone != current.fieldPhone,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldPhone.textEditingController,
          hintText: AppLocalizations.of(context)!.labelPhone,
          keyboardType: TextInputType.phone,
          onChanged: (phone) =>
              context.read<FamilyFormBloc>().add(ChangePhone(phone)),
          textInputAction: TextInputAction.next,
          readOnly: state.status.isSubmissionInProgress,
          errorText:
              state.fieldPhone.invalid ? 'Silakan isi nomor telepon' : null,
        );
      },
    );
  }
}

class _FormJobField extends StatelessWidget {
  const _FormJobField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FamilyFormBloc, FamilyFormState>(
      buildWhen: (previous, current) => previous.fieldJob != current.fieldJob,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldJob.textEditingController,
          hintText: AppLocalizations.of(context)!.labelJob,
          keyboardType: TextInputType.text,
          onChanged: (job) =>
              context.read<FamilyFormBloc>().add(ChangeJob(job)),
          textInputAction: TextInputAction.done,
          textCapitalization: TextCapitalization.sentences,
          readOnly: state.status.isSubmissionInProgress,
        );
      },
    );
  }
}

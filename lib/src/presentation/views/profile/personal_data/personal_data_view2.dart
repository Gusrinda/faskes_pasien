import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasien/src/core/model/toast_data.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/presentation/blocs/profile/personal_data/personal_data_bloc.dart';
import 'package:pasien/src/presentation/views/home/dashboard_view.dart';
import 'package:pasien/src/presentation/widgets/indicator_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PersonalDataView2 extends StatefulWidget {
  static const String routeName = '/profile/personal/2';

  const PersonalDataView2({super.key});

  @override
  State<PersonalDataView2> createState() => _PersonalDataView2State();
}

class _PersonalDataView2State extends State<PersonalDataView2> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<PersonalDataBloc, PersonalDataState>(
      listener: (context, state) {
        final toastData = state.toastData;
        if (toastData != null) {
          switch (toastData.type) {
            case ToastType.ok:
              context.showToastData(toastData).closed.then((value) {
                Navigator.popUntil(
                  context,
                  (route) => route.settings.name == DashboardView.routeName,
                );
              });
              break;
            case ToastType.error:
              context.showToastData(toastData);
              break;
          }
        }
      },
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Column(
          children: const [
            HorizontalStripIndicator(activeIndex: 1),
            Expanded(child: _ContentView()),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Data Diri'),
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
          FormTextLabel(label: AppLocalizations.of(context)!.labelRMNumber),
          const SizedBox(height: 8),
          const _FormRMNumberField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelNIK,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormNIKField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelPassportNumber,
          ),
          const SizedBox(height: 8),
          const _FormPassportField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelNationality,
          ),
          const SizedBox(height: 8),
          const _FormNationalityField(),
          const SizedBox(height: 16),
          FormTextLabel(label: AppLocalizations.of(context)!.labelEthnic),
          const SizedBox(height: 8),
          const _FormEthnicField(),
          const SizedBox(height: 16),
          FormTextLabel(label: AppLocalizations.of(context)!.labelReligion),
          const SizedBox(height: 8),
          const _FormReligionField(),
          const SizedBox(height: 16),
          FormTextLabel(label: AppLocalizations.of(context)!.labelEducation),
          const SizedBox(height: 8),
          const _FormEducationField(),
          const SizedBox(height: 16),
          FormTextLabel(label: AppLocalizations.of(context)!.labelJob),
          const SizedBox(height: 8),
          const _FormJobField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelMaritalStatus,
          ),
          const SizedBox(height: 8),
          const _FormMaritalStatusField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelBloodType,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormBloodTypeField(),
          const SizedBox(height: 16),
          FormTextLabel(label: AppLocalizations.of(context)!.labelLanguage),
          const SizedBox(height: 8),
          const _FormLanguageField(),
          const SizedBox(height: 16),
          SafeArea(
            minimum: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ElevatedButton(
              onPressed: () {
                context
                    .read<PersonalDataBloc>()
                    .add(const SubmitUpdatePersonalData());
              },
              child: Text(AppLocalizations.of(context)!.buttonSave),
            ),
          )
        ],
      ),
    );
  }
}

class _FormRMNumberField extends StatelessWidget {
  const _FormRMNumberField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) => previous.fieldNoRM != current.fieldNoRM,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldNoRM.textEditingController,
          hintText: AppLocalizations.of(context)!.labelRMNumber,
          keyboardType: TextInputType.number,
        );
      },
    );
  }
}

class _FormNIKField extends StatelessWidget {
  const _FormNIKField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) => previous.fieldNIK != current.fieldNIK,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldNIK.textEditingController,
          hintText: AppLocalizations.of(context)!.labelNIK,
          keyboardType: TextInputType.number,
        );
      },
    );
  }
}

class _FormPassportField extends StatelessWidget {
  const _FormPassportField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldNoPassport != current.fieldNoPassport,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldNoPassport.textEditingController,
          hintText: AppLocalizations.of(context)!.labelPassportNumber,
          keyboardType: TextInputType.text,
        );
      },
    );
  }
}

class _FormNationalityField extends StatelessWidget {
  const _FormNationalityField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldCitizenship != current.fieldCitizenship,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldCitizenship.textEditingController,
          hintText: AppLocalizations.of(context)!.labelNationality,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final bloc = context.read<PersonalDataBloc>();
            final citizenship = await context.showSelectionBottomSheet<String>(
              title: AppLocalizations.of(context)!.labelNationality,
              mapLabelData: {
                'WNI': 'WNI',
                'WNA': 'WNA',
              },
              selected: state.fieldCitizenship.value,
            );

            if (citizenship != null) {
              bloc.add(ChangeCitizenship(citizenship));
            }
          },
        );
      },
    );
  }
}

class _FormEthnicField extends StatelessWidget {
  const _FormEthnicField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldEthnic != current.fieldEthnic,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldEthnic.textEditingController,
          hintText: AppLocalizations.of(context)!.labelEthnic,
        );
      },
    );
  }
}

class _FormReligionField extends StatelessWidget {
  const _FormReligionField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldReligion != current.fieldReligion,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldReligion.textEditingController,
          hintText: AppLocalizations.of(context)!.labelReligion,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final bloc = context.read<PersonalDataBloc>();
            final religion = await context.showSelectionBottomSheet<String>(
              title: 'Agama',
              mapLabelData: {
                'ISLAM': 'ISLAM',
                'KRISTEN': 'KRISTENSMP',
                'KATOLIK': 'KATOLIK',
                'HINDU': 'HINDU',
                'BUDHA': 'BUDHA',
                'KONGHUCU': 'KONGHUCU',
              },
              selected: state.fieldReligion.value,
            );

            if (religion != null) {
              bloc.add(ChangeReligion(religion));
            }
          },
        );
      },
    );
  }
}

class _FormEducationField extends StatelessWidget {
  const _FormEducationField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldEducation != current.fieldEducation,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldEducation.textEditingController,
          hintText: AppLocalizations.of(context)!.labelEducation,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final bloc = context.read<PersonalDataBloc>();
            final education = await context.showSelectionBottomSheet<String>(
              title: 'Pendidikan',
              mapLabelData: {
                'SD': 'SD',
                'SMP': 'SMP',
                'SMA': 'SMA',
                'S1': 'S1',
                'S2': 'S2',
                'S3': 'S3',
              },
              selected: state.fieldEducation.value,
            );

            if (education != null) {
              bloc.add(ChangeEducation(education));
            }
          },
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
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) => previous.fieldJob != current.fieldJob,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldJob.textEditingController,
          hintText: AppLocalizations.of(context)!.labelJob,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final bloc = context.read<PersonalDataBloc>();
            final job = await context.showSelectionBottomSheet<String>(
              title: AppLocalizations.of(context)!.labelJob,
              mapLabelData: {
                'PNS': 'PNS',
                'BUMN': 'BUMN',
                'SWASTA': 'SWASTA',
                'WIRASWASTA': 'WIRASWASTA',
                'TNI': 'TNI',
                'POLRI': 'POLRI',
                'PETANI': 'PETANI',
              },
              selected: state.fieldJob.value,
            );

            if (job != null) {
              bloc.add(ChangeJob(job));
            }
          },
        );
      },
    );
  }
}

class _FormMaritalStatusField extends StatelessWidget {
  const _FormMaritalStatusField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldMaritalStatus != current.fieldMaritalStatus,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldMaritalStatus.textEditingController,
          hintText: AppLocalizations.of(context)!.labelMaritalStatus,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final bloc = context.read<PersonalDataBloc>();
            final maritalStatus =
                await context.showSelectionBottomSheet<String>(
              title: 'Status Pernikahan',
              mapLabelData: {
                'Belum Menikah': 'Belum Menikah',
                'Menikah': 'Menikah',
              },
              selected: state.fieldMaritalStatus.value,
            );

            if (maritalStatus != null) {
              bloc.add(ChangeMaritalStatus(maritalStatus));
            }
          },
        );
      },
    );
  }
}

class _FormBloodTypeField extends StatelessWidget {
  const _FormBloodTypeField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldBloodType != current.fieldBloodType,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldBloodType.textEditingController,
          hintText: AppLocalizations.of(context)!.labelBloodType,
          readOnly: true,
          errorText: state.fieldBloodType.invalid
              ? 'Silakan isi golongan darah'
              : null,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final bloc = context.read<PersonalDataBloc>();
            final bloodType = await context.showSelectionBottomSheet<String>(
              title: 'Golongan Darah',
              mapLabelData: {
                'O': 'O',
                'A': 'A',
                'B': 'B',
                'AB': 'AB',
              },
              selected: state.fieldBloodType.value,
            );

            if (bloodType != null) {
              bloc.add(ChangeBloodType(bloodType));
            }
          },
        );
      },
    );
  }
}

class _FormLanguageField extends StatelessWidget {
  const _FormLanguageField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldLanguage != current.fieldLanguage,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldLanguage.textEditingController,
          hintText: AppLocalizations.of(context)!.labelLanguage,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final bloc = context.read<PersonalDataBloc>();
            final language = await context.showSelectionBottomSheet<String>(
              title: AppLocalizations.of(context)!.labelLanguage,
              mapLabelData: {
                'Indonesia': 'Indonesia',
                'Inggris': 'Inggris',
              },
              selected: state.fieldLanguage.value,
            );

            if (language != null) {
              bloc.add(ChangeLanguage(language));
            }
          },
        );
      },
    );
  }
}

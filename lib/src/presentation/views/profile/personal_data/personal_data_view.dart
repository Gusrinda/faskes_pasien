import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/presentation/blocs/administrative/administrative_bloc.dart';
import 'package:pasien/src/presentation/blocs/profile/personal_data/personal_data_bloc.dart';
import 'package:pasien/src/presentation/views/administrative/city_selector.dart';
import 'package:pasien/src/presentation/views/administrative/province_selector.dart';
import 'package:pasien/src/presentation/widgets/indicator_widget.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'personal_data_view2.dart';

class PersonalDataView extends StatefulWidget {
  static const String routeName = '/profile/personal';

  const PersonalDataView({super.key});

  @override
  State<PersonalDataView> createState() => _PersonalDataViewState();
}

class _PersonalDataViewState extends State<PersonalDataView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<PersonalDataBloc, PersonalDataState>(
      listenWhen: (previous, current) => previous.status1 != current.status1,
      listener: (context, state) {
        if (state.status1.isValid) {
          Navigator.pushNamed(
            context,
            PersonalDataView2.routeName,
            arguments: context.read<PersonalDataBloc>(),
          );
        }
      },
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Column(
          children: const [
            HorizontalStripIndicator(),
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
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelUsername,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormUsernameField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelFirstName,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormFirstNameField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelLastName,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormLastNameField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelGender,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormGenderField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelPlaceOfBirth,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormPlaceOfBirthField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelDateOfBirth,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormDateOfBirthField(),
          const SizedBox(height: 16),
          SafeArea(
            minimum: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ElevatedButton(
              onPressed: () {
                final bloc = context.read<PersonalDataBloc>();

                if (bloc.state.status1.isValid) {
                  Navigator.pushNamed(
                    context,
                    PersonalDataView2.routeName,
                    arguments: context.read<PersonalDataBloc>(),
                  );
                } else {
                  bloc.add(const ValidateForm1());
                }
              },
              child: Text(AppLocalizations.of(context)!.buttonNext),
            ),
          )
        ],
      ),
    );
  }
}

class _FormUsernameField extends StatelessWidget {
  const _FormUsernameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldUsername != current.fieldUsername,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldUsername.textEditingController,
          enabled: false,
          hintText: AppLocalizations.of(context)!.labelUsername,
          keyboardType: TextInputType.emailAddress,
        );
      },
    );
  }
}

class _FormFirstNameField extends StatelessWidget {
  const _FormFirstNameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldFirstName != current.fieldFirstName,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldFirstName.textEditingController,
          hintText: AppLocalizations.of(context)!.labelFirstName,
          keyboardType: TextInputType.name,
          readOnly: state.status.isSubmissionInProgress,
          errorText:
              state.fieldFirstName.invalid ? 'Silakan isi nama depan' : null,
        );
      },
    );
  }
}

class _FormLastNameField extends StatelessWidget {
  const _FormLastNameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldLastName != current.fieldLastName,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldLastName.textEditingController,
          hintText: AppLocalizations.of(context)!.labelLastName,
          keyboardType: TextInputType.name,
          readOnly: state.status.isSubmissionInProgress,
          errorText:
              state.fieldLastName.invalid ? 'Silakan isi nama belakang' : null,
        );
      },
    );
  }
}

class _FormGenderField extends StatelessWidget {
  const _FormGenderField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldGender != current.fieldGender,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldGender.textEditingController,
          hintText: AppLocalizations.of(context)!.labelGender,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          errorText:
              state.fieldGender.invalid ? 'Silakan isi jenis kelamin' : null,
          onTap: () async {
            final bloc = context.read<PersonalDataBloc>();
            final gender = await context.showSelectionBottomSheet<String>(
              title: 'Jenis Kelamin',
              mapLabelData: {
                'Laki-Laki': 'Laki-laki',
                'Perempuan': 'Perempuan',
              },
              selected: state.fieldGender.value,
            );

            if (gender != null) {
              bloc.add(ChangeGender(gender));
            }
          },
        );
      },
    );
  }
}

class _FormPlaceOfBirthField extends StatelessWidget {
  const _FormPlaceOfBirthField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldPlaceOfBirth != current.fieldPlaceOfBirth,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldPlaceOfBirth.textEditingController,
          hintText: AppLocalizations.of(context)!.labelPlaceOfBirth,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          errorText: state.fieldPlaceOfBirth.invalid
              ? 'Silakan isi tempat lahir'
              : null,
          onTap: () async {
            final bloc = context.read<AdministrativeBloc>();
            final dataBloc = context.read<PersonalDataBloc>();
            bloc.add(const FetchProvince());

            final province = await showSearch(
              context: context,
              delegate: ProvinceSelector(),
            );

            if (province != null) {
              bloc.add(FetchCity(province.code));

              final city = await showSearch(
                context: context,
                delegate: CitySelector(provinceCode: province.code),
              );

              if (city != null) {
                dataBloc.add(ChangePlaceOfBirth(city.name));
              }
            }
          },
        );
      },
    );
  }
}

class _FormDateOfBirthField extends StatelessWidget {
  const _FormDateOfBirthField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalDataBloc, PersonalDataState>(
      buildWhen: (previous, current) =>
          previous.fieldDateOfBirth != current.fieldDateOfBirth,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldDateOfBirth.textEditingController,
          hintText: AppLocalizations.of(context)!.labelDateOfBirth,
          readOnly: true,
          trailing: const Icon(Icons.calendar_month_outlined),
          errorText: state.fieldPlaceOfBirth.invalid
              ? 'Silakan isi tanggal lahir'
              : null,
          onTap: () async {
            final bloc = context.read<PersonalDataBloc>();
            final date = await context.showDatePickerBottomSheet(
              title: 'Tanggal Lahir',
              initialDate: state.dateOfBirth,
              firstDate: DateTime(1950),
            );

            if (date != null) {
              bloc.add(ChangeDateOfBirth(date));
            }
          },
        );
      },
    );
  }
}

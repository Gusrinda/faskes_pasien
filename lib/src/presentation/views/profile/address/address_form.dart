import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:pasien/src/core/model/toast_data.dart';
import 'package:pasien/src/core/util/extensions.dart';
import 'package:pasien/src/presentation/blocs/administrative/administrative_bloc.dart';
import 'package:pasien/src/presentation/blocs/profile/address/address_bloc.dart';
import 'package:pasien/src/presentation/views/administrative/city_selector.dart';
import 'package:pasien/src/presentation/views/administrative/district_selector.dart';
import 'package:pasien/src/presentation/views/administrative/province_selector.dart';
import 'package:pasien/src/presentation/views/administrative/village_selector.dart';
import 'package:pasien/src/presentation/views/home/dashboard_view.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddressForm extends StatefulWidget {
  static const String routeName = '/profile/address/form';

  const AddressForm({super.key});

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddressBloc, AddressState>(
      listener: (context, state) {
        final toastData = state.toastData;
        if (toastData != null) {
          switch (toastData.type) {
            case ToastType.ok:
              context.showToastData(toastData).closed.then((_) {
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
        body: const _ContentView(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Alamat Saya'),
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
            label: AppLocalizations.of(context)!.labelAddress,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormAddressField(),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: FormTextLabel(
                  label: AppLocalizations.of(context)!.labelRT,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: FormTextLabel(
                  label: AppLocalizations.of(context)!.labelRW,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              Expanded(child: _FormRTField()),
              SizedBox(width: 16),
              Expanded(child: _FormRWField()),
            ],
          ),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelProvince,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormProvinceField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelCity,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormCityField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelDistrict,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormDistrictField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelVillage,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormVillageField(),
          const SizedBox(height: 16),
          FormTextLabel(
            label: AppLocalizations.of(context)!.labelPostalCode,
            mandatory: true,
          ),
          const SizedBox(height: 8),
          const _FormPostalCodeField(),
          const SizedBox(height: 16),
          SafeArea(
            minimum: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ElevatedButton(
              onPressed: () {
                context.read<AddressBloc>().add(const SubmitAddress());
              },
              child: Text(AppLocalizations.of(context)!.buttonSave),
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
    return BlocBuilder<AddressBloc, AddressState>(
      buildWhen: (previous, current) =>
          previous.fieldAddress != current.fieldAddress,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldAddress.textEditingController,
          hintText: AppLocalizations.of(context)!.labelAddress,
          keyboardType: TextInputType.streetAddress,
          maxLines: 5,
          minLines: 3,
          textInputAction: TextInputAction.next,
          textCapitalization: TextCapitalization.sentences,
          onChanged: (address) =>
              context.read<AddressBloc>().add(OnAddressChanged(address)),
          readOnly: state.status.isSubmissionInProgress,
          errorText: state.fieldAddress.invalid ? 'Silakan isi alamat' : null,
        );
      },
    );
  }
}

class _FormRTField extends StatelessWidget {
  const _FormRTField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      buildWhen: (previous, current) => previous.fieldRT != current.fieldRT,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldRT.textEditingController,
          hintText: AppLocalizations.of(context)!.labelRT,
          keyboardType: TextInputType.number,
          onChanged: (rt) => context.read<AddressBloc>().add(OnRTChanged(rt)),
          readOnly: state.status.isSubmissionInProgress,
          errorText: state.fieldRT.invalid ? 'Silakan isi RT' : null,
        );
      },
    );
  }
}

class _FormRWField extends StatelessWidget {
  const _FormRWField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      buildWhen: (previous, current) => previous.fieldRW != current.fieldRW,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldRW.textEditingController,
          hintText: AppLocalizations.of(context)!.labelRW,
          keyboardType: TextInputType.number,
          onChanged: (rw) => context.read<AddressBloc>().add(OnRWChanged(rw)),
          readOnly: state.status.isSubmissionInProgress,
          errorText: state.fieldRW.invalid ? 'Silakan isi RW' : null,
        );
      },
    );
  }
}

class _FormProvinceField extends StatelessWidget {
  const _FormProvinceField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      buildWhen: (previous, current) =>
          previous.fieldProvince != current.fieldProvince,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldProvince.textEditingController,
          hintText: AppLocalizations.of(context)!.labelProvince,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final dataBloc = context.read<AddressBloc>();
            final bloc = context.read<AdministrativeBloc>();
            bloc.add(const FetchProvince());

            final province = await showSearch(
              context: context,
              delegate: ProvinceSelector(),
            );

            if (province != null) {
              state.fieldProvince.textEditingController.text = province.name;
              dataBloc
                ..add(OnProvinceChanged(province))
                ..add(const OnCityChanged())
                ..add(const OnDistrictChanged())
                ..add(const OnVillageChanged());
            }
          },
          errorText:
              state.fieldProvince.invalid ? 'Silakan isi provinsi' : null,
        );
      },
    );
  }
}

class _FormCityField extends StatelessWidget {
  const _FormCityField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      buildWhen: (previous, current) => previous.fieldCity != current.fieldCity,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldCity.textEditingController,
          hintText: AppLocalizations.of(context)!.labelCity,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final dataBloc = context.read<AddressBloc>();
            if (dataBloc.state.province == null) return;

            final bloc = context.read<AdministrativeBloc>();
            bloc.add(FetchCity(dataBloc.state.province!.code));

            final city = await showSearch(
              context: context,
              delegate: CitySelector(
                provinceCode: dataBloc.state.province!.code,
              ),
            );

            if (city != null) {
              state.fieldCity.textEditingController.text = city.name;
              dataBloc
                ..add(OnCityChanged(city))
                ..add(const OnDistrictChanged())
                ..add(const OnVillageChanged());
            }
          },
          errorText:
              state.fieldProvince.invalid ? 'Silakan isi kota/kabupaten' : null,
        );
      },
    );
  }
}

class _FormDistrictField extends StatelessWidget {
  const _FormDistrictField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      buildWhen: (previous, current) =>
          previous.fieldDistrict != current.fieldDistrict,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldDistrict.textEditingController,
          hintText: AppLocalizations.of(context)!.labelDistrict,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final dataBloc = context.read<AddressBloc>();
            if (dataBloc.state.city == null) return;

            final bloc = context.read<AdministrativeBloc>();
            bloc.add(FetchDistrict(dataBloc.state.city!.code));

            final district = await showSearch(
              context: context,
              delegate: DistrictSelector(
                cityCode: dataBloc.state.city!.code,
              ),
            );

            if (district != null) {
              state.fieldDistrict.textEditingController.text = district.name;
              dataBloc
                ..add(OnDistrictChanged(district))
                ..add(const OnVillageChanged());
            }
          },
          errorText:
              state.fieldProvince.invalid ? 'Silakan isi kecamatan' : null,
        );
      },
    );
  }
}

class _FormVillageField extends StatelessWidget {
  const _FormVillageField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      buildWhen: (previous, current) =>
          previous.fieldVillage != current.fieldVillage,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldVillage.textEditingController,
          hintText: AppLocalizations.of(context)!.labelVillage,
          readOnly: true,
          trailing: const Icon(Icons.keyboard_arrow_down),
          onTap: () async {
            final dataBloc = context.read<AddressBloc>();
            if (dataBloc.state.district == null) return;

            final bloc = context.read<AdministrativeBloc>();
            bloc.add(FetchVillage(dataBloc.state.district!.code));

            final village = await showSearch(
              context: context,
              delegate: VillageSelector(
                districtCode: dataBloc.state.district!.code,
              ),
            );

            if (village != null) {
              state.fieldVillage.textEditingController.text = village.name;
              dataBloc.add(OnVillageChanged(village));
            }
          },
          errorText:
              state.fieldProvince.invalid ? 'Silakan isi kelurahan' : null,
        );
      },
    );
  }
}

class _FormPostalCodeField extends StatelessWidget {
  const _FormPostalCodeField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      buildWhen: (previous, current) =>
          previous.fieldPostalCode != current.fieldPostalCode,
      builder: (context, state) {
        return FormzTextField(
          textEditingController: state.fieldPostalCode.textEditingController,
          hintText: AppLocalizations.of(context)!.labelPostalCode,
          keyboardType: TextInputType.number,
        );
      },
    );
  }
}

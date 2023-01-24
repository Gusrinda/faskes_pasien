import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/core/model/form_text_input.dart';
import 'package:pasien/src/core/model/toast_data.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc({
    required UserModel user,
    required String bearerToken,
    required PersonalDataRepository repository,
  })  : _bearerToken = bearerToken,
        _repository = repository,
        super(
          AddressState(
            user: user,
            fieldAddress: FormTextInput.dirty(value: user.address ?? ''),
            fieldRT: FormTextInput.dirty(value: user.rt ?? ''),
            fieldRW: FormTextInput.dirty(value: user.rw ?? ''),
            fieldProvince: FormTextInput.dirty(value: user.provinsi ?? ''),
            fieldCity: FormTextInput.dirty(value: user.kota ?? ''),
            fieldDistrict: FormTextInput.dirty(value: user.kecamatan ?? ''),
            fieldVillage: FormTextInput.dirty(value: user.kelurahan ?? ''),
            fieldPostalCode: FormTextInput.dirty(value: user.kodePos ?? ''),
          ),
        ) {
    on<OnAddressChanged>(_handleOnAddressChanged);
    on<OnRTChanged>(_handleOnRTChanged);
    on<OnRWChanged>(_handleOnRWChanged);
    on<OnProvinceChanged>(_handleOnProvinceChanged);
    on<OnCityChanged>(_handleOnCityChanged);
    on<OnDistrictChanged>(_handleOnDistrictChanged);
    on<OnVillageChanged>(_handleOnVillageChanged);
    on<OnPostalCodeChanged>(_handleOnPostalCodeChanged);
    on<SubmitAddress>(_handleSubmitAddress);
  }

  final String _bearerToken;
  final PersonalDataRepository _repository;

  FutureOr<void> _handleOnAddressChanged(
      OnAddressChanged event, Emitter<AddressState> emit) {
    final fieldAddress = state.fieldAddress.toDirty(value: event.address);
    final status = Formz.validate([
      fieldAddress,
      state.fieldRT,
      state.fieldRW,
      state.fieldProvince,
      state.fieldCity,
      state.fieldDistrict,
      state.fieldVillage,
      state.fieldPostalCode,
    ]);
    emit(state.copyWith(status: status, fieldAddress: fieldAddress));
  }

  FutureOr<void> _handleOnRTChanged(
      OnRTChanged event, Emitter<AddressState> emit) {
    final fieldRT = state.fieldRT.toDirty(value: event.rt);
    final status = Formz.validate([
      state.fieldAddress,
      fieldRT,
      state.fieldRW,
      state.fieldProvince,
      state.fieldCity,
      state.fieldDistrict,
      state.fieldVillage,
      state.fieldPostalCode,
    ]);
    emit(state.copyWith(status: status, fieldRT: fieldRT));
  }

  FutureOr<void> _handleOnRWChanged(
      OnRWChanged event, Emitter<AddressState> emit) {
    final fieldRW = state.fieldRW.toDirty(value: event.rw);
    final status = Formz.validate([
      state.fieldAddress,
      state.fieldRT,
      fieldRW,
      state.fieldProvince,
      state.fieldCity,
      state.fieldDistrict,
      state.fieldVillage,
      state.fieldPostalCode,
    ]);
    emit(state.copyWith(status: status, fieldRW: fieldRW));
  }

  FutureOr<void> _handleOnProvinceChanged(
      OnProvinceChanged event, Emitter<AddressState> emit) {
    final fieldProvince =
        state.fieldProvince.toDirty(value: event.province.name);
    final status = Formz.validate([
      state.fieldAddress,
      state.fieldRT,
      state.fieldRW,
      fieldProvince,
      state.fieldCity,
      state.fieldDistrict,
      state.fieldVillage,
      state.fieldPostalCode,
    ]);
    emit(state.copyWith(
      status: status,
      fieldProvince: fieldProvince,
      province: event.province,
    ));
  }

  FutureOr<void> _handleOnCityChanged(
      OnCityChanged event, Emitter<AddressState> emit) {
    final fieldCity = state.fieldCity.toDirty(value: event.city?.name);
    final status = Formz.validate([
      state.fieldAddress,
      state.fieldRT,
      state.fieldRW,
      state.fieldProvince,
      fieldCity,
      state.fieldDistrict,
      state.fieldVillage,
      state.fieldPostalCode,
    ]);
    emit(state.copyWith(
      status: status,
      fieldCity: fieldCity,
      city: event.city,
    ));
  }

  FutureOr<void> _handleOnDistrictChanged(
      OnDistrictChanged event, Emitter<AddressState> emit) {
    final fieldDistrict =
        state.fieldDistrict.toDirty(value: event.district?.name);
    final status = Formz.validate([
      state.fieldAddress,
      state.fieldRT,
      state.fieldRW,
      state.fieldProvince,
      state.fieldCity,
      fieldDistrict,
      state.fieldVillage,
      state.fieldPostalCode,
    ]);
    emit(state.copyWith(
      status: status,
      fieldDistrict: fieldDistrict,
      district: event.district,
    ));
  }

  FutureOr<void> _handleOnVillageChanged(
      OnVillageChanged event, Emitter<AddressState> emit) {
    final fieldVillage = state.fieldVillage.toDirty(value: event.village?.name);
    final status = Formz.validate([
      state.fieldAddress,
      state.fieldRT,
      state.fieldRW,
      state.fieldProvince,
      state.fieldCity,
      state.fieldDistrict,
      fieldVillage,
      state.fieldPostalCode,
    ]);
    emit(state.copyWith(
      status: status,
      fieldVillage: fieldVillage,
      village: event.village,
    ));
  }

  FutureOr<void> _handleOnPostalCodeChanged(
      OnPostalCodeChanged event, Emitter<AddressState> emit) {
    final fieldPostalCode =
        state.fieldPostalCode.toDirty(value: event.postalCode);
    final status = Formz.validate([
      state.fieldAddress,
      state.fieldRT,
      state.fieldRW,
      state.fieldProvince,
      state.fieldCity,
      state.fieldDistrict,
      state.fieldVillage,
      fieldPostalCode,
    ]);
    emit(state.copyWith(status: status, fieldPostalCode: fieldPostalCode));
  }

  FutureOr<void> _handleSubmitAddress(
      SubmitAddress event, Emitter<AddressState> emit) async {
    final fieldAddress = state.fieldAddress.toDirty(fromTextController: true);
    final fieldRT = state.fieldRT.toDirty(fromTextController: true);
    final fieldRW = state.fieldRW.toDirty(fromTextController: true);
    final fieldProvince = state.fieldProvince.toDirty(fromTextController: true);
    final fieldCity = state.fieldCity.toDirty(fromTextController: true);
    final fieldDistrict = state.fieldDistrict.toDirty(fromTextController: true);
    final fieldVillage = state.fieldVillage.toDirty(fromTextController: true);
    final fieldPostalCode =
        state.fieldPostalCode.toDirty(fromTextController: true);

    final status = Formz.validate([
      fieldAddress,
      fieldRT,
      fieldRW,
      fieldProvince,
      fieldCity,
      fieldDistrict,
      fieldVillage,
      fieldPostalCode,
    ]);

    if (!status.isValid) {
      emit(state.copyWith(
        status: status,
        fieldAddress: fieldAddress,
        fieldRT: fieldRT,
        fieldRW: fieldRW,
        fieldProvince: fieldProvince,
        fieldCity: fieldCity,
        fieldDistrict: fieldDistrict,
        fieldVillage: fieldVillage,
        fieldPostalCode: fieldPostalCode,
      ));
      return;
    }

    emit(state.copyWith(
      status: FormzStatus.submissionInProgress,
      fieldAddress: fieldAddress,
      fieldRT: fieldRT,
      fieldRW: fieldRW,
      fieldProvince: fieldProvince,
      fieldCity: fieldCity,
      fieldDistrict: fieldDistrict,
      fieldVillage: fieldVillage,
      fieldPostalCode: fieldPostalCode,
    ));

    try {
      final update = AddressModel(
        address: fieldAddress.value,
        rt: fieldRT.value,
        rw: fieldRW.value,
        provinsi: fieldProvince.value,
        kota: fieldCity.value,
        kecamatan: fieldDistrict.value,
        kelurahan: fieldVillage.value,
        kodePos: fieldPostalCode.value,
      );
      final message = await _repository.updateAddress(
        userId: state.user.userId!,
        bearerToken: _bearerToken,
        update: update,
      );
      emit(state.copyWith(
        toastData: ToastData.ok(message),
        status: FormzStatus.submissionSuccess,
      ));
    } on ApiException catch (e) {
      emit(state.copyWith(
        toastData: ToastData.error(e.message),
        status: FormzStatus.submissionFailure,
      ));
    }
  }
}

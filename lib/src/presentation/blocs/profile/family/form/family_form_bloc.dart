import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/core/model/form_text_input.dart';
import 'package:pasien/src/core/model/toast_data.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'family_form_event.dart';
part 'family_form_state.dart';
part 'family_form_bloc.freezed.dart';

class FamilyFormBloc extends Bloc<FamilyFormEvent, FamilyFormState> {
  FamilyFormBloc({
    FamilyModel? family,
    required String bearerToken,
    required PersonalDataRepository repository,
  })  : _bearerToken = bearerToken,
        _repository = repository,
        super(family == null
            ? FamilyFormState.add()
            : FamilyFormState.edit(family)) {
    on<ChangeName>(_onChangeName);
    on<ChangeRelation>(_onChangeRelation);
    on<ChangeStatus>(_onChangeStatus);
    on<ChangeAddress>(_onChangeAddress);
    on<ChangePhone>(_onChangePhone);
    on<ChangeJob>(_onChangeJob);
    on<SubmitForm>(_onSubmitForm);
  }

  final String _bearerToken;
  final PersonalDataRepository _repository;

  FutureOr<void> _onChangeName(
      ChangeName event, Emitter<FamilyFormState> emit) {
    final fieldName = state.fieldName.toDirty(value: event.name);
    final status = Formz.validate([
      fieldName,
      state.fieldRelation,
      state.fieldStatus,
      state.fieldAddress,
      state.fieldPhone,
      state.fieldJob,
    ]);
    emit(state.copyWith(status: status, fieldName: fieldName));
  }

  FutureOr<void> _onChangeRelation(
      ChangeRelation event, Emitter<FamilyFormState> emit) {
    final fieldRelation = state.fieldRelation.toDirty(value: event.relation);
    final status = Formz.validate([
      state.fieldName,
      fieldRelation,
      state.fieldStatus,
      state.fieldAddress,
      state.fieldPhone,
      state.fieldJob,
    ]);
    emit(state.copyWith(status: status, fieldRelation: fieldRelation));
  }

  FutureOr<void> _onChangeStatus(
      ChangeStatus event, Emitter<FamilyFormState> emit) {
    final fieldStatus = state.fieldStatus.toDirty(value: event.status);
    final status = Formz.validate([
      state.fieldName,
      state.fieldRelation,
      fieldStatus,
      state.fieldAddress,
      state.fieldPhone,
      state.fieldJob,
    ]);
    emit(state.copyWith(status: status, fieldStatus: fieldStatus));
  }

  FutureOr<void> _onChangeAddress(
      ChangeAddress event, Emitter<FamilyFormState> emit) {
    final fieldAddress = state.fieldAddress.toDirty(value: event.address);
    final status = Formz.validate([
      state.fieldName,
      state.fieldRelation,
      state.fieldStatus,
      fieldAddress,
      state.fieldPhone,
      state.fieldJob,
    ]);
    emit(state.copyWith(status: status, fieldAddress: fieldAddress));
  }

  FutureOr<void> _onChangePhone(
      ChangePhone event, Emitter<FamilyFormState> emit) {
    final fieldPhone = state.fieldPhone.toDirty(value: event.phone);
    final status = Formz.validate([
      state.fieldName,
      state.fieldRelation,
      state.fieldStatus,
      state.fieldAddress,
      fieldPhone,
      state.fieldJob,
    ]);
    emit(state.copyWith(status: status, fieldPhone: fieldPhone));
  }

  FutureOr<void> _onChangeJob(ChangeJob event, Emitter<FamilyFormState> emit) {
    final fieldJob = state.fieldJob.toDirty(value: event.job);
    final status = Formz.validate([
      state.fieldName,
      state.fieldRelation,
      state.fieldStatus,
      state.fieldAddress,
      state.fieldPhone,
      fieldJob,
    ]);
    emit(state.copyWith(status: status, fieldJob: fieldJob));
  }

  FutureOr<void> _onSubmitForm(
      SubmitForm event, Emitter<FamilyFormState> emit) async {
    final fieldName = state.fieldName.toDirty(fromTextController: true);
    final fieldRelation = state.fieldRelation.toDirty(fromTextController: true);
    final fieldStatus = state.fieldStatus.toDirty(fromTextController: true);
    final fieldAddress = state.fieldAddress.toDirty(fromTextController: true);
    final fieldPhone = state.fieldPhone.toDirty(fromTextController: true);
    final fieldJob = state.fieldJob.toDirty(fromTextController: true);

    final status = Formz.validate([
      fieldName,
      fieldRelation,
      fieldStatus,
      fieldAddress,
      fieldPhone,
    ]);

    if (!status.isValid) {
      emit(state.copyWith(
        status: status,
        fieldName: fieldName,
        fieldRelation: fieldRelation,
        fieldStatus: fieldStatus,
        fieldAddress: fieldAddress,
        fieldPhone: fieldPhone,
        fieldJob: fieldJob,
      ));
      return;
    }

    emit(state.copyWith(
      status: FormzStatus.submissionInProgress,
      fieldName: fieldName,
      fieldRelation: fieldRelation,
      fieldStatus: fieldStatus,
      fieldAddress: fieldAddress,
      fieldPhone: fieldPhone,
      fieldJob: fieldJob,
    ));

    try {
      final data = FamilyContent(
        name: fieldName.value,
        hubungan: fieldRelation.value,
        statusKeluarga: fieldStatus.value,
        address: fieldAddress.value,
        phone: fieldPhone.value,
        pekerjaan: fieldJob.valueIfNotEmpty,
      );
      await _repository.familyAddOrEdit(
        bearerToken: _bearerToken,
        family: data,
        familyUserId: state.family?.qlMUserId,
      );
      emit(state.copyWith(
        toastData: ToastData.ok(
          state.family != null
              ? 'Data berhasil diupdate'
              : 'Data berhasil disimpan',
        ),
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

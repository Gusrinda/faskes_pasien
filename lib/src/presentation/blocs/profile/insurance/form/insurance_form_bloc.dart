import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flimer/flimer.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/core/model/form_text_input.dart';
import 'package:pasien/src/core/model/toast_data.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'insurance_form_event.dart';
part 'insurance_form_state.dart';
part 'insurance_form_bloc.freezed.dart';

class InsuranceFormBloc extends Bloc<InsuranceFormEvent, InsuranceFormState> {
  InsuranceFormBloc({
    InsuranceModel? insurance,
    required String bearerToken,
    required PersonalDataRepository repository,
    required FileRepository fileRepository,
  })  : _bearerToken = bearerToken,
        _repository = repository,
        _fileRepository = fileRepository,
        super(insurance == null
            ? InsuranceFormState.add()
            : InsuranceFormState.edit(insurance)) {
    on<ChangeName>(_onChangeName);
    on<ChangeNumber>(_onChangeNumber);
    on<ChangePaymentMethod>(_onChangePaymentMethod);
    on<ChangeClass>(_onChangeClass);
    on<ChangeCard>(_onChangeCard);
    on<SubmitForm>(_onSubmitForm);
  }

  final String _bearerToken;
  final PersonalDataRepository _repository;
  final FileRepository _fileRepository;

  FutureOr<void> _onChangeName(
      ChangeName event, Emitter<InsuranceFormState> emit) {
    final fieldName = state.fieldName.toDirty(value: event.name);
    final status = Formz.validate([
      fieldName,
      state.fieldNumber,
      state.fieldPaymentMethod,
      state.fieldClass,
    ]);
    emit(state.copyWith(status: status, fieldName: fieldName));
  }

  FutureOr<void> _onChangeNumber(
      ChangeNumber event, Emitter<InsuranceFormState> emit) {
    final fieldNumber = state.fieldNumber.toDirty(value: event.number);
    final status = Formz.validate([
      state.fieldName,
      fieldNumber,
      state.fieldPaymentMethod,
      state.fieldClass,
    ]);
    emit(state.copyWith(status: status, fieldNumber: fieldNumber));
  }

  FutureOr<void> _onChangePaymentMethod(
      ChangePaymentMethod event, Emitter<InsuranceFormState> emit) {
    final fieldPaymentMethod =
        state.fieldPaymentMethod.toDirty(value: event.paymentMethod);
    final status = Formz.validate([
      state.fieldName,
      state.fieldNumber,
      fieldPaymentMethod,
      state.fieldClass,
    ]);
    emit(
        state.copyWith(status: status, fieldPaymentMethod: fieldPaymentMethod));
  }

  FutureOr<void> _onChangeClass(
      ChangeClass event, Emitter<InsuranceFormState> emit) {
    final fieldClass = state.fieldClass.toDirty(value: event.clazz);
    final status = Formz.validate([
      state.fieldName,
      state.fieldNumber,
      state.fieldPaymentMethod,
      fieldClass,
    ]);
    emit(state.copyWith(status: status, fieldClass: fieldClass));
  }

  FutureOr<void> _onChangeCard(
      ChangeCard event, Emitter<InsuranceFormState> emit) {
    emit(state.copyWith(uploadCard: event.card));
  }

  FutureOr<void> _onSubmitForm(
      SubmitForm event, Emitter<InsuranceFormState> emit) async {
    final fieldName = state.fieldName.toDirty(fromTextController: true);
    final fieldNumber = state.fieldNumber.toDirty(fromTextController: true);
    final fieldPaymentMethod =
        state.fieldPaymentMethod.toDirty(fromTextController: true);
    final fieldClass = state.fieldClass.toDirty(fromTextController: true);

    final status = Formz.validate([
      fieldName,
      fieldNumber,
      fieldPaymentMethod,
      fieldClass,
    ]);

    if (!status.isValid) {
      emit(state.copyWith(
        status: status,
        fieldName: fieldName,
        fieldNumber: fieldNumber,
        fieldPaymentMethod: fieldPaymentMethod,
        fieldClass: fieldClass,
      ));
      return;
    }

    if (state.uploadCard == null) {
      emit(state.copyWith(toastData: ToastData.error('Silakan upload kartu')));
      return;
    }

    emit(state.copyWith(
      status: FormzStatus.submissionInProgress,
      fieldName: fieldName,
      fieldNumber: fieldNumber,
      fieldPaymentMethod: fieldPaymentMethod,
      fieldClass: fieldClass,
    ));

    try {
      final imageUrl = await _fileRepository.upload(
        _bearerToken,
        file: state.uploadCard!,
      );

      final data = InsuranceContent(
        name: fieldName.value,
        noCard: fieldNumber.value,
        caraBayar: fieldPaymentMethod.value,
        grade: fieldClass.value,
        imageUrl: imageUrl,
      );
      await _repository.insuranceAddOrEdit(
        bearerToken: _bearerToken,
        insurance: data,
        insuranceUserId: state.insurance?.qlMUserId,
      );
      emit(state.copyWith(
        toastData: ToastData.ok(
          state.insurance != null
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

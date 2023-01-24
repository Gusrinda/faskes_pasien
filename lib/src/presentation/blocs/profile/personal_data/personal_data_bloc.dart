import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/core/model/form_text_input.dart';
import 'package:pasien/src/core/model/toast_data.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'personal_data_event.dart';
part 'personal_data_state.dart';
part 'personal_data_bloc.freezed.dart';

class PersonalDataBloc extends Bloc<PersonalDataEvent, PersonalDataState> {
  PersonalDataBloc({
    required this.user,
    required String bearerToken,
    required UserRepository userRepository,
  })  : _bearerToken = bearerToken,
        _userRepository = userRepository,
        super(
          PersonalDataState(
            fieldUsername: FormTextInput.dirty(value: user.username),
            fieldFirstName: FormTextInput.dirty(value: user.namePrefix ?? ''),
            fieldLastName: FormTextInput.dirty(value: user.nameSuffix ?? ''),
            fieldGender: FormTextInput.dirty(value: user.gender ?? ''),
            fieldPlaceOfBirth:
                FormTextInput.dirty(value: user.birthPlace ?? ''),
            dateOfBirth: user.birthDate != null
                ? kMySqlDateFormat.parse(user.birthDate!)
                : null,
            fieldDateOfBirth: FormTextInput.dirty(
                value: user.birthDate != null
                    ? kDateShortMonthFormat
                        .format(kMySqlDateFormat.parse(user.birthDate!))
                    : ''),
            fieldEmail: FormTextInput.dirty(value: user.email),
            fieldPhone: FormTextInput.dirty(value: user.phone),
            fieldNoRM: FormTextInput.dirty(value: user.noRm ?? ''),
            fieldNIK: FormTextInput.dirty(value: user.nik),
            fieldNoPassport: FormTextInput.dirty(value: user.noPassport ?? ''),
            fieldCitizenship:
                FormTextInput.dirty(value: user.kewarganegaraan ?? ''),
            fieldEthnic: FormTextInput.dirty(value: user.suku ?? ''),
            fieldReligion: FormTextInput.dirty(value: user.agama ?? ''),
            fieldEducation: FormTextInput.dirty(value: user.pendidikan ?? ''),
            fieldJob: FormTextInput.dirty(value: user.pekerjaan ?? ''),
            fieldMaritalStatus:
                FormTextInput.dirty(value: user.statusPernikahan ?? ''),
            fieldBloodType:
                FormTextInput.dirty(value: user.golonganDarah ?? ''),
            fieldLanguage: FormTextInput.dirty(value: user.bahasa ?? ''),
          ),
        ) {
    on<ChangeDateOfBirth>(_onChangeDateOfBirth);
    on<ChangeGender>(_onChangeGender);
    on<ChangePlaceOfBirth>(_onChangePlaceOfBirth);
    on<ChangeCitizenship>(_onChangeCitizenship);
    on<ChangeReligion>(_onChangeReligion);
    on<ChangeEducation>(_onChangeEducation);
    on<ChangeJob>(_onChangeJob);
    on<ChangeMaritalStatus>(_onChangeMaritalStatus);
    on<ChangeBloodType>(_onChangeBloodType);
    on<ChangeLanguage>(_onChangeLanguage);
    on<ValidateForm1>(_onValidateForm1);
    on<SubmitUpdatePersonalData>(_onSubmitUpdatePersonalData);
  }

  final UserModel user;
  final String _bearerToken;
  final UserRepository _userRepository;

  FutureOr<void> _onChangeDateOfBirth(
      ChangeDateOfBirth event, Emitter<PersonalDataState> emit) {
    final dateOfBirth = kDateShortMonthFormat.format(event.dateOfBirth);
    state.fieldDateOfBirth.textEditingController.text = dateOfBirth;
    final fieldDateOfBirth = state.fieldDateOfBirth.toDirty(value: dateOfBirth);
    emit(state.copyWith(
      dateOfBirth: event.dateOfBirth,
      fieldDateOfBirth: fieldDateOfBirth,
    ));
  }

  FutureOr<void> _onChangeGender(
      ChangeGender event, Emitter<PersonalDataState> emit) {
    state.fieldGender.textEditingController.text = event.gender;
    final fieldGender = state.fieldGender.toDirty(value: event.gender);
    emit(state.copyWith(fieldGender: fieldGender));
  }

  FutureOr<void> _onChangePlaceOfBirth(
      ChangePlaceOfBirth event, Emitter<PersonalDataState> emit) {
    state.fieldPlaceOfBirth.textEditingController.text = event.placeOfBirth;
    final fieldPlaceOfBirth =
        state.fieldPlaceOfBirth.toDirty(value: event.placeOfBirth);
    emit(state.copyWith(fieldPlaceOfBirth: fieldPlaceOfBirth));
  }

  FutureOr<void> _onChangeCitizenship(
      ChangeCitizenship event, Emitter<PersonalDataState> emit) {
    state.fieldCitizenship.textEditingController.text = event.citizenship;
    final fieldCitizenship =
        state.fieldCitizenship.toDirty(value: event.citizenship);
    emit(state.copyWith(fieldCitizenship: fieldCitizenship));
  }

  FutureOr<void> _onChangeReligion(
      ChangeReligion event, Emitter<PersonalDataState> emit) {
    state.fieldReligion.textEditingController.text = event.religion;
    final fieldReligion = state.fieldReligion.toDirty(value: event.religion);
    emit(state.copyWith(fieldReligion: fieldReligion));
  }

  FutureOr<void> _onChangeEducation(
      ChangeEducation event, Emitter<PersonalDataState> emit) {
    state.fieldEducation.textEditingController.text = event.education;
    final fieldEducation = state.fieldEducation.toDirty(value: event.education);
    emit(state.copyWith(fieldEducation: fieldEducation));
  }

  FutureOr<void> _onChangeJob(
      ChangeJob event, Emitter<PersonalDataState> emit) {
    state.fieldJob.textEditingController.text = event.job;
    final fieldJob = state.fieldJob.toDirty(value: event.job);
    emit(state.copyWith(fieldJob: fieldJob));
  }

  FutureOr<void> _onChangeMaritalStatus(
      ChangeMaritalStatus event, Emitter<PersonalDataState> emit) {
    state.fieldMaritalStatus.textEditingController.text = event.maritalStatus;
    final fieldMaritalStatus =
        state.fieldMaritalStatus.toDirty(value: event.maritalStatus);
    emit(state.copyWith(fieldMaritalStatus: fieldMaritalStatus));
  }

  FutureOr<void> _onChangeBloodType(
      ChangeBloodType event, Emitter<PersonalDataState> emit) {
    state.fieldBloodType.textEditingController.text = event.blood;
    final fieldBloodType = state.fieldBloodType.toDirty(value: event.blood);
    emit(state.copyWith(fieldBloodType: fieldBloodType));
  }

  FutureOr<void> _onChangeLanguage(
      ChangeLanguage event, Emitter<PersonalDataState> emit) {
    state.fieldLanguage.textEditingController.text = event.language;
    final fieldLanguage = state.fieldLanguage.toDirty(value: event.language);
    emit(state.copyWith(fieldLanguage: fieldLanguage));
  }

  FutureOr<void> _onSubmitUpdatePersonalData(
      SubmitUpdatePersonalData event, Emitter<PersonalDataState> emit) async {
    final fieldUsername = state.fieldUsername.toDirty(fromTextController: true);
    final fieldFirstName =
        state.fieldFirstName.toDirty(fromTextController: true);
    final fieldLastName = state.fieldLastName.toDirty(fromTextController: true);
    final fieldGender = state.fieldGender.toDirty(fromTextController: true);
    final fieldPlaceOfBirth =
        state.fieldPlaceOfBirth.toDirty(fromTextController: true);
    final fieldDateOfBirth =
        state.fieldDateOfBirth.toDirty(fromTextController: true);
    final fieldEmail = state.fieldEmail.toDirty(fromTextController: true);
    final fieldPhone = state.fieldPhone.toDirty(fromTextController: true);
    final fieldNoRM = state.fieldNoRM.toDirty(fromTextController: true);
    final fieldNIK = state.fieldNIK.toDirty(fromTextController: true);
    final fieldNoPassport =
        state.fieldNoPassport.toDirty(fromTextController: true);
    final fieldCitizenship =
        state.fieldCitizenship.toDirty(fromTextController: true);
    final fieldEthnic = state.fieldEthnic.toDirty(fromTextController: true);
    final fieldReligion = state.fieldReligion.toDirty(fromTextController: true);
    final fieldEducation =
        state.fieldEducation.toDirty(fromTextController: true);
    final fieldJob = state.fieldJob.toDirty(fromTextController: true);
    final fieldMaritalStatus =
        state.fieldMaritalStatus.toDirty(fromTextController: true);
    final fieldBloodType =
        state.fieldBloodType.toDirty(fromTextController: true);
    final fieldLanguage = state.fieldLanguage.toDirty(fromTextController: true);

    final status = Formz.validate([
      fieldUsername,
      fieldFirstName,
      fieldLastName,
      fieldGender,
      fieldPlaceOfBirth,
      fieldDateOfBirth,
      fieldEmail,
      fieldPhone,
      // fieldNoRM,
      fieldNIK,
      // fieldNoPassport,
      // fieldCitizenship,
      // fieldEthnic,
      // fieldReligion,
      // fieldEducation,
      // fieldJob,
      // fieldMaritalStatus,
      fieldBloodType,
      // fieldLanguage,
    ]);
    if (!status.isValid) {
      emit(state.copyWith(
        status: status,
        fieldUsername: fieldUsername,
        fieldFirstName: fieldFirstName,
        fieldLastName: fieldLastName,
        fieldGender: fieldGender,
        fieldPlaceOfBirth: fieldPlaceOfBirth,
        fieldDateOfBirth: fieldDateOfBirth,
        fieldEmail: fieldEmail,
        fieldPhone: fieldPhone,
        fieldNoRM: fieldNoRM,
        fieldNIK: fieldNIK,
        fieldNoPassport: fieldNoPassport,
        fieldCitizenship: fieldCitizenship,
        fieldEthnic: fieldEthnic,
        fieldReligion: fieldReligion,
        fieldEducation: fieldEducation,
        fieldJob: fieldJob,
        fieldMaritalStatus: fieldMaritalStatus,
        fieldBloodType: fieldBloodType,
        fieldLanguage: fieldLanguage,
      ));
      return;
    }

    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final update = UserModel(
        userId: user.id,
        username: user.username,
        email: user.email,
        id: user.id,
        nik: user.nik,
        phone: user.phone,
        name: user.name,
        namePrefix: fieldFirstName.value,
        nameSuffix: fieldLastName.value,
        gender: fieldGender.value,
        birthPlace: fieldPlaceOfBirth.value,
        birthDate: state.dateOfBirth != null
            ? kMySqlDateFormat.format(state.dateOfBirth!)
            : null,
        noRm: fieldNoRM.valueIfNotEmpty,
        noPassport: fieldNoPassport.valueIfNotEmpty,
        kewarganegaraan: fieldCitizenship.valueIfNotEmpty,
        suku: fieldEthnic.valueIfNotEmpty,
        agama: fieldReligion.valueIfNotEmpty,
        pendidikan: fieldEducation.valueIfNotEmpty,
        pekerjaan: fieldJob.valueIfNotEmpty,
        statusPernikahan: fieldMaritalStatus.valueIfNotEmpty,
        golonganDarah: fieldBloodType.value,
        bahasa: fieldLanguage.valueIfNotEmpty,
      );
      await _userRepository.update(_bearerToken, update);
      emit(state.copyWith(
        toastData: ToastData.ok('Data diri telah diupdate'),
        status: FormzStatus.submissionSuccess,
      ));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      String message = 'Gagal melakukan update data diri';
      if (e is ApiException) {
        message = e.message;
      } else if (e is DioError) {
        message = e.message;
      }
      emit(state.copyWith(
        toastData: ToastData.error(message),
        status: FormzStatus.submissionFailure,
      ));
    }
  }

  FutureOr<void> _onValidateForm1(
      ValidateForm1 event, Emitter<PersonalDataState> emit) async {
    final fieldUsername = state.fieldUsername.toDirty(fromTextController: true);
    final fieldFirstName =
        state.fieldFirstName.toDirty(fromTextController: true);
    final fieldLastName = state.fieldLastName.toDirty(fromTextController: true);
    final fieldGender = state.fieldGender.toDirty(fromTextController: true);
    final fieldPlaceOfBirth =
        state.fieldPlaceOfBirth.toDirty(fromTextController: true);
    final fieldDateOfBirth =
        state.fieldDateOfBirth.toDirty(fromTextController: true);
    final fieldEmail = state.fieldEmail.toDirty(fromTextController: true);
    final fieldPhone = state.fieldPhone.toDirty(fromTextController: true);

    final status = Formz.validate([
      fieldUsername,
      fieldFirstName,
      fieldLastName,
      fieldGender,
      fieldPlaceOfBirth,
      fieldDateOfBirth,
      fieldEmail,
      fieldPhone,
    ]);

    emit(state.copyWith(
      status1: status,
      status: status,
      fieldUsername: fieldUsername,
      fieldFirstName: fieldFirstName,
      fieldLastName: fieldLastName,
      fieldGender: fieldGender,
      fieldPlaceOfBirth: fieldPlaceOfBirth,
      fieldDateOfBirth: fieldDateOfBirth,
      fieldEmail: fieldEmail,
      fieldPhone: fieldPhone,
    ));
  }
}

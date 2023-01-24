import 'dart:async';

import 'package:pasien/src/core/model/form_text_input.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({
    required this.userRepository,
  }) : super(RegisterState(
          fieldName: FormTextInput.pure(),
          fieldUsername: FormTextInput.pure(),
          fieldEmail: FormTextInput.pure(),
          fieldNik: FormTextInput.pure(),
          fieldPhone: FormTextInput.pure(),
          fieldPassword: FormTextInput.pure(),
          fieldConfirmPassword: FormTextInput.pure(),
        )) {
    on<OnNameChanged>(_onOnNameChanged);
    on<OnUsernameChanged>(_onOnUsernameChanged);
    on<OnNikChanged>(_onOnNikChanged);
    on<OnEmailChanged>(_onOnEmailChanged);
    on<OnPhoneChanged>(_onOnPhoneChanged);
    on<OnPhoneCountryDataChanged>(_onOnPhoneCountryDataChanged);
    on<OnPasswordChanged>(_onOnPasswordChanged);
    on<OnPasswordConfirmationChanged>(_onOnPasswordConfirmationChanged);
    on<TogglePasswordObscured>(_onTogglePasswordObscured);
    on<TogglePasswordConfirmationObscured>(
        _onTogglePasswordConfirmationObscured);
    on<SubmitRegister>(_onSubmitRegister);
  }

  final UserRepository userRepository;

  FutureOr<void> _onOnNameChanged(
      OnNameChanged event, Emitter<RegisterState> emit) {
    final fieldName = state.fieldName.toDirty(value: event.name);
    emit(state.copyWith(
      status: Formz.validate([
        fieldName,
        // state.fieldUsername,
        state.fieldEmail,
        state.fieldNik,
        state.fieldPhone,
        state.fieldPassword,
        state.fieldConfirmPassword,
      ]),
      fieldName: fieldName,
    ));
  }

  FutureOr<void> _onOnUsernameChanged(
      OnUsernameChanged event, Emitter<RegisterState> emit) {
    final fieldUsername = state.fieldUsername.toDirty(value: event.username);
    emit(state.copyWith(
      status: Formz.validate([
        state.fieldName,
        fieldUsername,
        state.fieldEmail,
        state.fieldNik,
        state.fieldPhone,
        state.fieldPassword,
        state.fieldConfirmPassword,
      ]),
      fieldUsername: fieldUsername,
    ));
  }

  FutureOr<void> _onOnNikChanged(
      OnNikChanged event, Emitter<RegisterState> emit) {
    final fieldNik = state.fieldNik.toDirty(value: event.nik);
    emit(state.copyWith(
      status: Formz.validate([
        state.fieldName,
        // state.fieldUsername,
        state.fieldEmail,
        fieldNik,
        state.fieldPhone,
        state.fieldPassword,
        state.fieldConfirmPassword,
      ]),
      fieldNik: fieldNik,
    ));
  }

  FutureOr<void> _onOnEmailChanged(
      OnEmailChanged event, Emitter<RegisterState> emit) {
    final fieldEmail = state.fieldEmail.toDirty(value: event.email);
    emit(state.copyWith(
      status: Formz.validate([
        state.fieldName,
        // state.fieldUsername,
        fieldEmail,
        state.fieldNik,
        state.fieldPhone,
        state.fieldPassword,
        state.fieldConfirmPassword,
      ]),
      fieldEmail: fieldEmail,
    ));
  }

  FutureOr<void> _onOnPhoneChanged(
      OnPhoneChanged event, Emitter<RegisterState> emit) {
    if (event.phone.startsWith('0')) {
      final newValue = '62${event.phone.substring(1)}';
      final phoneController = state.fieldPhone.textEditingController;
      state.fieldPhone.textEditingController.value =
          phoneController.value.copyWith(
        text: newValue,
        selection: TextSelection.collapsed(offset: newValue.length),
      );
    }
    final fieldPhone = state.fieldPhone.toDirty(fromTextController: true);
    emit(state.copyWith(
      status: Formz.validate([
        state.fieldName,
        // state.fieldUsername,
        state.fieldEmail,
        state.fieldNik,
        fieldPhone,
        state.fieldPassword,
        state.fieldConfirmPassword,
      ]),
      fieldPhone: fieldPhone,
    ));
  }

  FutureOr<void> _onOnPhoneCountryDataChanged(
      OnPhoneCountryDataChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(phoneCountryData: event.phoneCountryData));
  }

  FutureOr<void> _onOnPasswordChanged(
      OnPasswordChanged event, Emitter<RegisterState> emit) {
    final fieldPassword = state.fieldPassword.toDirty(value: event.password);
    emit(state.copyWith(
      status: Formz.validate([
        state.fieldName,
        // state.fieldUsername,
        state.fieldEmail,
        state.fieldNik,
        state.fieldPhone,
        fieldPassword,
        state.fieldConfirmPassword,
      ]),
      fieldPassword: fieldPassword,
    ));
  }

  FutureOr<void> _onOnPasswordConfirmationChanged(
      OnPasswordConfirmationChanged event, Emitter<RegisterState> emit) {
    final fieldConfirmPassword =
        state.fieldConfirmPassword.toDirty(value: event.password);
    emit(state.copyWith(
      status: Formz.validate([
        state.fieldName,
        // state.fieldUsername,
        state.fieldEmail,
        state.fieldNik,
        state.fieldPhone,
        state.fieldPassword,
        fieldConfirmPassword,
      ]),
      fieldConfirmPassword: fieldConfirmPassword,
    ));
  }

  FutureOr<void> _onTogglePasswordObscured(
      TogglePasswordObscured event, Emitter<RegisterState> emit) {
    emit(state.copyWith(obscurePassword: event.obscure));
  }

  FutureOr<void> _onTogglePasswordConfirmationObscured(
      TogglePasswordConfirmationObscured event, Emitter<RegisterState> emit) {
    emit(state.copyWith(obscureConfirmPassword: event.obscure));
  }

  FutureOr<void> _onSubmitRegister(
      SubmitRegister event, Emitter<RegisterState> emit) async {
    final fieldName = state.fieldName.pure
        ? state.fieldName.toDirty(fromTextController: true)
        : state.fieldName;
    // final fieldUsername = state.fieldUsername.pure
    //     ? state.fieldUsername.toDirty(fromTextController: true)
    //     : state.fieldUsername;
    final fieldNik = state.fieldNik.pure
        ? state.fieldNik.toDirty(fromTextController: true)
        : state.fieldNik;
    final fieldPhone = state.fieldPhone.pure
        ? state.fieldPhone.toDirty(fromTextController: true)
        : state.fieldPhone;
    final fieldEmail = state.fieldEmail.pure
        ? state.fieldEmail.toDirty(fromTextController: true)
        : state.fieldEmail;
    final fieldPassword = state.fieldPassword.pure
        ? state.fieldPassword.toDirty(fromTextController: true)
        : state.fieldPassword;
    final fieldConfirmPassword = state.fieldConfirmPassword.pure
        ? state.fieldConfirmPassword.toDirty(fromTextController: true)
        : state.fieldConfirmPassword;
    final status = Formz.validate([
      fieldName,
      // fieldUsername,
      fieldNik,
      fieldPhone,
      fieldEmail,
      fieldPassword,
      fieldConfirmPassword,
    ]);
    if (!status.isValid) {
      emit(state.copyWith(
        status: status,
        fieldName: fieldName,
        // fieldUsername: fieldUsername,
        fieldNik: fieldNik,
        fieldPhone: fieldPhone,
        fieldEmail: fieldEmail,
        fieldPassword: fieldPassword,
        fieldConfirmPassword: fieldConfirmPassword,
      ));
      return;
    }

    if (fieldPassword.value != fieldConfirmPassword.value) return;

    emit(state.copyWith(error: null, status: FormzStatus.submissionInProgress));
    try {
      final name = state.fieldName.value;
      final nik = state.fieldNik.value;
      final phone = state.fieldPhone.value;
      final email = state.fieldEmail.value;
      final password = state.fieldPassword.value;
      final registerUserModel = await userRepository.register(
        name: name,
        nik: nik,
        email: email,
        phone: phone,
        password: password,
      );
      emit(state.copyWith(
        registerUserModel: registerUserModel,
        status: FormzStatus.submissionSuccess,
      ));
    } on ApiException catch (e) {
      final errors = e.errors;
      if (errors is List) {
        String error = '${e.message} : ';
        for (var e in errors) {
          error = '$error\n- $e';
        }
        return emit(state.copyWith(
          error: error,
          status: FormzStatus.submissionFailure,
        ));
      }

      emit(state.copyWith(
        error: e.message,
        status: FormzStatus.submissionFailure,
      ));
    }
  }
}

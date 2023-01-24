import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/core/model/form_text_input.dart';
import 'package:pasien/src/core/model/toast_data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc({
    required this.email,
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(ForgotPasswordState(
          fieldPassword: FormTextInput.pure(),
          fieldConfirmPassword: FormTextInput.pure(),
          fieldOtp: FormTextInput.pure(),
        )) {
    on<ResetError>((event, emit) => emit(state.copyWith(toastData: null)));
    on<RequestResetPassword>(_onRequestResetPassword);
    on<RequestChangePassword>(_onRequestChangePassword);
    on<OnPasswordChanged>(_onOnPasswordChanged);
    on<OnPasswordConfirmationChanged>(_onOnPasswordConfirmationChanged);
    on<TogglePasswordObscured>(_onTogglePasswordObscured);
    on<TogglePasswordConfirmationObscured>(
        _onTogglePasswordConfirmationObscured);
    on<OnOTPChanged>(_onOnOTPChanged);
  }

  final String email;
  final UserRepository _userRepository;

  FutureOr<void> _onRequestResetPassword(
      RequestResetPassword event, Emitter<ForgotPasswordState> emit) async {
    emit(state.copyWith(
      toastData: null,
      status: FormzStatus.submissionInProgress,
    ));
    try {
      final message = await _userRepository.forgotPassword(identity: email);
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

  FutureOr<void> _onRequestChangePassword(
      RequestChangePassword event, Emitter<ForgotPasswordState> emit) async {
    emit(state.copyWith(
      toastData: null,
      statusChange: FormzStatus.submissionInProgress,
    ));

    final fieldPassword = state.fieldPassword.pure
        ? state.fieldPassword.toDirty(fromTextController: true)
        : state.fieldPassword;
    final fieldConfirmPassword = state.fieldConfirmPassword.pure
        ? state.fieldConfirmPassword.toDirty(fromTextController: true)
        : state.fieldConfirmPassword;
    final fieldOtp = state.fieldOtp.pure
        ? state.fieldOtp.toDirty(fromTextController: true)
        : state.fieldOtp;

    final statusChange = Formz.validate([
      fieldPassword,
      fieldConfirmPassword,
      fieldOtp,
    ]);

    if (!statusChange.isValid) {
      emit(state.copyWith(
        statusChange: statusChange,
        fieldPassword: fieldPassword,
        fieldConfirmPassword: fieldConfirmPassword,
        fieldOtp: fieldOtp,
      ));
      return;
    }

    emit(state.copyWith(
      statusChange: FormzStatus.submissionInProgress,
      fieldPassword: fieldPassword,
      fieldConfirmPassword: fieldConfirmPassword,
      fieldOtp: fieldOtp,
    ));

    try {
      final message = await _userRepository.changePassword(
        identity: email,
        password: fieldPassword.value,
        otp: fieldOtp.value,
      );
      emit(state.copyWith(
        toastData: ToastData.ok(message),
        statusChange: FormzStatus.submissionSuccess,
      ));
    } on ApiException catch (e) {
      emit(state.copyWith(
        toastData: ToastData.error(e.message),
        statusChange: FormzStatus.submissionFailure,
      ));
    }
  }

  FutureOr<void> _onOnPasswordChanged(
      OnPasswordChanged event, Emitter<ForgotPasswordState> emit) {
    final fieldPassword = state.fieldPassword.toDirty(value: event.password);
    emit(state.copyWith(
      status: Formz.validate([
        fieldPassword,
        state.fieldConfirmPassword,
        state.fieldOtp,
      ]),
      fieldPassword: fieldPassword,
    ));
  }

  FutureOr<void> _onOnPasswordConfirmationChanged(
      OnPasswordConfirmationChanged event, Emitter<ForgotPasswordState> emit) {
    final fieldConfirmPassword =
        state.fieldConfirmPassword.toDirty(value: event.password);
    emit(state.copyWith(
      status: Formz.validate([
        state.fieldPassword,
        fieldConfirmPassword,
        state.fieldOtp,
      ]),
      fieldConfirmPassword: fieldConfirmPassword,
    ));
  }

  FutureOr<void> _onTogglePasswordObscured(
      TogglePasswordObscured event, Emitter<ForgotPasswordState> emit) {
    emit(state.copyWith(obscurePassword: event.obscure));
  }

  FutureOr<void> _onTogglePasswordConfirmationObscured(
      TogglePasswordConfirmationObscured event,
      Emitter<ForgotPasswordState> emit) {
    emit(state.copyWith(obscureConfirmPassword: event.obscure));
  }

  FutureOr<void> _onOnOTPChanged(
      OnOTPChanged event, Emitter<ForgotPasswordState> emit) {
    final fieldOtp = state.fieldOtp.toDirty(value: event.otp);
    emit(state.copyWith(
      status: Formz.validate([
        state.fieldPassword,
        state.fieldConfirmPassword,
        fieldOtp,
      ]),
      fieldOtp: fieldOtp,
    ));
  }
}

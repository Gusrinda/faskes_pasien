import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/core/model/form_text_input.dart';
import 'package:pasien/src/core/model/toast_data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'register_verification_event.dart';
part 'register_verification_state.dart';
part 'register_verification_bloc.freezed.dart';

class RegisterVerificationBloc
    extends Bloc<RegisterVerificationEvent, RegisterVerificationState> {
  RegisterVerificationBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(RegisterVerificationState(fieldOTP: FormTextInput.pure())) {
    on<InputOTP>((event, emit) {
      final fieldOTP = state.fieldOTP.toDirty(value: event.otp);
      emit(state.copyWith(fieldOTP: fieldOTP, status: FormzStatus.pure));
    });
    on<ResetToastData>((event, emit) {
      emit(state.copyWith(toastData: null, status: FormzStatus.pure));
    });
    on<SubmitVerification>(_onSubmitVerification);
  }

  final UserRepository _userRepository;

  FutureOr<void> _onSubmitVerification(
      SubmitVerification event, Emitter<RegisterVerificationState> emit) async {
    emit(state.copyWith(
      toastData: null,
      status: FormzStatus.submissionInProgress,
    ));
    try {
      final otp = state.fieldOTP.value;
      final message = await _userRepository.registerVerification(otp: otp);
      emit(state.copyWith(
        toastData: ToastData.ok(message),
        status: FormzStatus.submissionSuccess,
      ));
    } catch (e) {
      String message = 'Kode OTP Anda tidak valid';
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
}

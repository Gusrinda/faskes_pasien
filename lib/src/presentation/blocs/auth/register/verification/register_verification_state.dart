part of 'register_verification_bloc.dart';

@freezed
class RegisterVerificationState with _$RegisterVerificationState {
  const factory RegisterVerificationState({
    @Default(FormzStatus.pure) FormzStatus status,
    required FormTextInput fieldOTP,
    ToastData? toastData,
  }) = _RegisterVerificationState;
}

part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(FormzStatus.pure) FormzStatus statusChange,
    required FormTextInput fieldPassword,
    required FormTextInput fieldConfirmPassword,
    required FormTextInput fieldOtp,
    @Default(true) bool obscurePassword,
    @Default(true) bool obscureConfirmPassword,
    ToastData? toastData,
  }) = _ForgotPasswordState;
}

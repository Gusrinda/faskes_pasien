part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(FormzStatus.pure) FormzStatus status,
    required FormTextInput fieldName,
    required FormTextInput fieldUsername,
    required FormTextInput fieldEmail,
    required FormTextInput fieldNik,
    PhoneCountryData? phoneCountryData,
    required FormTextInput fieldPhone,
    required FormTextInput fieldPassword,
    required FormTextInput fieldConfirmPassword,
    @Default(true) bool obscurePassword,
    @Default(true) bool obscureConfirmPassword,
    RegisterUserModel? registerUserModel,
    String? error,
  }) = _RegisterState;
}

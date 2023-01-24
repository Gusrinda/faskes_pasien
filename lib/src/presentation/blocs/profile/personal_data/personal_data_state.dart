part of 'personal_data_bloc.dart';

@freezed
class PersonalDataState with _$PersonalDataState {
  const factory PersonalDataState({
    @Default(FormzStatus.pure) FormzStatus status1,
    @Default(FormzStatus.pure) FormzStatus status,
    required FormTextInput fieldUsername,
    required FormTextInput fieldFirstName,
    required FormTextInput fieldLastName,
    required FormTextInput fieldGender,
    required FormTextInput fieldPlaceOfBirth,
    required FormTextInput fieldDateOfBirth,
    DateTime? dateOfBirth,
    required FormTextInput fieldEmail,
    required FormTextInput fieldPhone,
    required FormTextInput fieldNoRM,
    required FormTextInput fieldNIK,
    required FormTextInput fieldNoPassport,
    required FormTextInput fieldCitizenship,
    required FormTextInput fieldEthnic,
    required FormTextInput fieldReligion,
    required FormTextInput fieldEducation,
    required FormTextInput fieldJob,
    required FormTextInput fieldMaritalStatus,
    required FormTextInput fieldBloodType,
    required FormTextInput fieldLanguage,
    ToastData? toastData,
  }) = _PersonalDataState;
}

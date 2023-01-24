part of 'personal_data_bloc.dart';

abstract class PersonalDataEvent extends Equatable {
  const PersonalDataEvent();
}

class ValidateForm1 extends PersonalDataEvent {
  const ValidateForm1();
  @override
  List<Object?> get props => [];
}

class SubmitUpdatePersonalData extends PersonalDataEvent {
  const SubmitUpdatePersonalData();
  @override
  List<Object?> get props => [];
}

class ChangeDateOfBirth extends PersonalDataEvent {
  const ChangeDateOfBirth(this.dateOfBirth);
  final DateTime dateOfBirth;
  @override
  List<Object?> get props => [dateOfBirth];
}

class ChangeGender extends PersonalDataEvent {
  const ChangeGender(this.gender);
  final String gender;
  @override
  List<Object?> get props => [gender];
}

class ChangePlaceOfBirth extends PersonalDataEvent {
  const ChangePlaceOfBirth(this.placeOfBirth);
  final String placeOfBirth;
  @override
  List<Object?> get props => [placeOfBirth];
}

class ChangeCitizenship extends PersonalDataEvent {
  const ChangeCitizenship(this.citizenship);
  final String citizenship;
  @override
  List<Object?> get props => [citizenship];
}

class ChangeReligion extends PersonalDataEvent {
  const ChangeReligion(this.religion);
  final String religion;
  @override
  List<Object?> get props => [religion];
}

class ChangeEducation extends PersonalDataEvent {
  const ChangeEducation(this.education);
  final String education;
  @override
  List<Object?> get props => [education];
}

class ChangeJob extends PersonalDataEvent {
  const ChangeJob(this.job);
  final String job;
  @override
  List<Object?> get props => [job];
}

class ChangeMaritalStatus extends PersonalDataEvent {
  const ChangeMaritalStatus(this.maritalStatus);
  final String maritalStatus;
  @override
  List<Object?> get props => [maritalStatus];
}

class ChangeBloodType extends PersonalDataEvent {
  const ChangeBloodType(this.blood);
  final String blood;
  @override
  List<Object?> get props => [blood];
}

class ChangeLanguage extends PersonalDataEvent {
  const ChangeLanguage(this.language);
  final String language;
  @override
  List<Object?> get props => [language];
}

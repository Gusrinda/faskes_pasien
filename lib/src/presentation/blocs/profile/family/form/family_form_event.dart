part of 'family_form_bloc.dart';

abstract class FamilyFormEvent extends Equatable {
  const FamilyFormEvent();
}

class ChangeName extends FamilyFormEvent {
  const ChangeName(this.name);
  final String name;
  @override
  List<Object?> get props => [name];
}

class ChangeRelation extends FamilyFormEvent {
  const ChangeRelation(this.relation);
  final String relation;
  @override
  List<Object?> get props => [relation];
}

class ChangeStatus extends FamilyFormEvent {
  const ChangeStatus(this.status);
  final String status;
  @override
  List<Object?> get props => [status];
}

class ChangeAddress extends FamilyFormEvent {
  const ChangeAddress(this.address);
  final String address;
  @override
  List<Object?> get props => [address];
}

class ChangePhone extends FamilyFormEvent {
  const ChangePhone(this.phone);
  final String phone;
  @override
  List<Object?> get props => [phone];
}

class ChangeJob extends FamilyFormEvent {
  const ChangeJob(this.job);
  final String job;
  @override
  List<Object?> get props => [job];
}

class SubmitForm extends FamilyFormEvent {
  const SubmitForm();
  @override
  List<Object?> get props => [];
}

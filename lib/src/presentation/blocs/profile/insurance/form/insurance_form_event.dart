part of 'insurance_form_bloc.dart';

abstract class InsuranceFormEvent extends Equatable {
  const InsuranceFormEvent();
}

class ChangeName extends InsuranceFormEvent {
  const ChangeName(this.name);
  final String name;
  @override
  List<Object?> get props => [name];
}

class ChangeNumber extends InsuranceFormEvent {
  const ChangeNumber(this.number);
  final String number;
  @override
  List<Object?> get props => [number];
}

class ChangePaymentMethod extends InsuranceFormEvent {
  const ChangePaymentMethod(this.paymentMethod);
  final String paymentMethod;
  @override
  List<Object?> get props => [paymentMethod];
}

class ChangeClass extends InsuranceFormEvent {
  const ChangeClass(this.clazz);
  final String clazz;
  @override
  List<Object?> get props => [clazz];
}

class ChangeCard extends InsuranceFormEvent {
  const ChangeCard(this.card);
  final XFile card;
  @override
  List<Object?> get props => [card];
}

class SubmitForm extends InsuranceFormEvent {
  const SubmitForm();
  @override
  List<Object?> get props => [];
}

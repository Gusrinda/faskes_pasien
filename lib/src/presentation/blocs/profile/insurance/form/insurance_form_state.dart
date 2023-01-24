part of 'insurance_form_bloc.dart';

@freezed
class InsuranceFormState with _$InsuranceFormState {
  const factory InsuranceFormState({
    InsuranceModel? insurance,
    @Default(FormzStatus.pure) FormzStatus status,
    required FormTextInput fieldName,
    required FormTextInput fieldNumber,
    required FormTextInput fieldPaymentMethod,
    required FormTextInput fieldClass,
    XFile? uploadCard,
    ToastData? toastData,
  }) = _InsuranceFormState;

  factory InsuranceFormState.add() => InsuranceFormState(
        fieldName: FormTextInput.pure(),
        fieldNumber: FormTextInput.pure(),
        fieldPaymentMethod: FormTextInput.pure(),
        fieldClass: FormTextInput.pure(),
      );

  factory InsuranceFormState.edit(InsuranceModel insurance) =>
      InsuranceFormState(
        insurance: insurance,
        fieldName: FormTextInput.dirty(value: insurance.name),
        fieldNumber: FormTextInput.dirty(value: insurance.noCard),
        fieldPaymentMethod: FormTextInput.dirty(value: insurance.caraBayar),
        fieldClass: FormTextInput.dirty(value: insurance.grade),
      );
}

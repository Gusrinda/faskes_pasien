part of 'family_form_bloc.dart';

@freezed
class FamilyFormState with _$FamilyFormState {
  const factory FamilyFormState({
    FamilyModel? family,
    @Default(FormzStatus.pure) FormzStatus status,
    required FormTextInput fieldName,
    required FormTextInput fieldRelation,
    required FormTextInput fieldStatus,
    required FormTextInput fieldAddress,
    required FormTextInput fieldPhone,
    required FormTextInput fieldJob,
    ToastData? toastData,
  }) = _FamilyFormState;

  factory FamilyFormState.add() => FamilyFormState(
        fieldName: FormTextInput.pure(),
        fieldRelation: FormTextInput.pure(),
        fieldStatus: FormTextInput.pure(),
        fieldAddress: FormTextInput.pure(),
        fieldPhone: FormTextInput.pure(),
        fieldJob: FormTextInput.pure(),
      );

  factory FamilyFormState.edit(FamilyModel family) => FamilyFormState(
        family: family,
        fieldName: FormTextInput.dirty(value: family.name),
        fieldRelation: FormTextInput.dirty(value: family.hubungan),
        fieldStatus: FormTextInput.dirty(value: family.statusKeluarga),
        fieldAddress: FormTextInput.dirty(value: family.address),
        fieldPhone: FormTextInput.dirty(value: family.phone),
        fieldJob: FormTextInput.dirty(value: family.pekerjaan ?? ''),
      );
}

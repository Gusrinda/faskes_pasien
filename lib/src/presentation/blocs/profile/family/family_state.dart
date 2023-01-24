part of 'family_bloc.dart';

@freezed
class FamilyState with _$FamilyState {
  const factory FamilyState({
    List<FamilyModel>? familyList,
    String? error,
  }) = _FamilyState;

  factory FamilyState.data(List<FamilyModel> familyList) =>
      FamilyState(familyList: familyList);

  factory FamilyState.error(String error) => FamilyState(error: error);

  factory FamilyState.fromJson(Map<String, dynamic> json) =>
      _$FamilyStateFromJson(json);
}

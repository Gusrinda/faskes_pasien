part of 'insurance_bloc.dart';

@freezed
class InsuranceState with _$InsuranceState {
  const factory InsuranceState({
    List<InsuranceModel>? insuranceList,
    String? error,
  }) = _InsuranceState;

  factory InsuranceState.data(List<InsuranceModel> insuranceList) =>
      InsuranceState(insuranceList: insuranceList);

  factory InsuranceState.error(String error) => InsuranceState(error: error);

  factory InsuranceState.fromJson(Map<String, dynamic> json) =>
      _$InsuranceStateFromJson(json);
}

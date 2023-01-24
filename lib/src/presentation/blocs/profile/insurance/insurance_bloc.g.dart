// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InsuranceState _$$_InsuranceStateFromJson(Map<String, dynamic> json) =>
    _$_InsuranceState(
      insuranceList: (json['insuranceList'] as List<dynamic>?)
          ?.map((e) => InsuranceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_InsuranceStateToJson(_$_InsuranceState instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'insuranceList', instance.insuranceList?.map((e) => e.toJson()).toList());
  writeNotNull('error', instance.error);
  return val;
}

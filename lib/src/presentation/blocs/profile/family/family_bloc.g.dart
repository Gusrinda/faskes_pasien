// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FamilyState _$$_FamilyStateFromJson(Map<String, dynamic> json) =>
    _$_FamilyState(
      familyList: (json['familyList'] as List<dynamic>?)
          ?.map((e) => FamilyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_FamilyStateToJson(_$_FamilyState instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'familyList', instance.familyList?.map((e) => e.toJson()).toList());
  writeNotNull('error', instance.error);
  return val;
}

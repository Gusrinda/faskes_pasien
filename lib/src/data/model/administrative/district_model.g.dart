// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DistrictListResponse _$$_DistrictListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DistrictListResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DistrictModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DistrictListResponseToJson(
    _$_DistrictListResponse instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_DistrictModel _$$_DistrictModelFromJson(Map<String, dynamic> json) =>
    _$_DistrictModel(
      code: json['kode'] as String,
      name: json['value_1'] as String,
    );

Map<String, dynamic> _$$_DistrictModelToJson(_$_DistrictModel instance) =>
    <String, dynamic>{
      'kode': instance.code,
      'value_1': instance.name,
    };

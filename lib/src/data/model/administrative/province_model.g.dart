// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProvinceListResponse _$$_ProvinceListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProvinceListResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProvinceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProvinceListResponseToJson(
    _$_ProvinceListResponse instance) {
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

_$_ProvinceModel _$$_ProvinceModelFromJson(Map<String, dynamic> json) =>
    _$_ProvinceModel(
      code: json['kode'] as String,
      name: json['value_1'] as String,
    );

Map<String, dynamic> _$$_ProvinceModelToJson(_$_ProvinceModel instance) =>
    <String, dynamic>{
      'kode': instance.code,
      'value_1': instance.name,
    };

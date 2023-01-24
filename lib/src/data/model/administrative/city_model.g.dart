// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityListResponse _$$_CityListResponseFromJson(Map<String, dynamic> json) =>
    _$_CityListResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CityListResponseToJson(_$_CityListResponse instance) {
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

_$_CityModel _$$_CityModelFromJson(Map<String, dynamic> json) => _$_CityModel(
      code: json['kode'] as String,
      name: json['value_1'] as String,
    );

Map<String, dynamic> _$$_CityModelToJson(_$_CityModel instance) =>
    <String, dynamic>{
      'kode': instance.code,
      'value_1': instance.name,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeneralApiResponse _$$_GeneralApiResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GeneralApiResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$_GeneralApiResponseToJson(
    _$_GeneralApiResponse instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}

_$_NumberApiResponse _$$_NumberApiResponseFromJson(Map<String, dynamic> json) =>
    _$_NumberApiResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: json['data'] as num?,
    );

Map<String, dynamic> _$$_NumberApiResponseToJson(
    _$_NumberApiResponse instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}

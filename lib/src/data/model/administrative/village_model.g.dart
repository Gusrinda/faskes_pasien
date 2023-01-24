// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'village_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VillageListResponse _$$_VillageListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_VillageListResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => VillageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VillageListResponseToJson(
    _$_VillageListResponse instance) {
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

_$_VillageModel _$$_VillageModelFromJson(Map<String, dynamic> json) =>
    _$_VillageModel(
      code: json['kode'] as String,
      name: json['value_1'] as String,
    );

Map<String, dynamic> _$$_VillageModelToJson(_$_VillageModel instance) =>
    <String, dynamic>{
      'kode': instance.code,
      'value_1': instance.name,
    };

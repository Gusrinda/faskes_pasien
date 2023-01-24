// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InsuranceListResponse _$$_InsuranceListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_InsuranceListResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InsuranceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InsuranceListResponseToJson(
    _$_InsuranceListResponse instance) {
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

_$_InsuranceDetailResponse _$$_InsuranceDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_InsuranceDetailResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : InsuranceModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InsuranceDetailResponseToJson(
    _$_InsuranceDetailResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

_$_InsuranceModel _$$_InsuranceModelFromJson(Map<String, dynamic> json) =>
    _$_InsuranceModel(
      id: json['id'] as String,
      qlMUserId: json['ql_m_user_id'] as String,
      name: json['name'] as String,
      noCard: json['no_card'] as String,
      caraBayar: json['cara_bayar'] as String,
      grade: json['grade'] as String,
      imageUrl: json['image_url'] as String,
      status: json['status'] as String,
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_InsuranceModelToJson(_$_InsuranceModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'ql_m_user_id': instance.qlMUserId,
    'name': instance.name,
    'no_card': instance.noCard,
    'cara_bayar': instance.caraBayar,
    'grade': instance.grade,
    'image_url': instance.imageUrl,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_by', instance.createdBy);
  writeNotNull('updated_by', instance.updatedBy);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

_$_InsuranceContent _$$_InsuranceContentFromJson(Map<String, dynamic> json) =>
    _$_InsuranceContent(
      name: json['name'] as String,
      noCard: json['no_card'] as String,
      caraBayar: json['cara_bayar'] as String,
      grade: json['grade'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$_InsuranceContentToJson(_$_InsuranceContent instance) =>
    <String, dynamic>{
      'name': instance.name,
      'no_card': instance.noCard,
      'cara_bayar': instance.caraBayar,
      'grade': instance.grade,
      'image_url': instance.imageUrl,
    };

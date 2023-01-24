// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FamilyListResponse _$$_FamilyListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FamilyListResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FamilyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FamilyListResponseToJson(
    _$_FamilyListResponse instance) {
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

_$_FamilyDetailResponse _$$_FamilyDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FamilyDetailResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : FamilyModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FamilyDetailResponseToJson(
    _$_FamilyDetailResponse instance) {
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

_$_FamilyModel _$$_FamilyModelFromJson(Map<String, dynamic> json) =>
    _$_FamilyModel(
      id: json['id'] as String,
      qlMUserId: json['ql_m_user_id'] as String,
      name: json['name'] as String,
      hubungan: json['hubungan'] as String,
      statusKeluarga: json['status_keluarga'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      pekerjaan: json['pekerjaan'] as String?,
      status: json['status'] as String,
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_FamilyModelToJson(_$_FamilyModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'ql_m_user_id': instance.qlMUserId,
    'name': instance.name,
    'hubungan': instance.hubungan,
    'status_keluarga': instance.statusKeluarga,
    'address': instance.address,
    'phone': instance.phone,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pekerjaan', instance.pekerjaan);
  val['status'] = instance.status;
  writeNotNull('created_by', instance.createdBy);
  writeNotNull('updated_by', instance.updatedBy);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

_$_FamilyContent _$$_FamilyContentFromJson(Map<String, dynamic> json) =>
    _$_FamilyContent(
      name: json['name'] as String,
      hubungan: json['hubungan'] as String,
      statusKeluarga: json['status_keluarga'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      pekerjaan: json['pekerjaan'] as String?,
    );

Map<String, dynamic> _$$_FamilyContentToJson(_$_FamilyContent instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'hubungan': instance.hubungan,
    'status_keluarga': instance.statusKeluarga,
    'address': instance.address,
    'phone': instance.phone,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pekerjaan', instance.pekerjaan);
  return val;
}

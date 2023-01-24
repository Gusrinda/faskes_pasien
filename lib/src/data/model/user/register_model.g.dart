// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterUserResponse _$$_RegisterUserResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterUserResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : RegisterUserModel.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'],
    );

Map<String, dynamic> _$$_RegisterUserResponseToJson(
    _$_RegisterUserResponse instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('errors', instance.errors);
  return val;
}

_$_RegisterUserModel _$$_RegisterUserModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterUserModel(
      name: json['name'] as String,
      nik: json['nik'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      username: json['username'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_RegisterUserModelToJson(
    _$_RegisterUserModel instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'nik': instance.nik,
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone', instance.phone);
  val['username'] = instance.username;
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  return val;
}

_$_RegisterRequest _$$_RegisterRequestFromJson(Map<String, dynamic> json) =>
    _$_RegisterRequest(
      name: json['name'] as String,
      nik: json['nik'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      role: json['role'] as String? ?? 'pasien',
      password: json['password'] as String,
      confirmPassword: json['c_password'] as String,
    );

Map<String, dynamic> _$$_RegisterRequestToJson(_$_RegisterRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nik': instance.nik,
      'email': instance.email,
      'phone': instance.phone,
      'role': instance.role,
      'password': instance.password,
      'c_password': instance.confirmPassword,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequest _$$_LoginRequestFromJson(Map<String, dynamic> json) =>
    _$_LoginRequest(
      identity: json['identity'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_LoginRequestToJson(_$_LoginRequest instance) =>
    <String, dynamic>{
      'identity': instance.identity,
      'password': instance.password,
    };

_$_LoginUserResponse _$$_LoginUserResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginUserResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : LoginUserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginUserResponseToJson(
    _$_LoginUserResponse instance) {
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
  return val;
}

_$_LoginUserModel _$$_LoginUserModelFromJson(Map<String, dynamic> json) =>
    _$_LoginUserModel(
      name: json['name'] as String,
      phone: json['phone'] as String?,
      username: json['username'] as String,
      email: json['email'] as String,
      nik: json['nik'] as String,
      token: json['token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$$_LoginUserModelToJson(_$_LoginUserModel instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone', instance.phone);
  val['username'] = instance.username;
  val['email'] = instance.email;
  val['nik'] = instance.nik;
  val['token'] = instance.token;
  val['token_type'] = instance.tokenType;
  return val;
}

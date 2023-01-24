// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForgotPasswordRequest _$$_ForgotPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ForgotPasswordRequest(
      identity: json['identity'] as String,
    );

Map<String, dynamic> _$$_ForgotPasswordRequestToJson(
        _$_ForgotPasswordRequest instance) =>
    <String, dynamic>{
      'identity': instance.identity,
    };

_$_ForgotPasswordVerificationRequest
    _$$_ForgotPasswordVerificationRequestFromJson(Map<String, dynamic> json) =>
        _$_ForgotPasswordVerificationRequest(
          identity: json['identity'] as String,
          password: json['password'] as String,
          confirmPassword: json['c_password'] as String,
        );

Map<String, dynamic> _$$_ForgotPasswordVerificationRequestToJson(
        _$_ForgotPasswordVerificationRequest instance) =>
    <String, dynamic>{
      'identity': instance.identity,
      'password': instance.password,
      'c_password': instance.confirmPassword,
    };

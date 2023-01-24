// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticationState _$$_AuthenticationStateFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticationState(
      status:
          $enumDecodeNullable(_$AuthenticationStatusEnumMap, json['status']) ??
              AuthenticationStatus.unknown,
      loginUser: json['loginUser'] == null
          ? null
          : LoginUserModel.fromJson(json['loginUser'] as Map<String, dynamic>),
      userModel: json['userModel'] == null
          ? null
          : UserModel.fromJson(json['userModel'] as Map<String, dynamic>),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$_AuthenticationStateToJson(
    _$_AuthenticationState instance) {
  final val = <String, dynamic>{
    'status': _$AuthenticationStatusEnumMap[instance.status]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('loginUser', instance.loginUser?.toJson());
  writeNotNull('userModel', instance.userModel?.toJson());
  writeNotNull('userId', instance.userId);
  return val;
}

const _$AuthenticationStatusEnumMap = {
  AuthenticationStatus.unknown: 'unknown',
  AuthenticationStatus.authenticated: 'authenticated',
  AuthenticationStatus.unauthenticated: 'unauthenticated',
  AuthenticationStatus.me: 'me',
};

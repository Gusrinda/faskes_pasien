// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileResponse _$$_UserProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserProfileResponse(
      success: json['success'] as bool? ?? true,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileResponseToJson(
    _$_UserProfileResponse instance) {
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

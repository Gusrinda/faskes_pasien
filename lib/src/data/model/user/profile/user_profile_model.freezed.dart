// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) {
  return _UserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileResponseCopyWith<UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseCopyWith<$Res> {
  factory $UserProfileResponseCopyWith(
          UserProfileResponse value, $Res Function(UserProfileResponse) then) =
      _$UserProfileResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, UserModel? data});

  $UserModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserProfileResponseCopyWithImpl<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  _$UserProfileResponseCopyWithImpl(this._value, this._then);

  final UserProfileResponse _value;
  // ignore: unused_field
  final $Res Function(UserProfileResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserProfileResponseCopyWith<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  factory _$$_UserProfileResponseCopyWith(_$_UserProfileResponse value,
          $Res Function(_$_UserProfileResponse) then) =
      __$$_UserProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, UserModel? data});

  @override
  $UserModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_UserProfileResponseCopyWithImpl<$Res>
    extends _$UserProfileResponseCopyWithImpl<$Res>
    implements _$$_UserProfileResponseCopyWith<$Res> {
  __$$_UserProfileResponseCopyWithImpl(_$_UserProfileResponse _value,
      $Res Function(_$_UserProfileResponse) _then)
      : super(_value, (v) => _then(v as _$_UserProfileResponse));

  @override
  _$_UserProfileResponse get _value => super._value as _$_UserProfileResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UserProfileResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileResponse extends _UserProfileResponse {
  const _$_UserProfileResponse({this.success = true, this.message, this.data})
      : super._();

  factory _$_UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  @override
  final UserModel? data;

  @override
  String toString() {
    return 'UserProfileResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_UserProfileResponseCopyWith<_$_UserProfileResponse> get copyWith =>
      __$$_UserProfileResponseCopyWithImpl<_$_UserProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileResponseToJson(
      this,
    );
  }
}

abstract class _UserProfileResponse extends UserProfileResponse {
  const factory _UserProfileResponse(
      {final bool success,
      final String? message,
      final UserModel? data}) = _$_UserProfileResponse;
  const _UserProfileResponse._() : super._();

  factory _UserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_UserProfileResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  UserModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileResponseCopyWith<_$_UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

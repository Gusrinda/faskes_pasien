// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationState _$AuthenticationStateFromJson(Map<String, dynamic> json) {
  return _AuthenticationState.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatus get status => throw _privateConstructorUsedError;
  LoginUserModel? get loginUser => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {AuthenticationStatus status,
      LoginUserModel? loginUser,
      UserModel? userModel,
      String? userId});

  $LoginUserModelCopyWith<$Res>? get loginUser;
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? loginUser = freezed,
    Object? userModel = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      loginUser: loginUser == freezed
          ? _value.loginUser
          : loginUser // ignore: cast_nullable_to_non_nullable
              as LoginUserModel?,
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $LoginUserModelCopyWith<$Res>? get loginUser {
    if (_value.loginUser == null) {
      return null;
    }

    return $LoginUserModelCopyWith<$Res>(_value.loginUser!, (value) {
      return _then(_value.copyWith(loginUser: value));
    });
  }

  @override
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationStateCopyWith(_$_AuthenticationState value,
          $Res Function(_$_AuthenticationState) then) =
      __$$_AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthenticationStatus status,
      LoginUserModel? loginUser,
      UserModel? userModel,
      String? userId});

  @override
  $LoginUserModelCopyWith<$Res>? get loginUser;
  @override
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$_AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthenticationStateCopyWith<$Res> {
  __$$_AuthenticationStateCopyWithImpl(_$_AuthenticationState _value,
      $Res Function(_$_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationState));

  @override
  _$_AuthenticationState get _value => super._value as _$_AuthenticationState;

  @override
  $Res call({
    Object? status = freezed,
    Object? loginUser = freezed,
    Object? userModel = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_AuthenticationState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      loginUser: loginUser == freezed
          ? _value.loginUser
          : loginUser // ignore: cast_nullable_to_non_nullable
              as LoginUserModel?,
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {this.status = AuthenticationStatus.unknown,
      this.loginUser,
      this.userModel,
      this.userId});

  factory _$_AuthenticationState.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationStateFromJson(json);

  @override
  @JsonKey()
  final AuthenticationStatus status;
  @override
  final LoginUserModel? loginUser;
  @override
  final UserModel? userModel;
  @override
  final String? userId;

  @override
  String toString() {
    return 'AuthenticationState(status: $status, loginUser: $loginUser, userModel: $userModel, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.loginUser, loginUser) &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(loginUser),
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      __$$_AuthenticationStateCopyWithImpl<_$_AuthenticationState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationStateToJson(
      this,
    );
  }
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {final AuthenticationStatus status,
      final LoginUserModel? loginUser,
      final UserModel? userModel,
      final String? userId}) = _$_AuthenticationState;

  factory _AuthenticationState.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationState.fromJson;

  @override
  AuthenticationStatus get status;
  @override
  LoginUserModel? get loginUser;
  @override
  UserModel? get userModel;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

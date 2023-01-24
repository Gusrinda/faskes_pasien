// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  FormzStatus get status => throw _privateConstructorUsedError;
  FormTextInput get fieldUsername => throw _privateConstructorUsedError;
  FormTextInput get fieldPassword => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  LoginUserModel? get loginUser => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {FormzStatus status,
      FormTextInput fieldUsername,
      FormTextInput fieldPassword,
      bool obscurePassword,
      LoginUserModel? loginUser,
      String? error});

  $LoginUserModelCopyWith<$Res>? get loginUser;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? fieldUsername = freezed,
    Object? fieldPassword = freezed,
    Object? obscurePassword = freezed,
    Object? loginUser = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      fieldUsername: fieldUsername == freezed
          ? _value.fieldUsername
          : fieldUsername // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldPassword: fieldPassword == freezed
          ? _value.fieldPassword
          : fieldPassword // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      obscurePassword: obscurePassword == freezed
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      loginUser: loginUser == freezed
          ? _value.loginUser
          : loginUser // ignore: cast_nullable_to_non_nullable
              as LoginUserModel?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FormzStatus status,
      FormTextInput fieldUsername,
      FormTextInput fieldPassword,
      bool obscurePassword,
      LoginUserModel? loginUser,
      String? error});

  @override
  $LoginUserModelCopyWith<$Res>? get loginUser;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? status = freezed,
    Object? fieldUsername = freezed,
    Object? fieldPassword = freezed,
    Object? obscurePassword = freezed,
    Object? loginUser = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_LoginState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      fieldUsername: fieldUsername == freezed
          ? _value.fieldUsername
          : fieldUsername // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldPassword: fieldPassword == freezed
          ? _value.fieldPassword
          : fieldPassword // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      obscurePassword: obscurePassword == freezed
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      loginUser: loginUser == freezed
          ? _value.loginUser
          : loginUser // ignore: cast_nullable_to_non_nullable
              as LoginUserModel?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.status = FormzStatus.pure,
      required this.fieldUsername,
      required this.fieldPassword,
      this.obscurePassword = true,
      this.loginUser,
      this.error});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  final FormTextInput fieldUsername;
  @override
  final FormTextInput fieldPassword;
  @override
  @JsonKey()
  final bool obscurePassword;
  @override
  final LoginUserModel? loginUser;
  @override
  final String? error;

  @override
  String toString() {
    return 'LoginState(status: $status, fieldUsername: $fieldUsername, fieldPassword: $fieldPassword, obscurePassword: $obscurePassword, loginUser: $loginUser, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.fieldUsername, fieldUsername) &&
            const DeepCollectionEquality()
                .equals(other.fieldPassword, fieldPassword) &&
            const DeepCollectionEquality()
                .equals(other.obscurePassword, obscurePassword) &&
            const DeepCollectionEquality().equals(other.loginUser, loginUser) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(fieldUsername),
      const DeepCollectionEquality().hash(fieldPassword),
      const DeepCollectionEquality().hash(obscurePassword),
      const DeepCollectionEquality().hash(loginUser),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final FormzStatus status,
      required final FormTextInput fieldUsername,
      required final FormTextInput fieldPassword,
      final bool obscurePassword,
      final LoginUserModel? loginUser,
      final String? error}) = _$_LoginState;

  @override
  FormzStatus get status;
  @override
  FormTextInput get fieldUsername;
  @override
  FormTextInput get fieldPassword;
  @override
  bool get obscurePassword;
  @override
  LoginUserModel? get loginUser;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

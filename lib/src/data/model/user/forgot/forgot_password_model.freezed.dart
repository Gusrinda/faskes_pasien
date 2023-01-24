// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgotPasswordRequest _$ForgotPasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _ForgotPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordRequest {
  String get identity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordRequestCopyWith<ForgotPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordRequestCopyWith<$Res> {
  factory $ForgotPasswordRequestCopyWith(ForgotPasswordRequest value,
          $Res Function(ForgotPasswordRequest) then) =
      _$ForgotPasswordRequestCopyWithImpl<$Res>;
  $Res call({String identity});
}

/// @nodoc
class _$ForgotPasswordRequestCopyWithImpl<$Res>
    implements $ForgotPasswordRequestCopyWith<$Res> {
  _$ForgotPasswordRequestCopyWithImpl(this._value, this._then);

  final ForgotPasswordRequest _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordRequest) _then;

  @override
  $Res call({
    Object? identity = freezed,
  }) {
    return _then(_value.copyWith(
      identity: identity == freezed
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordRequestCopyWith<$Res>
    implements $ForgotPasswordRequestCopyWith<$Res> {
  factory _$$_ForgotPasswordRequestCopyWith(_$_ForgotPasswordRequest value,
          $Res Function(_$_ForgotPasswordRequest) then) =
      __$$_ForgotPasswordRequestCopyWithImpl<$Res>;
  @override
  $Res call({String identity});
}

/// @nodoc
class __$$_ForgotPasswordRequestCopyWithImpl<$Res>
    extends _$ForgotPasswordRequestCopyWithImpl<$Res>
    implements _$$_ForgotPasswordRequestCopyWith<$Res> {
  __$$_ForgotPasswordRequestCopyWithImpl(_$_ForgotPasswordRequest _value,
      $Res Function(_$_ForgotPasswordRequest) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordRequest));

  @override
  _$_ForgotPasswordRequest get _value =>
      super._value as _$_ForgotPasswordRequest;

  @override
  $Res call({
    Object? identity = freezed,
  }) {
    return _then(_$_ForgotPasswordRequest(
      identity: identity == freezed
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForgotPasswordRequest implements _ForgotPasswordRequest {
  const _$_ForgotPasswordRequest({required this.identity});

  factory _$_ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ForgotPasswordRequestFromJson(json);

  @override
  final String identity;

  @override
  String toString() {
    return 'ForgotPasswordRequest(identity: $identity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordRequest &&
            const DeepCollectionEquality().equals(other.identity, identity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(identity));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordRequestCopyWith<_$_ForgotPasswordRequest> get copyWith =>
      __$$_ForgotPasswordRequestCopyWithImpl<_$_ForgotPasswordRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForgotPasswordRequestToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordRequest implements ForgotPasswordRequest {
  const factory _ForgotPasswordRequest({required final String identity}) =
      _$_ForgotPasswordRequest;

  factory _ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$_ForgotPasswordRequest.fromJson;

  @override
  String get identity;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordRequestCopyWith<_$_ForgotPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

ForgotPasswordVerificationRequest _$ForgotPasswordVerificationRequestFromJson(
    Map<String, dynamic> json) {
  return _ForgotPasswordVerificationRequest.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordVerificationRequest {
  String get identity => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_password')
  String get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordVerificationRequestCopyWith<ForgotPasswordVerificationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordVerificationRequestCopyWith<$Res> {
  factory $ForgotPasswordVerificationRequestCopyWith(
          ForgotPasswordVerificationRequest value,
          $Res Function(ForgotPasswordVerificationRequest) then) =
      _$ForgotPasswordVerificationRequestCopyWithImpl<$Res>;
  $Res call(
      {String identity,
      String password,
      @JsonKey(name: 'c_password') String confirmPassword});
}

/// @nodoc
class _$ForgotPasswordVerificationRequestCopyWithImpl<$Res>
    implements $ForgotPasswordVerificationRequestCopyWith<$Res> {
  _$ForgotPasswordVerificationRequestCopyWithImpl(this._value, this._then);

  final ForgotPasswordVerificationRequest _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordVerificationRequest) _then;

  @override
  $Res call({
    Object? identity = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      identity: identity == freezed
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordVerificationRequestCopyWith<$Res>
    implements $ForgotPasswordVerificationRequestCopyWith<$Res> {
  factory _$$_ForgotPasswordVerificationRequestCopyWith(
          _$_ForgotPasswordVerificationRequest value,
          $Res Function(_$_ForgotPasswordVerificationRequest) then) =
      __$$_ForgotPasswordVerificationRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String identity,
      String password,
      @JsonKey(name: 'c_password') String confirmPassword});
}

/// @nodoc
class __$$_ForgotPasswordVerificationRequestCopyWithImpl<$Res>
    extends _$ForgotPasswordVerificationRequestCopyWithImpl<$Res>
    implements _$$_ForgotPasswordVerificationRequestCopyWith<$Res> {
  __$$_ForgotPasswordVerificationRequestCopyWithImpl(
      _$_ForgotPasswordVerificationRequest _value,
      $Res Function(_$_ForgotPasswordVerificationRequest) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordVerificationRequest));

  @override
  _$_ForgotPasswordVerificationRequest get _value =>
      super._value as _$_ForgotPasswordVerificationRequest;

  @override
  $Res call({
    Object? identity = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_$_ForgotPasswordVerificationRequest(
      identity: identity == freezed
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForgotPasswordVerificationRequest
    implements _ForgotPasswordVerificationRequest {
  const _$_ForgotPasswordVerificationRequest(
      {required this.identity,
      required this.password,
      @JsonKey(name: 'c_password') required this.confirmPassword});

  factory _$_ForgotPasswordVerificationRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_ForgotPasswordVerificationRequestFromJson(json);

  @override
  final String identity;
  @override
  final String password;
  @override
  @JsonKey(name: 'c_password')
  final String confirmPassword;

  @override
  String toString() {
    return 'ForgotPasswordVerificationRequest(identity: $identity, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordVerificationRequest &&
            const DeepCollectionEquality().equals(other.identity, identity) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(identity),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordVerificationRequestCopyWith<
          _$_ForgotPasswordVerificationRequest>
      get copyWith => __$$_ForgotPasswordVerificationRequestCopyWithImpl<
          _$_ForgotPasswordVerificationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForgotPasswordVerificationRequestToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordVerificationRequest
    implements ForgotPasswordVerificationRequest {
  const factory _ForgotPasswordVerificationRequest(
          {required final String identity,
          required final String password,
          @JsonKey(name: 'c_password') required final String confirmPassword}) =
      _$_ForgotPasswordVerificationRequest;

  factory _ForgotPasswordVerificationRequest.fromJson(
          Map<String, dynamic> json) =
      _$_ForgotPasswordVerificationRequest.fromJson;

  @override
  String get identity;
  @override
  String get password;
  @override
  @JsonKey(name: 'c_password')
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordVerificationRequestCopyWith<
          _$_ForgotPasswordVerificationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

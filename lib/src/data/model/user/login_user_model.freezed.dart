// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  String get identity => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequestCopyWith<LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
          LoginRequest value, $Res Function(LoginRequest) then) =
      _$LoginRequestCopyWithImpl<$Res>;
  $Res call({String identity, String password});
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res> implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  final LoginRequest _value;
  // ignore: unused_field
  final $Res Function(LoginRequest) _then;

  @override
  $Res call({
    Object? identity = freezed,
    Object? password = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_LoginRequestCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$$_LoginRequestCopyWith(
          _$_LoginRequest value, $Res Function(_$_LoginRequest) then) =
      __$$_LoginRequestCopyWithImpl<$Res>;
  @override
  $Res call({String identity, String password});
}

/// @nodoc
class __$$_LoginRequestCopyWithImpl<$Res>
    extends _$LoginRequestCopyWithImpl<$Res>
    implements _$$_LoginRequestCopyWith<$Res> {
  __$$_LoginRequestCopyWithImpl(
      _$_LoginRequest _value, $Res Function(_$_LoginRequest) _then)
      : super(_value, (v) => _then(v as _$_LoginRequest));

  @override
  _$_LoginRequest get _value => super._value as _$_LoginRequest;

  @override
  $Res call({
    Object? identity = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginRequest(
      identity: identity == freezed
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginRequest implements _LoginRequest {
  const _$_LoginRequest({required this.identity, required this.password});

  factory _$_LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LoginRequestFromJson(json);

  @override
  final String identity;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginRequest(identity: $identity, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequest &&
            const DeepCollectionEquality().equals(other.identity, identity) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(identity),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginRequestCopyWith<_$_LoginRequest> get copyWith =>
      __$$_LoginRequestCopyWithImpl<_$_LoginRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRequestToJson(
      this,
    );
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest(
      {required final String identity,
      required final String password}) = _$_LoginRequest;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$_LoginRequest.fromJson;

  @override
  String get identity;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginRequestCopyWith<_$_LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginUserResponse _$LoginUserResponseFromJson(Map<String, dynamic> json) {
  return _LoginUserResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginUserResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  LoginUserModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserResponseCopyWith<LoginUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserResponseCopyWith<$Res> {
  factory $LoginUserResponseCopyWith(
          LoginUserResponse value, $Res Function(LoginUserResponse) then) =
      _$LoginUserResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, LoginUserModel? data});

  $LoginUserModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginUserResponseCopyWithImpl<$Res>
    implements $LoginUserResponseCopyWith<$Res> {
  _$LoginUserResponseCopyWithImpl(this._value, this._then);

  final LoginUserResponse _value;
  // ignore: unused_field
  final $Res Function(LoginUserResponse) _then;

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
              as LoginUserModel?,
    ));
  }

  @override
  $LoginUserModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginUserModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_LoginUserResponseCopyWith<$Res>
    implements $LoginUserResponseCopyWith<$Res> {
  factory _$$_LoginUserResponseCopyWith(_$_LoginUserResponse value,
          $Res Function(_$_LoginUserResponse) then) =
      __$$_LoginUserResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, LoginUserModel? data});

  @override
  $LoginUserModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LoginUserResponseCopyWithImpl<$Res>
    extends _$LoginUserResponseCopyWithImpl<$Res>
    implements _$$_LoginUserResponseCopyWith<$Res> {
  __$$_LoginUserResponseCopyWithImpl(
      _$_LoginUserResponse _value, $Res Function(_$_LoginUserResponse) _then)
      : super(_value, (v) => _then(v as _$_LoginUserResponse));

  @override
  _$_LoginUserResponse get _value => super._value as _$_LoginUserResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_LoginUserResponse(
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
              as LoginUserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginUserResponse implements _LoginUserResponse {
  const _$_LoginUserResponse({this.success = false, this.message, this.data});

  factory _$_LoginUserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginUserResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  @override
  final LoginUserModel? data;

  @override
  String toString() {
    return 'LoginUserResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginUserResponse &&
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
  _$$_LoginUserResponseCopyWith<_$_LoginUserResponse> get copyWith =>
      __$$_LoginUserResponseCopyWithImpl<_$_LoginUserResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginUserResponseToJson(
      this,
    );
  }
}

abstract class _LoginUserResponse implements LoginUserResponse {
  const factory _LoginUserResponse(
      {final bool success,
      final String? message,
      final LoginUserModel? data}) = _$_LoginUserResponse;

  factory _LoginUserResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginUserResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  LoginUserModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoginUserResponseCopyWith<_$_LoginUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginUserModel _$LoginUserModelFromJson(Map<String, dynamic> json) {
  return _LoginUserModel.fromJson(json);
}

/// @nodoc
mixin _$LoginUserModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'nik')
  String get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserModelCopyWith<LoginUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserModelCopyWith<$Res> {
  factory $LoginUserModelCopyWith(
          LoginUserModel value, $Res Function(LoginUserModel) then) =
      _$LoginUserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'nik') String nik,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class _$LoginUserModelCopyWithImpl<$Res>
    implements $LoginUserModelCopyWith<$Res> {
  _$LoginUserModelCopyWithImpl(this._value, this._then);

  final LoginUserModel _value;
  // ignore: unused_field
  final $Res Function(LoginUserModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? nik = freezed,
    Object? token = freezed,
    Object? tokenType = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginUserModelCopyWith<$Res>
    implements $LoginUserModelCopyWith<$Res> {
  factory _$$_LoginUserModelCopyWith(
          _$_LoginUserModel value, $Res Function(_$_LoginUserModel) then) =
      __$$_LoginUserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'nik') String nik,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class __$$_LoginUserModelCopyWithImpl<$Res>
    extends _$LoginUserModelCopyWithImpl<$Res>
    implements _$$_LoginUserModelCopyWith<$Res> {
  __$$_LoginUserModelCopyWithImpl(
      _$_LoginUserModel _value, $Res Function(_$_LoginUserModel) _then)
      : super(_value, (v) => _then(v as _$_LoginUserModel));

  @override
  _$_LoginUserModel get _value => super._value as _$_LoginUserModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? nik = freezed,
    Object? token = freezed,
    Object? tokenType = freezed,
  }) {
    return _then(_$_LoginUserModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginUserModel implements _LoginUserModel {
  const _$_LoginUserModel(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'nik') required this.nik,
      @JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'token_type') required this.tokenType});

  factory _$_LoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginUserModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'nik')
  final String nik;
  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;

  @override
  String toString() {
    return 'LoginUserModel(name: $name, phone: $phone, username: $username, email: $email, nik: $nik, token: $token, tokenType: $tokenType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginUserModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(nik),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(tokenType));

  @JsonKey(ignore: true)
  @override
  _$$_LoginUserModelCopyWith<_$_LoginUserModel> get copyWith =>
      __$$_LoginUserModelCopyWithImpl<_$_LoginUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginUserModelToJson(
      this,
    );
  }
}

abstract class _LoginUserModel implements LoginUserModel {
  const factory _LoginUserModel(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'nik') required final String nik,
          @JsonKey(name: 'token') required final String token,
          @JsonKey(name: 'token_type') required final String tokenType}) =
      _$_LoginUserModel;

  factory _LoginUserModel.fromJson(Map<String, dynamic> json) =
      _$_LoginUserModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'nik')
  String get nik;
  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(ignore: true)
  _$$_LoginUserModelCopyWith<_$_LoginUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

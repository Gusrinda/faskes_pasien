// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterUserResponse _$RegisterUserResponseFromJson(Map<String, dynamic> json) {
  return _RegisterUserResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterUserResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  RegisterUserModel? get data => throw _privateConstructorUsedError;
  dynamic get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserResponseCopyWith<RegisterUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserResponseCopyWith<$Res> {
  factory $RegisterUserResponseCopyWith(RegisterUserResponse value,
          $Res Function(RegisterUserResponse) then) =
      _$RegisterUserResponseCopyWithImpl<$Res>;
  $Res call(
      {bool success, String? message, RegisterUserModel? data, dynamic errors});

  $RegisterUserModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterUserResponseCopyWithImpl<$Res>
    implements $RegisterUserResponseCopyWith<$Res> {
  _$RegisterUserResponseCopyWithImpl(this._value, this._then);

  final RegisterUserResponse _value;
  // ignore: unused_field
  final $Res Function(RegisterUserResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? errors = freezed,
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
              as RegisterUserModel?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  @override
  $RegisterUserModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RegisterUserModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_RegisterUserResponseCopyWith<$Res>
    implements $RegisterUserResponseCopyWith<$Res> {
  factory _$$_RegisterUserResponseCopyWith(_$_RegisterUserResponse value,
          $Res Function(_$_RegisterUserResponse) then) =
      __$$_RegisterUserResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success, String? message, RegisterUserModel? data, dynamic errors});

  @override
  $RegisterUserModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_RegisterUserResponseCopyWithImpl<$Res>
    extends _$RegisterUserResponseCopyWithImpl<$Res>
    implements _$$_RegisterUserResponseCopyWith<$Res> {
  __$$_RegisterUserResponseCopyWithImpl(_$_RegisterUserResponse _value,
      $Res Function(_$_RegisterUserResponse) _then)
      : super(_value, (v) => _then(v as _$_RegisterUserResponse));

  @override
  _$_RegisterUserResponse get _value => super._value as _$_RegisterUserResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_RegisterUserResponse(
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
              as RegisterUserModel?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterUserResponse implements _RegisterUserResponse {
  const _$_RegisterUserResponse(
      {this.success = false, this.message, this.data, this.errors});

  factory _$_RegisterUserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterUserResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  @override
  final RegisterUserModel? data;
  @override
  final dynamic errors;

  @override
  String toString() {
    return 'RegisterUserResponse(success: $success, message: $message, data: $data, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterUserResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterUserResponseCopyWith<_$_RegisterUserResponse> get copyWith =>
      __$$_RegisterUserResponseCopyWithImpl<_$_RegisterUserResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterUserResponseToJson(
      this,
    );
  }
}

abstract class _RegisterUserResponse implements RegisterUserResponse {
  const factory _RegisterUserResponse(
      {final bool success,
      final String? message,
      final RegisterUserModel? data,
      final dynamic errors}) = _$_RegisterUserResponse;

  factory _RegisterUserResponse.fromJson(Map<String, dynamic> json) =
      _$_RegisterUserResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  RegisterUserModel? get data;
  @override
  dynamic get errors;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterUserResponseCopyWith<_$_RegisterUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterUserModel _$RegisterUserModelFromJson(Map<String, dynamic> json) {
  return _RegisterUserModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterUserModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'nik')
  String get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserModelCopyWith<RegisterUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserModelCopyWith<$Res> {
  factory $RegisterUserModelCopyWith(
          RegisterUserModel value, $Res Function(RegisterUserModel) then) =
      _$RegisterUserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'nik') String nik,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$RegisterUserModelCopyWithImpl<$Res>
    implements $RegisterUserModelCopyWith<$Res> {
  _$RegisterUserModelCopyWithImpl(this._value, this._then);

  final RegisterUserModel _value;
  // ignore: unused_field
  final $Res Function(RegisterUserModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? nik = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterUserModelCopyWith<$Res>
    implements $RegisterUserModelCopyWith<$Res> {
  factory _$$_RegisterUserModelCopyWith(_$_RegisterUserModel value,
          $Res Function(_$_RegisterUserModel) then) =
      __$$_RegisterUserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'nik') String nik,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$_RegisterUserModelCopyWithImpl<$Res>
    extends _$RegisterUserModelCopyWithImpl<$Res>
    implements _$$_RegisterUserModelCopyWith<$Res> {
  __$$_RegisterUserModelCopyWithImpl(
      _$_RegisterUserModel _value, $Res Function(_$_RegisterUserModel) _then)
      : super(_value, (v) => _then(v as _$_RegisterUserModel));

  @override
  _$_RegisterUserModel get _value => super._value as _$_RegisterUserModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? nik = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_RegisterUserModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterUserModel implements _RegisterUserModel {
  const _$_RegisterUserModel(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'nik') required this.nik,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$_RegisterUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterUserModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'nik')
  final String nik;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'RegisterUserModel(name: $name, nik: $nik, email: $email, phone: $phone, username: $username, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterUserModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nik),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterUserModelCopyWith<_$_RegisterUserModel> get copyWith =>
      __$$_RegisterUserModelCopyWithImpl<_$_RegisterUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterUserModelToJson(
      this,
    );
  }
}

abstract class _RegisterUserModel implements RegisterUserModel {
  const factory _RegisterUserModel(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'nik') required final String nik,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$_RegisterUserModel;

  factory _RegisterUserModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterUserModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'nik')
  String get nik;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterUserModelCopyWith<_$_RegisterUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) {
  return _RegisterRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterRequest {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'nik')
  String get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_password')
  String get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterRequestCopyWith<RegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestCopyWith<$Res> {
  factory $RegisterRequestCopyWith(
          RegisterRequest value, $Res Function(RegisterRequest) then) =
      _$RegisterRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'nik') String nik,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'role') String role,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'c_password') String confirmPassword});
}

/// @nodoc
class _$RegisterRequestCopyWithImpl<$Res>
    implements $RegisterRequestCopyWith<$Res> {
  _$RegisterRequestCopyWithImpl(this._value, this._then);

  final RegisterRequest _value;
  // ignore: unused_field
  final $Res Function(RegisterRequest) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? nik = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_RegisterRequestCopyWith<$Res>
    implements $RegisterRequestCopyWith<$Res> {
  factory _$$_RegisterRequestCopyWith(
          _$_RegisterRequest value, $Res Function(_$_RegisterRequest) then) =
      __$$_RegisterRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'nik') String nik,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'role') String role,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'c_password') String confirmPassword});
}

/// @nodoc
class __$$_RegisterRequestCopyWithImpl<$Res>
    extends _$RegisterRequestCopyWithImpl<$Res>
    implements _$$_RegisterRequestCopyWith<$Res> {
  __$$_RegisterRequestCopyWithImpl(
      _$_RegisterRequest _value, $Res Function(_$_RegisterRequest) _then)
      : super(_value, (v) => _then(v as _$_RegisterRequest));

  @override
  _$_RegisterRequest get _value => super._value as _$_RegisterRequest;

  @override
  $Res call({
    Object? name = freezed,
    Object? nik = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_$_RegisterRequest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
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
class _$_RegisterRequest implements _RegisterRequest {
  const _$_RegisterRequest(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'nik') required this.nik,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'role') this.role = 'pasien',
      @JsonKey(name: 'password') required this.password,
      @JsonKey(name: 'c_password') required this.confirmPassword});

  factory _$_RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterRequestFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'nik')
  final String nik;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'role')
  final String role;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'c_password')
  final String confirmPassword;

  @override
  String toString() {
    return 'RegisterRequest(name: $name, nik: $nik, email: $email, phone: $phone, role: $role, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterRequest &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nik),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterRequestCopyWith<_$_RegisterRequest> get copyWith =>
      __$$_RegisterRequestCopyWithImpl<_$_RegisterRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterRequestToJson(
      this,
    );
  }
}

abstract class _RegisterRequest implements RegisterRequest {
  const factory _RegisterRequest(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'nik') required final String nik,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'phone') required final String phone,
          @JsonKey(name: 'role') final String role,
          @JsonKey(name: 'password') required final String password,
          @JsonKey(name: 'c_password') required final String confirmPassword}) =
      _$_RegisterRequest;

  factory _RegisterRequest.fromJson(Map<String, dynamic> json) =
      _$_RegisterRequest.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'nik')
  String get nik;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'role')
  String get role;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(name: 'c_password')
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterRequestCopyWith<_$_RegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

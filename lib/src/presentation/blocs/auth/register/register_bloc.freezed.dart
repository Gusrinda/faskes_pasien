// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  FormzStatus get status => throw _privateConstructorUsedError;
  FormTextInput get fieldName => throw _privateConstructorUsedError;
  FormTextInput get fieldUsername => throw _privateConstructorUsedError;
  FormTextInput get fieldEmail => throw _privateConstructorUsedError;
  FormTextInput get fieldNik => throw _privateConstructorUsedError;
  PhoneCountryData? get phoneCountryData => throw _privateConstructorUsedError;
  FormTextInput get fieldPhone => throw _privateConstructorUsedError;
  FormTextInput get fieldPassword => throw _privateConstructorUsedError;
  FormTextInput get fieldConfirmPassword => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  bool get obscureConfirmPassword => throw _privateConstructorUsedError;
  RegisterUserModel? get registerUserModel =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {FormzStatus status,
      FormTextInput fieldName,
      FormTextInput fieldUsername,
      FormTextInput fieldEmail,
      FormTextInput fieldNik,
      PhoneCountryData? phoneCountryData,
      FormTextInput fieldPhone,
      FormTextInput fieldPassword,
      FormTextInput fieldConfirmPassword,
      bool obscurePassword,
      bool obscureConfirmPassword,
      RegisterUserModel? registerUserModel,
      String? error});

  $RegisterUserModelCopyWith<$Res>? get registerUserModel;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? fieldName = freezed,
    Object? fieldUsername = freezed,
    Object? fieldEmail = freezed,
    Object? fieldNik = freezed,
    Object? phoneCountryData = freezed,
    Object? fieldPhone = freezed,
    Object? fieldPassword = freezed,
    Object? fieldConfirmPassword = freezed,
    Object? obscurePassword = freezed,
    Object? obscureConfirmPassword = freezed,
    Object? registerUserModel = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      fieldName: fieldName == freezed
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldUsername: fieldUsername == freezed
          ? _value.fieldUsername
          : fieldUsername // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldEmail: fieldEmail == freezed
          ? _value.fieldEmail
          : fieldEmail // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldNik: fieldNik == freezed
          ? _value.fieldNik
          : fieldNik // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      phoneCountryData: phoneCountryData == freezed
          ? _value.phoneCountryData
          : phoneCountryData // ignore: cast_nullable_to_non_nullable
              as PhoneCountryData?,
      fieldPhone: fieldPhone == freezed
          ? _value.fieldPhone
          : fieldPhone // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldPassword: fieldPassword == freezed
          ? _value.fieldPassword
          : fieldPassword // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldConfirmPassword: fieldConfirmPassword == freezed
          ? _value.fieldConfirmPassword
          : fieldConfirmPassword // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      obscurePassword: obscurePassword == freezed
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureConfirmPassword: obscureConfirmPassword == freezed
          ? _value.obscureConfirmPassword
          : obscureConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      registerUserModel: registerUserModel == freezed
          ? _value.registerUserModel
          : registerUserModel // ignore: cast_nullable_to_non_nullable
              as RegisterUserModel?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $RegisterUserModelCopyWith<$Res>? get registerUserModel {
    if (_value.registerUserModel == null) {
      return null;
    }

    return $RegisterUserModelCopyWith<$Res>(_value.registerUserModel!, (value) {
      return _then(_value.copyWith(registerUserModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FormzStatus status,
      FormTextInput fieldName,
      FormTextInput fieldUsername,
      FormTextInput fieldEmail,
      FormTextInput fieldNik,
      PhoneCountryData? phoneCountryData,
      FormTextInput fieldPhone,
      FormTextInput fieldPassword,
      FormTextInput fieldConfirmPassword,
      bool obscurePassword,
      bool obscureConfirmPassword,
      RegisterUserModel? registerUserModel,
      String? error});

  @override
  $RegisterUserModelCopyWith<$Res>? get registerUserModel;
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, (v) => _then(v as _$_RegisterState));

  @override
  _$_RegisterState get _value => super._value as _$_RegisterState;

  @override
  $Res call({
    Object? status = freezed,
    Object? fieldName = freezed,
    Object? fieldUsername = freezed,
    Object? fieldEmail = freezed,
    Object? fieldNik = freezed,
    Object? phoneCountryData = freezed,
    Object? fieldPhone = freezed,
    Object? fieldPassword = freezed,
    Object? fieldConfirmPassword = freezed,
    Object? obscurePassword = freezed,
    Object? obscureConfirmPassword = freezed,
    Object? registerUserModel = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_RegisterState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      fieldName: fieldName == freezed
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldUsername: fieldUsername == freezed
          ? _value.fieldUsername
          : fieldUsername // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldEmail: fieldEmail == freezed
          ? _value.fieldEmail
          : fieldEmail // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldNik: fieldNik == freezed
          ? _value.fieldNik
          : fieldNik // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      phoneCountryData: phoneCountryData == freezed
          ? _value.phoneCountryData
          : phoneCountryData // ignore: cast_nullable_to_non_nullable
              as PhoneCountryData?,
      fieldPhone: fieldPhone == freezed
          ? _value.fieldPhone
          : fieldPhone // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldPassword: fieldPassword == freezed
          ? _value.fieldPassword
          : fieldPassword // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldConfirmPassword: fieldConfirmPassword == freezed
          ? _value.fieldConfirmPassword
          : fieldConfirmPassword // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      obscurePassword: obscurePassword == freezed
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureConfirmPassword: obscureConfirmPassword == freezed
          ? _value.obscureConfirmPassword
          : obscureConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      registerUserModel: registerUserModel == freezed
          ? _value.registerUserModel
          : registerUserModel // ignore: cast_nullable_to_non_nullable
              as RegisterUserModel?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {this.status = FormzStatus.pure,
      required this.fieldName,
      required this.fieldUsername,
      required this.fieldEmail,
      required this.fieldNik,
      this.phoneCountryData,
      required this.fieldPhone,
      required this.fieldPassword,
      required this.fieldConfirmPassword,
      this.obscurePassword = true,
      this.obscureConfirmPassword = true,
      this.registerUserModel,
      this.error});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  final FormTextInput fieldName;
  @override
  final FormTextInput fieldUsername;
  @override
  final FormTextInput fieldEmail;
  @override
  final FormTextInput fieldNik;
  @override
  final PhoneCountryData? phoneCountryData;
  @override
  final FormTextInput fieldPhone;
  @override
  final FormTextInput fieldPassword;
  @override
  final FormTextInput fieldConfirmPassword;
  @override
  @JsonKey()
  final bool obscurePassword;
  @override
  @JsonKey()
  final bool obscureConfirmPassword;
  @override
  final RegisterUserModel? registerUserModel;
  @override
  final String? error;

  @override
  String toString() {
    return 'RegisterState(status: $status, fieldName: $fieldName, fieldUsername: $fieldUsername, fieldEmail: $fieldEmail, fieldNik: $fieldNik, phoneCountryData: $phoneCountryData, fieldPhone: $fieldPhone, fieldPassword: $fieldPassword, fieldConfirmPassword: $fieldConfirmPassword, obscurePassword: $obscurePassword, obscureConfirmPassword: $obscureConfirmPassword, registerUserModel: $registerUserModel, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.fieldName, fieldName) &&
            const DeepCollectionEquality()
                .equals(other.fieldUsername, fieldUsername) &&
            const DeepCollectionEquality()
                .equals(other.fieldEmail, fieldEmail) &&
            const DeepCollectionEquality().equals(other.fieldNik, fieldNik) &&
            const DeepCollectionEquality()
                .equals(other.phoneCountryData, phoneCountryData) &&
            const DeepCollectionEquality()
                .equals(other.fieldPhone, fieldPhone) &&
            const DeepCollectionEquality()
                .equals(other.fieldPassword, fieldPassword) &&
            const DeepCollectionEquality()
                .equals(other.fieldConfirmPassword, fieldConfirmPassword) &&
            const DeepCollectionEquality()
                .equals(other.obscurePassword, obscurePassword) &&
            const DeepCollectionEquality()
                .equals(other.obscureConfirmPassword, obscureConfirmPassword) &&
            const DeepCollectionEquality()
                .equals(other.registerUserModel, registerUserModel) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(fieldName),
      const DeepCollectionEquality().hash(fieldUsername),
      const DeepCollectionEquality().hash(fieldEmail),
      const DeepCollectionEquality().hash(fieldNik),
      const DeepCollectionEquality().hash(phoneCountryData),
      const DeepCollectionEquality().hash(fieldPhone),
      const DeepCollectionEquality().hash(fieldPassword),
      const DeepCollectionEquality().hash(fieldConfirmPassword),
      const DeepCollectionEquality().hash(obscurePassword),
      const DeepCollectionEquality().hash(obscureConfirmPassword),
      const DeepCollectionEquality().hash(registerUserModel),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final FormzStatus status,
      required final FormTextInput fieldName,
      required final FormTextInput fieldUsername,
      required final FormTextInput fieldEmail,
      required final FormTextInput fieldNik,
      final PhoneCountryData? phoneCountryData,
      required final FormTextInput fieldPhone,
      required final FormTextInput fieldPassword,
      required final FormTextInput fieldConfirmPassword,
      final bool obscurePassword,
      final bool obscureConfirmPassword,
      final RegisterUserModel? registerUserModel,
      final String? error}) = _$_RegisterState;

  @override
  FormzStatus get status;
  @override
  FormTextInput get fieldName;
  @override
  FormTextInput get fieldUsername;
  @override
  FormTextInput get fieldEmail;
  @override
  FormTextInput get fieldNik;
  @override
  PhoneCountryData? get phoneCountryData;
  @override
  FormTextInput get fieldPhone;
  @override
  FormTextInput get fieldPassword;
  @override
  FormTextInput get fieldConfirmPassword;
  @override
  bool get obscurePassword;
  @override
  bool get obscureConfirmPassword;
  @override
  RegisterUserModel? get registerUserModel;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

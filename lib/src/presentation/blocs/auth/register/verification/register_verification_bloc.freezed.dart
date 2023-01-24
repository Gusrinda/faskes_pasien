// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterVerificationState {
  FormzStatus get status => throw _privateConstructorUsedError;
  FormTextInput get fieldOTP => throw _privateConstructorUsedError;
  ToastData? get toastData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterVerificationStateCopyWith<RegisterVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterVerificationStateCopyWith<$Res> {
  factory $RegisterVerificationStateCopyWith(RegisterVerificationState value,
          $Res Function(RegisterVerificationState) then) =
      _$RegisterVerificationStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status, FormTextInput fieldOTP, ToastData? toastData});
}

/// @nodoc
class _$RegisterVerificationStateCopyWithImpl<$Res>
    implements $RegisterVerificationStateCopyWith<$Res> {
  _$RegisterVerificationStateCopyWithImpl(this._value, this._then);

  final RegisterVerificationState _value;
  // ignore: unused_field
  final $Res Function(RegisterVerificationState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? fieldOTP = freezed,
    Object? toastData = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      fieldOTP: fieldOTP == freezed
          ? _value.fieldOTP
          : fieldOTP // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      toastData: toastData == freezed
          ? _value.toastData
          : toastData // ignore: cast_nullable_to_non_nullable
              as ToastData?,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterVerificationStateCopyWith<$Res>
    implements $RegisterVerificationStateCopyWith<$Res> {
  factory _$$_RegisterVerificationStateCopyWith(
          _$_RegisterVerificationState value,
          $Res Function(_$_RegisterVerificationState) then) =
      __$$_RegisterVerificationStateCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status, FormTextInput fieldOTP, ToastData? toastData});
}

/// @nodoc
class __$$_RegisterVerificationStateCopyWithImpl<$Res>
    extends _$RegisterVerificationStateCopyWithImpl<$Res>
    implements _$$_RegisterVerificationStateCopyWith<$Res> {
  __$$_RegisterVerificationStateCopyWithImpl(
      _$_RegisterVerificationState _value,
      $Res Function(_$_RegisterVerificationState) _then)
      : super(_value, (v) => _then(v as _$_RegisterVerificationState));

  @override
  _$_RegisterVerificationState get _value =>
      super._value as _$_RegisterVerificationState;

  @override
  $Res call({
    Object? status = freezed,
    Object? fieldOTP = freezed,
    Object? toastData = freezed,
  }) {
    return _then(_$_RegisterVerificationState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      fieldOTP: fieldOTP == freezed
          ? _value.fieldOTP
          : fieldOTP // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      toastData: toastData == freezed
          ? _value.toastData
          : toastData // ignore: cast_nullable_to_non_nullable
              as ToastData?,
    ));
  }
}

/// @nodoc

class _$_RegisterVerificationState implements _RegisterVerificationState {
  const _$_RegisterVerificationState(
      {this.status = FormzStatus.pure, required this.fieldOTP, this.toastData});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  final FormTextInput fieldOTP;
  @override
  final ToastData? toastData;

  @override
  String toString() {
    return 'RegisterVerificationState(status: $status, fieldOTP: $fieldOTP, toastData: $toastData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterVerificationState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.fieldOTP, fieldOTP) &&
            const DeepCollectionEquality().equals(other.toastData, toastData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(fieldOTP),
      const DeepCollectionEquality().hash(toastData));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterVerificationStateCopyWith<_$_RegisterVerificationState>
      get copyWith => __$$_RegisterVerificationStateCopyWithImpl<
          _$_RegisterVerificationState>(this, _$identity);
}

abstract class _RegisterVerificationState implements RegisterVerificationState {
  const factory _RegisterVerificationState(
      {final FormzStatus status,
      required final FormTextInput fieldOTP,
      final ToastData? toastData}) = _$_RegisterVerificationState;

  @override
  FormzStatus get status;
  @override
  FormTextInput get fieldOTP;
  @override
  ToastData? get toastData;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterVerificationStateCopyWith<_$_RegisterVerificationState>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'general_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneralApiResponse _$GeneralApiResponseFromJson(Map<String, dynamic> json) {
  return _GeneralApiResponse.fromJson(json);
}

/// @nodoc
mixin _$GeneralApiResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Object? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralApiResponseCopyWith<GeneralApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralApiResponseCopyWith<$Res> {
  factory $GeneralApiResponseCopyWith(
          GeneralApiResponse value, $Res Function(GeneralApiResponse) then) =
      _$GeneralApiResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, Object? data});
}

/// @nodoc
class _$GeneralApiResponseCopyWithImpl<$Res>
    implements $GeneralApiResponseCopyWith<$Res> {
  _$GeneralApiResponseCopyWithImpl(this._value, this._then);

  final GeneralApiResponse _value;
  // ignore: unused_field
  final $Res Function(GeneralApiResponse) _then;

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
      data: data == freezed ? _value.data : data,
    ));
  }
}

/// @nodoc
abstract class _$$_GeneralApiResponseCopyWith<$Res>
    implements $GeneralApiResponseCopyWith<$Res> {
  factory _$$_GeneralApiResponseCopyWith(_$_GeneralApiResponse value,
          $Res Function(_$_GeneralApiResponse) then) =
      __$$_GeneralApiResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, Object? data});
}

/// @nodoc
class __$$_GeneralApiResponseCopyWithImpl<$Res>
    extends _$GeneralApiResponseCopyWithImpl<$Res>
    implements _$$_GeneralApiResponseCopyWith<$Res> {
  __$$_GeneralApiResponseCopyWithImpl(
      _$_GeneralApiResponse _value, $Res Function(_$_GeneralApiResponse) _then)
      : super(_value, (v) => _then(v as _$_GeneralApiResponse));

  @override
  _$_GeneralApiResponse get _value => super._value as _$_GeneralApiResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_GeneralApiResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed ? _value.data : data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralApiResponse implements _GeneralApiResponse {
  const _$_GeneralApiResponse({required this.success, this.message, this.data});

  factory _$_GeneralApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralApiResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  final Object? data;

  @override
  String toString() {
    return 'GeneralApiResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralApiResponse &&
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
  _$$_GeneralApiResponseCopyWith<_$_GeneralApiResponse> get copyWith =>
      __$$_GeneralApiResponseCopyWithImpl<_$_GeneralApiResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralApiResponseToJson(
      this,
    );
  }
}

abstract class _GeneralApiResponse implements GeneralApiResponse {
  const factory _GeneralApiResponse(
      {required final bool success,
      final String? message,
      final Object? data}) = _$_GeneralApiResponse;

  factory _GeneralApiResponse.fromJson(Map<String, dynamic> json) =
      _$_GeneralApiResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  Object? get data;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralApiResponseCopyWith<_$_GeneralApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

NumberApiResponse _$NumberApiResponseFromJson(Map<String, dynamic> json) {
  return _NumberApiResponse.fromJson(json);
}

/// @nodoc
mixin _$NumberApiResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  num? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberApiResponseCopyWith<NumberApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberApiResponseCopyWith<$Res> {
  factory $NumberApiResponseCopyWith(
          NumberApiResponse value, $Res Function(NumberApiResponse) then) =
      _$NumberApiResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, num? data});
}

/// @nodoc
class _$NumberApiResponseCopyWithImpl<$Res>
    implements $NumberApiResponseCopyWith<$Res> {
  _$NumberApiResponseCopyWithImpl(this._value, this._then);

  final NumberApiResponse _value;
  // ignore: unused_field
  final $Res Function(NumberApiResponse) _then;

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
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$$_NumberApiResponseCopyWith<$Res>
    implements $NumberApiResponseCopyWith<$Res> {
  factory _$$_NumberApiResponseCopyWith(_$_NumberApiResponse value,
          $Res Function(_$_NumberApiResponse) then) =
      __$$_NumberApiResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, num? data});
}

/// @nodoc
class __$$_NumberApiResponseCopyWithImpl<$Res>
    extends _$NumberApiResponseCopyWithImpl<$Res>
    implements _$$_NumberApiResponseCopyWith<$Res> {
  __$$_NumberApiResponseCopyWithImpl(
      _$_NumberApiResponse _value, $Res Function(_$_NumberApiResponse) _then)
      : super(_value, (v) => _then(v as _$_NumberApiResponse));

  @override
  _$_NumberApiResponse get _value => super._value as _$_NumberApiResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_NumberApiResponse(
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
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NumberApiResponse implements _NumberApiResponse {
  const _$_NumberApiResponse({required this.success, this.message, this.data});

  factory _$_NumberApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NumberApiResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  final num? data;

  @override
  String toString() {
    return 'NumberApiResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberApiResponse &&
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
  _$$_NumberApiResponseCopyWith<_$_NumberApiResponse> get copyWith =>
      __$$_NumberApiResponseCopyWithImpl<_$_NumberApiResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NumberApiResponseToJson(
      this,
    );
  }
}

abstract class _NumberApiResponse implements NumberApiResponse {
  const factory _NumberApiResponse(
      {required final bool success,
      final String? message,
      final num? data}) = _$_NumberApiResponse;

  factory _NumberApiResponse.fromJson(Map<String, dynamic> json) =
      _$_NumberApiResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  num? get data;
  @override
  @JsonKey(ignore: true)
  _$$_NumberApiResponseCopyWith<_$_NumberApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

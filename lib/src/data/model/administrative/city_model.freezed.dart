// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityListResponse _$CityListResponseFromJson(Map<String, dynamic> json) {
  return _CityListResponse.fromJson(json);
}

/// @nodoc
mixin _$CityListResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<CityModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityListResponseCopyWith<CityListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityListResponseCopyWith<$Res> {
  factory $CityListResponseCopyWith(
          CityListResponse value, $Res Function(CityListResponse) then) =
      _$CityListResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, List<CityModel>? data});
}

/// @nodoc
class _$CityListResponseCopyWithImpl<$Res>
    implements $CityListResponseCopyWith<$Res> {
  _$CityListResponseCopyWithImpl(this._value, this._then);

  final CityListResponse _value;
  // ignore: unused_field
  final $Res Function(CityListResponse) _then;

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
              as List<CityModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CityListResponseCopyWith<$Res>
    implements $CityListResponseCopyWith<$Res> {
  factory _$$_CityListResponseCopyWith(
          _$_CityListResponse value, $Res Function(_$_CityListResponse) then) =
      __$$_CityListResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, List<CityModel>? data});
}

/// @nodoc
class __$$_CityListResponseCopyWithImpl<$Res>
    extends _$CityListResponseCopyWithImpl<$Res>
    implements _$$_CityListResponseCopyWith<$Res> {
  __$$_CityListResponseCopyWithImpl(
      _$_CityListResponse _value, $Res Function(_$_CityListResponse) _then)
      : super(_value, (v) => _then(v as _$_CityListResponse));

  @override
  _$_CityListResponse get _value => super._value as _$_CityListResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CityListResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CityModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityListResponse implements _CityListResponse {
  const _$_CityListResponse(
      {required this.success, this.message, final List<CityModel>? data})
      : _data = data;

  factory _$_CityListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CityListResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  final List<CityModel>? _data;
  @override
  List<CityModel>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CityListResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityListResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_CityListResponseCopyWith<_$_CityListResponse> get copyWith =>
      __$$_CityListResponseCopyWithImpl<_$_CityListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityListResponseToJson(
      this,
    );
  }
}

abstract class _CityListResponse implements CityListResponse {
  const factory _CityListResponse(
      {required final bool success,
      final String? message,
      final List<CityModel>? data}) = _$_CityListResponse;

  factory _CityListResponse.fromJson(Map<String, dynamic> json) =
      _$_CityListResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<CityModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CityListResponseCopyWith<_$_CityListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return _CityModel.fromJson(json);
}

/// @nodoc
mixin _$CityModel {
  @JsonKey(name: 'kode')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_1')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'kode') String code,
      @JsonKey(name: 'value_1') String name});
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res> implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  final CityModel _value;
  // ignore: unused_field
  final $Res Function(CityModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$$_CityModelCopyWith(
          _$_CityModel value, $Res Function(_$_CityModel) then) =
      __$$_CityModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'kode') String code,
      @JsonKey(name: 'value_1') String name});
}

/// @nodoc
class __$$_CityModelCopyWithImpl<$Res> extends _$CityModelCopyWithImpl<$Res>
    implements _$$_CityModelCopyWith<$Res> {
  __$$_CityModelCopyWithImpl(
      _$_CityModel _value, $Res Function(_$_CityModel) _then)
      : super(_value, (v) => _then(v as _$_CityModel));

  @override
  _$_CityModel get _value => super._value as _$_CityModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CityModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityModel implements _CityModel {
  const _$_CityModel(
      {@JsonKey(name: 'kode') required this.code,
      @JsonKey(name: 'value_1') required this.name});

  factory _$_CityModel.fromJson(Map<String, dynamic> json) =>
      _$$_CityModelFromJson(json);

  @override
  @JsonKey(name: 'kode')
  final String code;
  @override
  @JsonKey(name: 'value_1')
  final String name;

  @override
  String toString() {
    return 'CityModel(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      __$$_CityModelCopyWithImpl<_$_CityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityModelToJson(
      this,
    );
  }
}

abstract class _CityModel implements CityModel {
  const factory _CityModel(
      {@JsonKey(name: 'kode') required final String code,
      @JsonKey(name: 'value_1') required final String name}) = _$_CityModel;

  factory _CityModel.fromJson(Map<String, dynamic> json) =
      _$_CityModel.fromJson;

  @override
  @JsonKey(name: 'kode')
  String get code;
  @override
  @JsonKey(name: 'value_1')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

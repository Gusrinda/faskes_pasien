// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'district_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DistrictListResponse _$DistrictListResponseFromJson(Map<String, dynamic> json) {
  return _DistrictListResponse.fromJson(json);
}

/// @nodoc
mixin _$DistrictListResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<DistrictModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictListResponseCopyWith<DistrictListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictListResponseCopyWith<$Res> {
  factory $DistrictListResponseCopyWith(DistrictListResponse value,
          $Res Function(DistrictListResponse) then) =
      _$DistrictListResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, List<DistrictModel>? data});
}

/// @nodoc
class _$DistrictListResponseCopyWithImpl<$Res>
    implements $DistrictListResponseCopyWith<$Res> {
  _$DistrictListResponseCopyWithImpl(this._value, this._then);

  final DistrictListResponse _value;
  // ignore: unused_field
  final $Res Function(DistrictListResponse) _then;

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
              as List<DistrictModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_DistrictListResponseCopyWith<$Res>
    implements $DistrictListResponseCopyWith<$Res> {
  factory _$$_DistrictListResponseCopyWith(_$_DistrictListResponse value,
          $Res Function(_$_DistrictListResponse) then) =
      __$$_DistrictListResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, List<DistrictModel>? data});
}

/// @nodoc
class __$$_DistrictListResponseCopyWithImpl<$Res>
    extends _$DistrictListResponseCopyWithImpl<$Res>
    implements _$$_DistrictListResponseCopyWith<$Res> {
  __$$_DistrictListResponseCopyWithImpl(_$_DistrictListResponse _value,
      $Res Function(_$_DistrictListResponse) _then)
      : super(_value, (v) => _then(v as _$_DistrictListResponse));

  @override
  _$_DistrictListResponse get _value => super._value as _$_DistrictListResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DistrictListResponse(
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
              as List<DistrictModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DistrictListResponse implements _DistrictListResponse {
  const _$_DistrictListResponse(
      {required this.success, this.message, final List<DistrictModel>? data})
      : _data = data;

  factory _$_DistrictListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DistrictListResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  final List<DistrictModel>? _data;
  @override
  List<DistrictModel>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DistrictListResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DistrictListResponse &&
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
  _$$_DistrictListResponseCopyWith<_$_DistrictListResponse> get copyWith =>
      __$$_DistrictListResponseCopyWithImpl<_$_DistrictListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DistrictListResponseToJson(
      this,
    );
  }
}

abstract class _DistrictListResponse implements DistrictListResponse {
  const factory _DistrictListResponse(
      {required final bool success,
      final String? message,
      final List<DistrictModel>? data}) = _$_DistrictListResponse;

  factory _DistrictListResponse.fromJson(Map<String, dynamic> json) =
      _$_DistrictListResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<DistrictModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DistrictListResponseCopyWith<_$_DistrictListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DistrictModel _$DistrictModelFromJson(Map<String, dynamic> json) {
  return _DistrictModel.fromJson(json);
}

/// @nodoc
mixin _$DistrictModel {
  @JsonKey(name: 'kode')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_1')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictModelCopyWith<DistrictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictModelCopyWith<$Res> {
  factory $DistrictModelCopyWith(
          DistrictModel value, $Res Function(DistrictModel) then) =
      _$DistrictModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'kode') String code,
      @JsonKey(name: 'value_1') String name});
}

/// @nodoc
class _$DistrictModelCopyWithImpl<$Res>
    implements $DistrictModelCopyWith<$Res> {
  _$DistrictModelCopyWithImpl(this._value, this._then);

  final DistrictModel _value;
  // ignore: unused_field
  final $Res Function(DistrictModel) _then;

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
abstract class _$$_DistrictModelCopyWith<$Res>
    implements $DistrictModelCopyWith<$Res> {
  factory _$$_DistrictModelCopyWith(
          _$_DistrictModel value, $Res Function(_$_DistrictModel) then) =
      __$$_DistrictModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'kode') String code,
      @JsonKey(name: 'value_1') String name});
}

/// @nodoc
class __$$_DistrictModelCopyWithImpl<$Res>
    extends _$DistrictModelCopyWithImpl<$Res>
    implements _$$_DistrictModelCopyWith<$Res> {
  __$$_DistrictModelCopyWithImpl(
      _$_DistrictModel _value, $Res Function(_$_DistrictModel) _then)
      : super(_value, (v) => _then(v as _$_DistrictModel));

  @override
  _$_DistrictModel get _value => super._value as _$_DistrictModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DistrictModel(
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
class _$_DistrictModel implements _DistrictModel {
  const _$_DistrictModel(
      {@JsonKey(name: 'kode') required this.code,
      @JsonKey(name: 'value_1') required this.name});

  factory _$_DistrictModel.fromJson(Map<String, dynamic> json) =>
      _$$_DistrictModelFromJson(json);

  @override
  @JsonKey(name: 'kode')
  final String code;
  @override
  @JsonKey(name: 'value_1')
  final String name;

  @override
  String toString() {
    return 'DistrictModel(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DistrictModel &&
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
  _$$_DistrictModelCopyWith<_$_DistrictModel> get copyWith =>
      __$$_DistrictModelCopyWithImpl<_$_DistrictModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DistrictModelToJson(
      this,
    );
  }
}

abstract class _DistrictModel implements DistrictModel {
  const factory _DistrictModel(
      {@JsonKey(name: 'kode') required final String code,
      @JsonKey(name: 'value_1') required final String name}) = _$_DistrictModel;

  factory _DistrictModel.fromJson(Map<String, dynamic> json) =
      _$_DistrictModel.fromJson;

  @override
  @JsonKey(name: 'kode')
  String get code;
  @override
  @JsonKey(name: 'value_1')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DistrictModelCopyWith<_$_DistrictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

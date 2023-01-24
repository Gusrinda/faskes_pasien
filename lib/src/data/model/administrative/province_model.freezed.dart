// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'province_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProvinceListResponse _$ProvinceListResponseFromJson(Map<String, dynamic> json) {
  return _ProvinceListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProvinceListResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ProvinceModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceListResponseCopyWith<ProvinceListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceListResponseCopyWith<$Res> {
  factory $ProvinceListResponseCopyWith(ProvinceListResponse value,
          $Res Function(ProvinceListResponse) then) =
      _$ProvinceListResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, List<ProvinceModel>? data});
}

/// @nodoc
class _$ProvinceListResponseCopyWithImpl<$Res>
    implements $ProvinceListResponseCopyWith<$Res> {
  _$ProvinceListResponseCopyWithImpl(this._value, this._then);

  final ProvinceListResponse _value;
  // ignore: unused_field
  final $Res Function(ProvinceListResponse) _then;

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
              as List<ProvinceModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProvinceListResponseCopyWith<$Res>
    implements $ProvinceListResponseCopyWith<$Res> {
  factory _$$_ProvinceListResponseCopyWith(_$_ProvinceListResponse value,
          $Res Function(_$_ProvinceListResponse) then) =
      __$$_ProvinceListResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, List<ProvinceModel>? data});
}

/// @nodoc
class __$$_ProvinceListResponseCopyWithImpl<$Res>
    extends _$ProvinceListResponseCopyWithImpl<$Res>
    implements _$$_ProvinceListResponseCopyWith<$Res> {
  __$$_ProvinceListResponseCopyWithImpl(_$_ProvinceListResponse _value,
      $Res Function(_$_ProvinceListResponse) _then)
      : super(_value, (v) => _then(v as _$_ProvinceListResponse));

  @override
  _$_ProvinceListResponse get _value => super._value as _$_ProvinceListResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ProvinceListResponse(
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
              as List<ProvinceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProvinceListResponse implements _ProvinceListResponse {
  const _$_ProvinceListResponse(
      {required this.success, this.message, final List<ProvinceModel>? data})
      : _data = data;

  factory _$_ProvinceListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinceListResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  final List<ProvinceModel>? _data;
  @override
  List<ProvinceModel>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProvinceListResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvinceListResponse &&
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
  _$$_ProvinceListResponseCopyWith<_$_ProvinceListResponse> get copyWith =>
      __$$_ProvinceListResponseCopyWithImpl<_$_ProvinceListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinceListResponseToJson(
      this,
    );
  }
}

abstract class _ProvinceListResponse implements ProvinceListResponse {
  const factory _ProvinceListResponse(
      {required final bool success,
      final String? message,
      final List<ProvinceModel>? data}) = _$_ProvinceListResponse;

  factory _ProvinceListResponse.fromJson(Map<String, dynamic> json) =
      _$_ProvinceListResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<ProvinceModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ProvinceListResponseCopyWith<_$_ProvinceListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProvinceModel _$ProvinceModelFromJson(Map<String, dynamic> json) {
  return _ProvinceModel.fromJson(json);
}

/// @nodoc
mixin _$ProvinceModel {
  @JsonKey(name: 'kode')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_1')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceModelCopyWith<ProvinceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceModelCopyWith<$Res> {
  factory $ProvinceModelCopyWith(
          ProvinceModel value, $Res Function(ProvinceModel) then) =
      _$ProvinceModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'kode') String code,
      @JsonKey(name: 'value_1') String name});
}

/// @nodoc
class _$ProvinceModelCopyWithImpl<$Res>
    implements $ProvinceModelCopyWith<$Res> {
  _$ProvinceModelCopyWithImpl(this._value, this._then);

  final ProvinceModel _value;
  // ignore: unused_field
  final $Res Function(ProvinceModel) _then;

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
abstract class _$$_ProvinceModelCopyWith<$Res>
    implements $ProvinceModelCopyWith<$Res> {
  factory _$$_ProvinceModelCopyWith(
          _$_ProvinceModel value, $Res Function(_$_ProvinceModel) then) =
      __$$_ProvinceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'kode') String code,
      @JsonKey(name: 'value_1') String name});
}

/// @nodoc
class __$$_ProvinceModelCopyWithImpl<$Res>
    extends _$ProvinceModelCopyWithImpl<$Res>
    implements _$$_ProvinceModelCopyWith<$Res> {
  __$$_ProvinceModelCopyWithImpl(
      _$_ProvinceModel _value, $Res Function(_$_ProvinceModel) _then)
      : super(_value, (v) => _then(v as _$_ProvinceModel));

  @override
  _$_ProvinceModel get _value => super._value as _$_ProvinceModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ProvinceModel(
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
class _$_ProvinceModel implements _ProvinceModel {
  const _$_ProvinceModel(
      {@JsonKey(name: 'kode') required this.code,
      @JsonKey(name: 'value_1') required this.name});

  factory _$_ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinceModelFromJson(json);

  @override
  @JsonKey(name: 'kode')
  final String code;
  @override
  @JsonKey(name: 'value_1')
  final String name;

  @override
  String toString() {
    return 'ProvinceModel(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvinceModel &&
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
  _$$_ProvinceModelCopyWith<_$_ProvinceModel> get copyWith =>
      __$$_ProvinceModelCopyWithImpl<_$_ProvinceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinceModelToJson(
      this,
    );
  }
}

abstract class _ProvinceModel implements ProvinceModel {
  const factory _ProvinceModel(
      {@JsonKey(name: 'kode') required final String code,
      @JsonKey(name: 'value_1') required final String name}) = _$_ProvinceModel;

  factory _ProvinceModel.fromJson(Map<String, dynamic> json) =
      _$_ProvinceModel.fromJson;

  @override
  @JsonKey(name: 'kode')
  String get code;
  @override
  @JsonKey(name: 'value_1')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProvinceModelCopyWith<_$_ProvinceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

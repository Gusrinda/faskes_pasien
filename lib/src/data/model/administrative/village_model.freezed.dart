// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'village_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VillageListResponse _$VillageListResponseFromJson(Map<String, dynamic> json) {
  return _VillageListResponse.fromJson(json);
}

/// @nodoc
mixin _$VillageListResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<VillageModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VillageListResponseCopyWith<VillageListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillageListResponseCopyWith<$Res> {
  factory $VillageListResponseCopyWith(
          VillageListResponse value, $Res Function(VillageListResponse) then) =
      _$VillageListResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, List<VillageModel>? data});
}

/// @nodoc
class _$VillageListResponseCopyWithImpl<$Res>
    implements $VillageListResponseCopyWith<$Res> {
  _$VillageListResponseCopyWithImpl(this._value, this._then);

  final VillageListResponse _value;
  // ignore: unused_field
  final $Res Function(VillageListResponse) _then;

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
              as List<VillageModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_VillageListResponseCopyWith<$Res>
    implements $VillageListResponseCopyWith<$Res> {
  factory _$$_VillageListResponseCopyWith(_$_VillageListResponse value,
          $Res Function(_$_VillageListResponse) then) =
      __$$_VillageListResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, List<VillageModel>? data});
}

/// @nodoc
class __$$_VillageListResponseCopyWithImpl<$Res>
    extends _$VillageListResponseCopyWithImpl<$Res>
    implements _$$_VillageListResponseCopyWith<$Res> {
  __$$_VillageListResponseCopyWithImpl(_$_VillageListResponse _value,
      $Res Function(_$_VillageListResponse) _then)
      : super(_value, (v) => _then(v as _$_VillageListResponse));

  @override
  _$_VillageListResponse get _value => super._value as _$_VillageListResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_VillageListResponse(
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
              as List<VillageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VillageListResponse implements _VillageListResponse {
  const _$_VillageListResponse(
      {required this.success, this.message, final List<VillageModel>? data})
      : _data = data;

  factory _$_VillageListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VillageListResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  final List<VillageModel>? _data;
  @override
  List<VillageModel>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VillageListResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VillageListResponse &&
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
  _$$_VillageListResponseCopyWith<_$_VillageListResponse> get copyWith =>
      __$$_VillageListResponseCopyWithImpl<_$_VillageListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VillageListResponseToJson(
      this,
    );
  }
}

abstract class _VillageListResponse implements VillageListResponse {
  const factory _VillageListResponse(
      {required final bool success,
      final String? message,
      final List<VillageModel>? data}) = _$_VillageListResponse;

  factory _VillageListResponse.fromJson(Map<String, dynamic> json) =
      _$_VillageListResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<VillageModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_VillageListResponseCopyWith<_$_VillageListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

VillageModel _$VillageModelFromJson(Map<String, dynamic> json) {
  return _VillageModel.fromJson(json);
}

/// @nodoc
mixin _$VillageModel {
  @JsonKey(name: 'kode')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_1')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VillageModelCopyWith<VillageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillageModelCopyWith<$Res> {
  factory $VillageModelCopyWith(
          VillageModel value, $Res Function(VillageModel) then) =
      _$VillageModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'kode') String code,
      @JsonKey(name: 'value_1') String name});
}

/// @nodoc
class _$VillageModelCopyWithImpl<$Res> implements $VillageModelCopyWith<$Res> {
  _$VillageModelCopyWithImpl(this._value, this._then);

  final VillageModel _value;
  // ignore: unused_field
  final $Res Function(VillageModel) _then;

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
abstract class _$$_VillageModelCopyWith<$Res>
    implements $VillageModelCopyWith<$Res> {
  factory _$$_VillageModelCopyWith(
          _$_VillageModel value, $Res Function(_$_VillageModel) then) =
      __$$_VillageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'kode') String code,
      @JsonKey(name: 'value_1') String name});
}

/// @nodoc
class __$$_VillageModelCopyWithImpl<$Res>
    extends _$VillageModelCopyWithImpl<$Res>
    implements _$$_VillageModelCopyWith<$Res> {
  __$$_VillageModelCopyWithImpl(
      _$_VillageModel _value, $Res Function(_$_VillageModel) _then)
      : super(_value, (v) => _then(v as _$_VillageModel));

  @override
  _$_VillageModel get _value => super._value as _$_VillageModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_VillageModel(
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
class _$_VillageModel implements _VillageModel {
  const _$_VillageModel(
      {@JsonKey(name: 'kode') required this.code,
      @JsonKey(name: 'value_1') required this.name});

  factory _$_VillageModel.fromJson(Map<String, dynamic> json) =>
      _$$_VillageModelFromJson(json);

  @override
  @JsonKey(name: 'kode')
  final String code;
  @override
  @JsonKey(name: 'value_1')
  final String name;

  @override
  String toString() {
    return 'VillageModel(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VillageModel &&
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
  _$$_VillageModelCopyWith<_$_VillageModel> get copyWith =>
      __$$_VillageModelCopyWithImpl<_$_VillageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VillageModelToJson(
      this,
    );
  }
}

abstract class _VillageModel implements VillageModel {
  const factory _VillageModel(
      {@JsonKey(name: 'kode') required final String code,
      @JsonKey(name: 'value_1') required final String name}) = _$_VillageModel;

  factory _VillageModel.fromJson(Map<String, dynamic> json) =
      _$_VillageModel.fromJson;

  @override
  @JsonKey(name: 'kode')
  String get code;
  @override
  @JsonKey(name: 'value_1')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_VillageModelCopyWith<_$_VillageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

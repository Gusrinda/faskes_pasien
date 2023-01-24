// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'insurance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsuranceState _$InsuranceStateFromJson(Map<String, dynamic> json) {
  return _InsuranceState.fromJson(json);
}

/// @nodoc
mixin _$InsuranceState {
  List<InsuranceModel>? get insuranceList => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuranceStateCopyWith<InsuranceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceStateCopyWith<$Res> {
  factory $InsuranceStateCopyWith(
          InsuranceState value, $Res Function(InsuranceState) then) =
      _$InsuranceStateCopyWithImpl<$Res>;
  $Res call({List<InsuranceModel>? insuranceList, String? error});
}

/// @nodoc
class _$InsuranceStateCopyWithImpl<$Res>
    implements $InsuranceStateCopyWith<$Res> {
  _$InsuranceStateCopyWithImpl(this._value, this._then);

  final InsuranceState _value;
  // ignore: unused_field
  final $Res Function(InsuranceState) _then;

  @override
  $Res call({
    Object? insuranceList = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      insuranceList: insuranceList == freezed
          ? _value.insuranceList
          : insuranceList // ignore: cast_nullable_to_non_nullable
              as List<InsuranceModel>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_InsuranceStateCopyWith<$Res>
    implements $InsuranceStateCopyWith<$Res> {
  factory _$$_InsuranceStateCopyWith(
          _$_InsuranceState value, $Res Function(_$_InsuranceState) then) =
      __$$_InsuranceStateCopyWithImpl<$Res>;
  @override
  $Res call({List<InsuranceModel>? insuranceList, String? error});
}

/// @nodoc
class __$$_InsuranceStateCopyWithImpl<$Res>
    extends _$InsuranceStateCopyWithImpl<$Res>
    implements _$$_InsuranceStateCopyWith<$Res> {
  __$$_InsuranceStateCopyWithImpl(
      _$_InsuranceState _value, $Res Function(_$_InsuranceState) _then)
      : super(_value, (v) => _then(v as _$_InsuranceState));

  @override
  _$_InsuranceState get _value => super._value as _$_InsuranceState;

  @override
  $Res call({
    Object? insuranceList = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_InsuranceState(
      insuranceList: insuranceList == freezed
          ? _value._insuranceList
          : insuranceList // ignore: cast_nullable_to_non_nullable
              as List<InsuranceModel>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsuranceState implements _InsuranceState {
  const _$_InsuranceState(
      {final List<InsuranceModel>? insuranceList, this.error})
      : _insuranceList = insuranceList;

  factory _$_InsuranceState.fromJson(Map<String, dynamic> json) =>
      _$$_InsuranceStateFromJson(json);

  final List<InsuranceModel>? _insuranceList;
  @override
  List<InsuranceModel>? get insuranceList {
    final value = _insuranceList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'InsuranceState(insuranceList: $insuranceList, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceState &&
            const DeepCollectionEquality()
                .equals(other._insuranceList, _insuranceList) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_insuranceList),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_InsuranceStateCopyWith<_$_InsuranceState> get copyWith =>
      __$$_InsuranceStateCopyWithImpl<_$_InsuranceState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsuranceStateToJson(
      this,
    );
  }
}

abstract class _InsuranceState implements InsuranceState {
  const factory _InsuranceState(
      {final List<InsuranceModel>? insuranceList,
      final String? error}) = _$_InsuranceState;

  factory _InsuranceState.fromJson(Map<String, dynamic> json) =
      _$_InsuranceState.fromJson;

  @override
  List<InsuranceModel>? get insuranceList;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_InsuranceStateCopyWith<_$_InsuranceState> get copyWith =>
      throw _privateConstructorUsedError;
}

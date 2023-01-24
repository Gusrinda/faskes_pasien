// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'family_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FamilyState _$FamilyStateFromJson(Map<String, dynamic> json) {
  return _FamilyState.fromJson(json);
}

/// @nodoc
mixin _$FamilyState {
  List<FamilyModel>? get familyList => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyStateCopyWith<FamilyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyStateCopyWith<$Res> {
  factory $FamilyStateCopyWith(
          FamilyState value, $Res Function(FamilyState) then) =
      _$FamilyStateCopyWithImpl<$Res>;
  $Res call({List<FamilyModel>? familyList, String? error});
}

/// @nodoc
class _$FamilyStateCopyWithImpl<$Res> implements $FamilyStateCopyWith<$Res> {
  _$FamilyStateCopyWithImpl(this._value, this._then);

  final FamilyState _value;
  // ignore: unused_field
  final $Res Function(FamilyState) _then;

  @override
  $Res call({
    Object? familyList = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      familyList: familyList == freezed
          ? _value.familyList
          : familyList // ignore: cast_nullable_to_non_nullable
              as List<FamilyModel>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FamilyStateCopyWith<$Res>
    implements $FamilyStateCopyWith<$Res> {
  factory _$$_FamilyStateCopyWith(
          _$_FamilyState value, $Res Function(_$_FamilyState) then) =
      __$$_FamilyStateCopyWithImpl<$Res>;
  @override
  $Res call({List<FamilyModel>? familyList, String? error});
}

/// @nodoc
class __$$_FamilyStateCopyWithImpl<$Res> extends _$FamilyStateCopyWithImpl<$Res>
    implements _$$_FamilyStateCopyWith<$Res> {
  __$$_FamilyStateCopyWithImpl(
      _$_FamilyState _value, $Res Function(_$_FamilyState) _then)
      : super(_value, (v) => _then(v as _$_FamilyState));

  @override
  _$_FamilyState get _value => super._value as _$_FamilyState;

  @override
  $Res call({
    Object? familyList = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_FamilyState(
      familyList: familyList == freezed
          ? _value._familyList
          : familyList // ignore: cast_nullable_to_non_nullable
              as List<FamilyModel>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FamilyState implements _FamilyState {
  const _$_FamilyState({final List<FamilyModel>? familyList, this.error})
      : _familyList = familyList;

  factory _$_FamilyState.fromJson(Map<String, dynamic> json) =>
      _$$_FamilyStateFromJson(json);

  final List<FamilyModel>? _familyList;
  @override
  List<FamilyModel>? get familyList {
    final value = _familyList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'FamilyState(familyList: $familyList, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FamilyState &&
            const DeepCollectionEquality()
                .equals(other._familyList, _familyList) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_familyList),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_FamilyStateCopyWith<_$_FamilyState> get copyWith =>
      __$$_FamilyStateCopyWithImpl<_$_FamilyState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamilyStateToJson(
      this,
    );
  }
}

abstract class _FamilyState implements FamilyState {
  const factory _FamilyState(
      {final List<FamilyModel>? familyList,
      final String? error}) = _$_FamilyState;

  factory _FamilyState.fromJson(Map<String, dynamic> json) =
      _$_FamilyState.fromJson;

  @override
  List<FamilyModel>? get familyList;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyStateCopyWith<_$_FamilyState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'administrative_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdministrativeState _$AdministrativeStateFromJson(Map<String, dynamic> json) {
  return _AdministrativeState.fromJson(json);
}

/// @nodoc
mixin _$AdministrativeState {
  List<ProvinceModel>? get provinceList => throw _privateConstructorUsedError;
  Map<String, List<CityModel>> get mapCityList =>
      throw _privateConstructorUsedError;
  Map<String, List<DistrictModel>> get mapDistrictList =>
      throw _privateConstructorUsedError;
  Map<String, List<VillageModel>> get mapVillageList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdministrativeStateCopyWith<AdministrativeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdministrativeStateCopyWith<$Res> {
  factory $AdministrativeStateCopyWith(
          AdministrativeState value, $Res Function(AdministrativeState) then) =
      _$AdministrativeStateCopyWithImpl<$Res>;
  $Res call(
      {List<ProvinceModel>? provinceList,
      Map<String, List<CityModel>> mapCityList,
      Map<String, List<DistrictModel>> mapDistrictList,
      Map<String, List<VillageModel>> mapVillageList});
}

/// @nodoc
class _$AdministrativeStateCopyWithImpl<$Res>
    implements $AdministrativeStateCopyWith<$Res> {
  _$AdministrativeStateCopyWithImpl(this._value, this._then);

  final AdministrativeState _value;
  // ignore: unused_field
  final $Res Function(AdministrativeState) _then;

  @override
  $Res call({
    Object? provinceList = freezed,
    Object? mapCityList = freezed,
    Object? mapDistrictList = freezed,
    Object? mapVillageList = freezed,
  }) {
    return _then(_value.copyWith(
      provinceList: provinceList == freezed
          ? _value.provinceList
          : provinceList // ignore: cast_nullable_to_non_nullable
              as List<ProvinceModel>?,
      mapCityList: mapCityList == freezed
          ? _value.mapCityList
          : mapCityList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<CityModel>>,
      mapDistrictList: mapDistrictList == freezed
          ? _value.mapDistrictList
          : mapDistrictList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<DistrictModel>>,
      mapVillageList: mapVillageList == freezed
          ? _value.mapVillageList
          : mapVillageList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<VillageModel>>,
    ));
  }
}

/// @nodoc
abstract class _$$_AdministrativeStateCopyWith<$Res>
    implements $AdministrativeStateCopyWith<$Res> {
  factory _$$_AdministrativeStateCopyWith(_$_AdministrativeState value,
          $Res Function(_$_AdministrativeState) then) =
      __$$_AdministrativeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ProvinceModel>? provinceList,
      Map<String, List<CityModel>> mapCityList,
      Map<String, List<DistrictModel>> mapDistrictList,
      Map<String, List<VillageModel>> mapVillageList});
}

/// @nodoc
class __$$_AdministrativeStateCopyWithImpl<$Res>
    extends _$AdministrativeStateCopyWithImpl<$Res>
    implements _$$_AdministrativeStateCopyWith<$Res> {
  __$$_AdministrativeStateCopyWithImpl(_$_AdministrativeState _value,
      $Res Function(_$_AdministrativeState) _then)
      : super(_value, (v) => _then(v as _$_AdministrativeState));

  @override
  _$_AdministrativeState get _value => super._value as _$_AdministrativeState;

  @override
  $Res call({
    Object? provinceList = freezed,
    Object? mapCityList = freezed,
    Object? mapDistrictList = freezed,
    Object? mapVillageList = freezed,
  }) {
    return _then(_$_AdministrativeState(
      provinceList: provinceList == freezed
          ? _value._provinceList
          : provinceList // ignore: cast_nullable_to_non_nullable
              as List<ProvinceModel>?,
      mapCityList: mapCityList == freezed
          ? _value._mapCityList
          : mapCityList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<CityModel>>,
      mapDistrictList: mapDistrictList == freezed
          ? _value._mapDistrictList
          : mapDistrictList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<DistrictModel>>,
      mapVillageList: mapVillageList == freezed
          ? _value._mapVillageList
          : mapVillageList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<VillageModel>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdministrativeState implements _AdministrativeState {
  const _$_AdministrativeState(
      {final List<ProvinceModel>? provinceList,
      final Map<String, List<CityModel>> mapCityList = const {},
      final Map<String, List<DistrictModel>> mapDistrictList = const {},
      final Map<String, List<VillageModel>> mapVillageList = const {}})
      : _provinceList = provinceList,
        _mapCityList = mapCityList,
        _mapDistrictList = mapDistrictList,
        _mapVillageList = mapVillageList;

  factory _$_AdministrativeState.fromJson(Map<String, dynamic> json) =>
      _$$_AdministrativeStateFromJson(json);

  final List<ProvinceModel>? _provinceList;
  @override
  List<ProvinceModel>? get provinceList {
    final value = _provinceList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, List<CityModel>> _mapCityList;
  @override
  @JsonKey()
  Map<String, List<CityModel>> get mapCityList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mapCityList);
  }

  final Map<String, List<DistrictModel>> _mapDistrictList;
  @override
  @JsonKey()
  Map<String, List<DistrictModel>> get mapDistrictList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mapDistrictList);
  }

  final Map<String, List<VillageModel>> _mapVillageList;
  @override
  @JsonKey()
  Map<String, List<VillageModel>> get mapVillageList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mapVillageList);
  }

  @override
  String toString() {
    return 'AdministrativeState(provinceList: $provinceList, mapCityList: $mapCityList, mapDistrictList: $mapDistrictList, mapVillageList: $mapVillageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdministrativeState &&
            const DeepCollectionEquality()
                .equals(other._provinceList, _provinceList) &&
            const DeepCollectionEquality()
                .equals(other._mapCityList, _mapCityList) &&
            const DeepCollectionEquality()
                .equals(other._mapDistrictList, _mapDistrictList) &&
            const DeepCollectionEquality()
                .equals(other._mapVillageList, _mapVillageList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_provinceList),
      const DeepCollectionEquality().hash(_mapCityList),
      const DeepCollectionEquality().hash(_mapDistrictList),
      const DeepCollectionEquality().hash(_mapVillageList));

  @JsonKey(ignore: true)
  @override
  _$$_AdministrativeStateCopyWith<_$_AdministrativeState> get copyWith =>
      __$$_AdministrativeStateCopyWithImpl<_$_AdministrativeState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdministrativeStateToJson(
      this,
    );
  }
}

abstract class _AdministrativeState implements AdministrativeState {
  const factory _AdministrativeState(
          {final List<ProvinceModel>? provinceList,
          final Map<String, List<CityModel>> mapCityList,
          final Map<String, List<DistrictModel>> mapDistrictList,
          final Map<String, List<VillageModel>> mapVillageList}) =
      _$_AdministrativeState;

  factory _AdministrativeState.fromJson(Map<String, dynamic> json) =
      _$_AdministrativeState.fromJson;

  @override
  List<ProvinceModel>? get provinceList;
  @override
  Map<String, List<CityModel>> get mapCityList;
  @override
  Map<String, List<DistrictModel>> get mapDistrictList;
  @override
  Map<String, List<VillageModel>> get mapVillageList;
  @override
  @JsonKey(ignore: true)
  _$$_AdministrativeStateCopyWith<_$_AdministrativeState> get copyWith =>
      throw _privateConstructorUsedError;
}

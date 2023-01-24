// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'administrative_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdministrativeState _$$_AdministrativeStateFromJson(
        Map<String, dynamic> json) =>
    _$_AdministrativeState(
      provinceList: (json['provinceList'] as List<dynamic>?)
          ?.map((e) => ProvinceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mapCityList: (json['mapCityList'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) => CityModel.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ) ??
          const {},
      mapDistrictList: (json['mapDistrictList'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) =>
                        DistrictModel.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ) ??
          const {},
      mapVillageList: (json['mapVillageList'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map(
                        (e) => VillageModel.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_AdministrativeStateToJson(
    _$_AdministrativeState instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'provinceList', instance.provinceList?.map((e) => e.toJson()).toList());
  val['mapCityList'] = instance.mapCityList
      .map((k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()));
  val['mapDistrictList'] = instance.mapDistrictList
      .map((k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()));
  val['mapVillageList'] = instance.mapVillageList
      .map((k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()));
  return val;
}

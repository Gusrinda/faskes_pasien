part of 'administrative_bloc.dart';

@freezed
class AdministrativeState with _$AdministrativeState {
  const factory AdministrativeState({
    List<ProvinceModel>? provinceList,
    @Default({}) Map<String, List<CityModel>> mapCityList,
    @Default({}) Map<String, List<DistrictModel>> mapDistrictList,
    @Default({}) Map<String, List<VillageModel>> mapVillageList,
  }) = _AdministrativeState;

  factory AdministrativeState.fromJson(Map<String, dynamic> json) =>
      _$AdministrativeStateFromJson(json);
}

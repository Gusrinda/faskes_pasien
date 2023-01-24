part of 'administrative_bloc.dart';

abstract class AdministrativeEvent extends Equatable {
  const AdministrativeEvent();
}

class FetchProvince extends AdministrativeEvent {
  const FetchProvince();
  @override
  List<Object?> get props => [];
}

class FetchCity extends AdministrativeEvent {
  const FetchCity(this.provinceCode);
  final String provinceCode;
  @override
  List<Object?> get props => [provinceCode];
}

class FetchDistrict extends AdministrativeEvent {
  const FetchDistrict(this.cityCode);
  final String cityCode;
  @override
  List<Object?> get props => [cityCode];
}

class FetchVillage extends AdministrativeEvent {
  const FetchVillage(this.districtCode);
  final String districtCode;
  @override
  List<Object?> get props => [districtCode];
}

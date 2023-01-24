part of 'address_bloc.dart';

abstract class AddressEvent extends Equatable {
  const AddressEvent();
}

class OnAddressChanged extends AddressEvent {
  const OnAddressChanged(this.address);
  final String address;
  @override
  List<Object?> get props => [address];
}

class OnRTChanged extends AddressEvent {
  const OnRTChanged(this.rt);
  final String rt;
  @override
  List<Object?> get props => [rt];
}

class OnRWChanged extends AddressEvent {
  const OnRWChanged(this.rw);
  final String rw;
  @override
  List<Object?> get props => [rw];
}

class OnProvinceChanged extends AddressEvent {
  const OnProvinceChanged(this.province);
  final ProvinceModel province;
  @override
  List<Object?> get props => [province];
}

class OnCityChanged extends AddressEvent {
  const OnCityChanged([this.city]);
  final CityModel? city;
  @override
  List<Object?> get props => [city];
}

class OnDistrictChanged extends AddressEvent {
  const OnDistrictChanged([this.district]);
  final DistrictModel? district;
  @override
  List<Object?> get props => [district];
}

class OnVillageChanged extends AddressEvent {
  const OnVillageChanged([this.village]);
  final VillageModel? village;
  @override
  List<Object?> get props => [village];
}

class OnPostalCodeChanged extends AddressEvent {
  const OnPostalCodeChanged(this.postalCode);
  final String postalCode;
  @override
  List<Object?> get props => [postalCode];
}

class SubmitAddress extends AddressEvent {
  const SubmitAddress();
  @override
  List<Object?> get props => [];
}

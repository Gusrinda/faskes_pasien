part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState({
    required UserModel user,
    @Default(FormzStatus.pure) FormzStatus status,
    required FormTextInput fieldAddress,
    required FormTextInput fieldRT,
    required FormTextInput fieldRW,
    required FormTextInput fieldProvince,
    ProvinceModel? province,
    required FormTextInput fieldCity,
    CityModel? city,
    required FormTextInput fieldDistrict,
    DistrictModel? district,
    required FormTextInput fieldVillage,
    VillageModel? village,
    required FormTextInput fieldPostalCode,
    ToastData? toastData,
  }) = _AddressState;
}

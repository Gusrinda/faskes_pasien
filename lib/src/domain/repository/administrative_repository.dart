import 'package:pasien/src/data/data.dart';

abstract class AdministrativeRepository {
  Future<List<ProvinceModel>> getProvince(String bearerToken);

  Future<List<CityModel>> getCity(
    String bearerToken, {
    required String provinceCode,
  });

  Future<List<DistrictModel>> getDistrict(
    String bearerToken, {
    required String cityCode,
  });

  Future<List<VillageModel>> getVillage(
    String bearerToken, {
    required String districtCode,
  });
}

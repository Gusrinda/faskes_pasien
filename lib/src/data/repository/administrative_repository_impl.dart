import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

class AdministrativeRepositoryImpl implements AdministrativeRepository {
  AdministrativeRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<List<VillageModel>> getVillage(
    String bearerToken, {
    required String districtCode,
  }) async {
    final result = await _apiService.getVillage(
      bearerToken: bearerToken,
      where: "\"group\"='KELURAHAN' AND key='$districtCode'",
    );
    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<List<DistrictModel>> getDistrict(
    String bearerToken, {
    required String cityCode,
  }) async {
    final result = await _apiService.getDistrict(
      bearerToken: bearerToken,
      where: "\"group\"='KECAMATAN' AND key='$cityCode'",
    );
    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<List<CityModel>> getCity(
    String bearerToken, {
    required String provinceCode,
  }) async {
    final result = await _apiService.getCity(
      bearerToken: bearerToken,
      where: "\"group\"='KOTA' AND key='$provinceCode'",
    );
    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<List<ProvinceModel>> getProvince(String bearerToken) async {
    final result = await _apiService.getProvince(bearerToken: bearerToken);
    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }
}

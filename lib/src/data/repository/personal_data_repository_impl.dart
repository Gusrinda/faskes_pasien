import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

class PersonalDataRepositoryImpl implements PersonalDataRepository {
  PersonalDataRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<String> updateAddress({
    required String bearerToken,
    required String userId,
    required AddressModel update,
  }) async {
    final result = await _apiService.qlMUserUpdateAddress(
      bearerToken: bearerToken,
      userId: userId,
      update: update,
    );
    if (result.failed) {
      throw ApiException(result.message ?? 'Gagal mengupdate data alamat');
    }
    return result.message ?? 'Data alamat telah diupdate';
  }

  @override
  Future<List<FamilyModel>> familyList({
    required String bearerToken,
    required String userId,
  }) async {
    final result = await _apiService.getFamilyList(
      bearerToken: bearerToken,
      where: "ql_m_user_id=':$userId:'",
    );
    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<FamilyModel> familyDetail({
    required String bearerToken,
    required String familyUserId,
  }) async {
    final result = await _apiService.getFamilyDetail(
      bearerToken: bearerToken,
      familyUserId: familyUserId,
    );
    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<FamilyModel> familyAddOrEdit({
    required String bearerToken,
    String? familyUserId,
    required FamilyContent family,
  }) async {
    final result = familyUserId != null
        ? await _apiService.editFamily(
            bearerToken: bearerToken,
            familyUserId: familyUserId,
            family: family,
          )
        : await _apiService.addFamily(bearerToken: bearerToken, family: family);

    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<InsuranceModel> insuranceAddOrEdit({
    required String bearerToken,
    String? insuranceUserId,
    required InsuranceContent insurance,
  }) async {
    final result = insuranceUserId != null
        ? await _apiService.editInsurance(
            bearerToken: bearerToken,
            insuranceUserId: insuranceUserId,
            insurance: insurance,
          )
        : await _apiService.addInsurance(
            bearerToken: bearerToken,
            insurance: insurance,
          );

    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<InsuranceModel> insuranceDetail({
    required String bearerToken,
    required String insuranceUserId,
  }) async {
    final result = await _apiService.getInsuranceDetail(
      bearerToken: bearerToken,
      insuranceUserId: insuranceUserId,
    );
    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<List<InsuranceModel>> insuranceList({
    required String bearerToken,
    required String userId,
  }) async {
    final result = await _apiService.getInsuranceList(
      bearerToken: bearerToken,
      where: "ql_m_user_id=':$userId:'",
    );
    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }
}

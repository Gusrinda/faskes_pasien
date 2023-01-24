import 'package:pasien/src/data/data.dart';

abstract class PersonalDataRepository {
  Future<String> updateAddress({
    required String bearerToken,
    required String userId,
    required AddressModel update,
  });

  Future<List<FamilyModel>> familyList({
    required String bearerToken,
    required String userId,
  });

  Future<FamilyModel> familyDetail({
    required String bearerToken,
    required String familyUserId,
  });

  Future<FamilyModel> familyAddOrEdit({
    required String bearerToken,
    String? familyUserId,
    required FamilyContent family,
  });

  Future<List<InsuranceModel>> insuranceList({
    required String bearerToken,
    required String userId,
  });

  Future<InsuranceModel> insuranceDetail({
    required String bearerToken,
    required String insuranceUserId,
  });

  Future<InsuranceModel> insuranceAddOrEdit({
    required String bearerToken,
    String? insuranceUserId,
    required InsuranceContent insurance,
  });
}

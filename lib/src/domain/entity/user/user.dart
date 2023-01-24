abstract class BaseUser {
  const BaseUser();

  String get name;
  String? get phone;
  String get username;
  String get email;
  String get nik;
}

abstract class RegisteredUser extends BaseUser {
  DateTime? get createdAt;
}

abstract class LoginUser extends BaseUser {
  String get token;
  String get tokenType;
}

abstract class User extends BaseUser {
  const User();

  String get id;
  String? get userId;
  DateTime? get emailVerifiedAt;
  String? get role;
  String? get namePrefix;
  String? get nameSuffix;
  String? get gender;
  String? get birthPlace;
  String? get birthDate;
  String? get noRm;
  String? get noPassport;
  String? get kewarganegaraan;
  String? get suku;
  String? get agama;
  String? get pendidikan;
  String? get pekerjaan;
  String? get statusPernikahan;
  String? get golonganDarah;
  String? get bahasa;
  String? get address;
  String? get rt;
  String? get rw;
  String? get provinsi;
  String? get kota;
  String? get kecamatan;
  String? get kelurahan;
  String? get kodePos;
  String? get status;
  String? get createdBy;
  String? get updatedBy;
  String? get deletedBy;
  // DateTime? get createdAt;
  // DateTime? get updatedAt;
}

extension UserValidation on User {
  bool get isNotSet {
    return address == null &&
        rt == null &&
        rw == null &&
        kecamatan == null &&
        kota == null &&
        provinsi == null &&
        kodePos == null;
  }
}

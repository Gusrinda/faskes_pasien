import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/domain/domain.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModelResponse extends ApiResponse<UserModel>
    with _$UserModelResponse {
  const factory UserModelResponse({
    @Default(false) bool success,
    String? message,
    UserModel? data,
  }) = _UserModelResponse;

  factory UserModelResponse.fromJson(Map<String, dynamic> json) =>
      _$UserModelResponseFromJson(json);
}

@freezed
class UserModel extends User with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'name_prefix') String? namePrefix,
    @JsonKey(name: 'name_suffix') String? nameSuffix,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'nik') required String nik,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'birth_place') String? birthPlace,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'no_rm') String? noRm,
    @JsonKey(name: 'no_passport') String? noPassport,
    @JsonKey(name: 'kewarganegaraan') String? kewarganegaraan,
    @JsonKey(name: 'suku') String? suku,
    @JsonKey(name: 'agama') String? agama,
    @JsonKey(name: 'pendidikan') String? pendidikan,
    @JsonKey(name: 'pekerjaan') String? pekerjaan,
    @JsonKey(name: 'status_pernikahan') String? statusPernikahan,
    @JsonKey(name: 'golongan_darah') String? golonganDarah,
    @JsonKey(name: 'bahasa') String? bahasa,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'address_rt') String? rt,
    @JsonKey(name: 'address_rw') String? rw,
    @JsonKey(name: 'address_provinsi') String? provinsi,
    @JsonKey(name: 'address_kota') String? kota,
    @JsonKey(name: 'address_kecamatan') String? kecamatan,
    @JsonKey(name: 'address_kelurahan') String? kelurahan,
    @JsonKey(name: 'address_kodepos') String? kodePos,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'updated_by') String? updatedBy,
    @JsonKey(name: 'delete_by') String? deletedBy,
    // @JsonKey(name: 'created_at') DateTime? createdAt,
    // @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

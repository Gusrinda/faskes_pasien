// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModelResponse _$$_UserModelResponseFromJson(Map<String, dynamic> json) =>
    _$_UserModelResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelResponseToJson(
    _$_UserModelResponse instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      namePrefix: json['name_prefix'] as String?,
      nameSuffix: json['name_suffix'] as String?,
      username: json['username'] as String,
      email: json['email'] as String,
      id: json['id'] as String,
      userId: json['user_id'] as String?,
      nik: json['nik'] as String,
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      phone: json['phone'] as String,
      role: json['role'] as String?,
      name: json['name'] as String,
      gender: json['gender'] as String?,
      birthPlace: json['birth_place'] as String?,
      birthDate: json['birth_date'] as String?,
      noRm: json['no_rm'] as String?,
      noPassport: json['no_passport'] as String?,
      kewarganegaraan: json['kewarganegaraan'] as String?,
      suku: json['suku'] as String?,
      agama: json['agama'] as String?,
      pendidikan: json['pendidikan'] as String?,
      pekerjaan: json['pekerjaan'] as String?,
      statusPernikahan: json['status_pernikahan'] as String?,
      golonganDarah: json['golongan_darah'] as String?,
      bahasa: json['bahasa'] as String?,
      address: json['address'] as String?,
      rt: json['address_rt'] as String?,
      rw: json['address_rw'] as String?,
      provinsi: json['address_provinsi'] as String?,
      kota: json['address_kota'] as String?,
      kecamatan: json['address_kecamatan'] as String?,
      kelurahan: json['address_kelurahan'] as String?,
      kodePos: json['address_kodepos'] as String?,
      status: json['status'] as String?,
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'] as String?,
      deletedBy: json['delete_by'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name_prefix', instance.namePrefix);
  writeNotNull('name_suffix', instance.nameSuffix);
  val['username'] = instance.username;
  val['email'] = instance.email;
  val['id'] = instance.id;
  writeNotNull('user_id', instance.userId);
  val['nik'] = instance.nik;
  writeNotNull(
      'email_verified_at', instance.emailVerifiedAt?.toIso8601String());
  val['phone'] = instance.phone;
  writeNotNull('role', instance.role);
  val['name'] = instance.name;
  writeNotNull('gender', instance.gender);
  writeNotNull('birth_place', instance.birthPlace);
  writeNotNull('birth_date', instance.birthDate);
  writeNotNull('no_rm', instance.noRm);
  writeNotNull('no_passport', instance.noPassport);
  writeNotNull('kewarganegaraan', instance.kewarganegaraan);
  writeNotNull('suku', instance.suku);
  writeNotNull('agama', instance.agama);
  writeNotNull('pendidikan', instance.pendidikan);
  writeNotNull('pekerjaan', instance.pekerjaan);
  writeNotNull('status_pernikahan', instance.statusPernikahan);
  writeNotNull('golongan_darah', instance.golonganDarah);
  writeNotNull('bahasa', instance.bahasa);
  writeNotNull('address', instance.address);
  writeNotNull('address_rt', instance.rt);
  writeNotNull('address_rw', instance.rw);
  writeNotNull('address_provinsi', instance.provinsi);
  writeNotNull('address_kota', instance.kota);
  writeNotNull('address_kecamatan', instance.kecamatan);
  writeNotNull('address_kelurahan', instance.kelurahan);
  writeNotNull('address_kodepos', instance.kodePos);
  writeNotNull('status', instance.status);
  writeNotNull('created_by', instance.createdBy);
  writeNotNull('updated_by', instance.updatedBy);
  writeNotNull('delete_by', instance.deletedBy);
  return val;
}

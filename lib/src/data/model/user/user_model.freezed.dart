// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModelResponse _$UserModelResponseFromJson(Map<String, dynamic> json) {
  return _UserModelResponse.fromJson(json);
}

/// @nodoc
mixin _$UserModelResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelResponseCopyWith<UserModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelResponseCopyWith<$Res> {
  factory $UserModelResponseCopyWith(
          UserModelResponse value, $Res Function(UserModelResponse) then) =
      _$UserModelResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, UserModel? data});

  $UserModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserModelResponseCopyWithImpl<$Res>
    implements $UserModelResponseCopyWith<$Res> {
  _$UserModelResponseCopyWithImpl(this._value, this._then);

  final UserModelResponse _value;
  // ignore: unused_field
  final $Res Function(UserModelResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserModelResponseCopyWith<$Res>
    implements $UserModelResponseCopyWith<$Res> {
  factory _$$_UserModelResponseCopyWith(_$_UserModelResponse value,
          $Res Function(_$_UserModelResponse) then) =
      __$$_UserModelResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, UserModel? data});

  @override
  $UserModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_UserModelResponseCopyWithImpl<$Res>
    extends _$UserModelResponseCopyWithImpl<$Res>
    implements _$$_UserModelResponseCopyWith<$Res> {
  __$$_UserModelResponseCopyWithImpl(
      _$_UserModelResponse _value, $Res Function(_$_UserModelResponse) _then)
      : super(_value, (v) => _then(v as _$_UserModelResponse));

  @override
  _$_UserModelResponse get _value => super._value as _$_UserModelResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UserModelResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModelResponse implements _UserModelResponse {
  const _$_UserModelResponse({this.success = false, this.message, this.data});

  factory _$_UserModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  @override
  final UserModel? data;

  @override
  String toString() {
    return 'UserModelResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModelResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_UserModelResponseCopyWith<_$_UserModelResponse> get copyWith =>
      __$$_UserModelResponseCopyWithImpl<_$_UserModelResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelResponseToJson(
      this,
    );
  }
}

abstract class _UserModelResponse implements UserModelResponse {
  const factory _UserModelResponse(
      {final bool success,
      final String? message,
      final UserModel? data}) = _$_UserModelResponse;

  factory _UserModelResponse.fromJson(Map<String, dynamic> json) =
      _$_UserModelResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  UserModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelResponseCopyWith<_$_UserModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'name_prefix')
  String? get namePrefix => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_suffix')
  String? get nameSuffix => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nik')
  String get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_place')
  String? get birthPlace => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_rm')
  String? get noRm => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_passport')
  String? get noPassport => throw _privateConstructorUsedError;
  @JsonKey(name: 'kewarganegaraan')
  String? get kewarganegaraan => throw _privateConstructorUsedError;
  @JsonKey(name: 'suku')
  String? get suku => throw _privateConstructorUsedError;
  @JsonKey(name: 'agama')
  String? get agama => throw _privateConstructorUsedError;
  @JsonKey(name: 'pendidikan')
  String? get pendidikan => throw _privateConstructorUsedError;
  @JsonKey(name: 'pekerjaan')
  String? get pekerjaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_pernikahan')
  String? get statusPernikahan => throw _privateConstructorUsedError;
  @JsonKey(name: 'golongan_darah')
  String? get golonganDarah => throw _privateConstructorUsedError;
  @JsonKey(name: 'bahasa')
  String? get bahasa => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_rt')
  String? get rt => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_rw')
  String? get rw => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_provinsi')
  String? get provinsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_kota')
  String? get kota => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_kecamatan')
  String? get kecamatan => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_kelurahan')
  String? get kelurahan => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_kodepos')
  String? get kodePos => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_by')
  String? get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'delete_by')
  String? get deletedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name_prefix') String? namePrefix,
      @JsonKey(name: 'name_suffix') String? nameSuffix,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'nik') String nik,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'name') String name,
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
      @JsonKey(name: 'delete_by') String? deletedBy});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? namePrefix = freezed,
    Object? nameSuffix = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? nik = freezed,
    Object? emailVerifiedAt = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? birthPlace = freezed,
    Object? birthDate = freezed,
    Object? noRm = freezed,
    Object? noPassport = freezed,
    Object? kewarganegaraan = freezed,
    Object? suku = freezed,
    Object? agama = freezed,
    Object? pendidikan = freezed,
    Object? pekerjaan = freezed,
    Object? statusPernikahan = freezed,
    Object? golonganDarah = freezed,
    Object? bahasa = freezed,
    Object? address = freezed,
    Object? rt = freezed,
    Object? rw = freezed,
    Object? provinsi = freezed,
    Object? kota = freezed,
    Object? kecamatan = freezed,
    Object? kelurahan = freezed,
    Object? kodePos = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_value.copyWith(
      namePrefix: namePrefix == freezed
          ? _value.namePrefix
          : namePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSuffix: nameSuffix == freezed
          ? _value.nameSuffix
          : nameSuffix // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: birthPlace == freezed
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      noRm: noRm == freezed
          ? _value.noRm
          : noRm // ignore: cast_nullable_to_non_nullable
              as String?,
      noPassport: noPassport == freezed
          ? _value.noPassport
          : noPassport // ignore: cast_nullable_to_non_nullable
              as String?,
      kewarganegaraan: kewarganegaraan == freezed
          ? _value.kewarganegaraan
          : kewarganegaraan // ignore: cast_nullable_to_non_nullable
              as String?,
      suku: suku == freezed
          ? _value.suku
          : suku // ignore: cast_nullable_to_non_nullable
              as String?,
      agama: agama == freezed
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String?,
      pendidikan: pendidikan == freezed
          ? _value.pendidikan
          : pendidikan // ignore: cast_nullable_to_non_nullable
              as String?,
      pekerjaan: pekerjaan == freezed
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as String?,
      statusPernikahan: statusPernikahan == freezed
          ? _value.statusPernikahan
          : statusPernikahan // ignore: cast_nullable_to_non_nullable
              as String?,
      golonganDarah: golonganDarah == freezed
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String?,
      bahasa: bahasa == freezed
          ? _value.bahasa
          : bahasa // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      rt: rt == freezed
          ? _value.rt
          : rt // ignore: cast_nullable_to_non_nullable
              as String?,
      rw: rw == freezed
          ? _value.rw
          : rw // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsi: provinsi == freezed
          ? _value.provinsi
          : provinsi // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: kota == freezed
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatan: kecamatan == freezed
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String?,
      kelurahan: kelurahan == freezed
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as String?,
      kodePos: kodePos == freezed
          ? _value.kodePos
          : kodePos // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedBy: deletedBy == freezed
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name_prefix') String? namePrefix,
      @JsonKey(name: 'name_suffix') String? nameSuffix,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'nik') String nik,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'name') String name,
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
      @JsonKey(name: 'delete_by') String? deletedBy});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, (v) => _then(v as _$_UserModel));

  @override
  _$_UserModel get _value => super._value as _$_UserModel;

  @override
  $Res call({
    Object? namePrefix = freezed,
    Object? nameSuffix = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? nik = freezed,
    Object? emailVerifiedAt = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? birthPlace = freezed,
    Object? birthDate = freezed,
    Object? noRm = freezed,
    Object? noPassport = freezed,
    Object? kewarganegaraan = freezed,
    Object? suku = freezed,
    Object? agama = freezed,
    Object? pendidikan = freezed,
    Object? pekerjaan = freezed,
    Object? statusPernikahan = freezed,
    Object? golonganDarah = freezed,
    Object? bahasa = freezed,
    Object? address = freezed,
    Object? rt = freezed,
    Object? rw = freezed,
    Object? provinsi = freezed,
    Object? kota = freezed,
    Object? kecamatan = freezed,
    Object? kelurahan = freezed,
    Object? kodePos = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_$_UserModel(
      namePrefix: namePrefix == freezed
          ? _value.namePrefix
          : namePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSuffix: nameSuffix == freezed
          ? _value.nameSuffix
          : nameSuffix // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: birthPlace == freezed
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      noRm: noRm == freezed
          ? _value.noRm
          : noRm // ignore: cast_nullable_to_non_nullable
              as String?,
      noPassport: noPassport == freezed
          ? _value.noPassport
          : noPassport // ignore: cast_nullable_to_non_nullable
              as String?,
      kewarganegaraan: kewarganegaraan == freezed
          ? _value.kewarganegaraan
          : kewarganegaraan // ignore: cast_nullable_to_non_nullable
              as String?,
      suku: suku == freezed
          ? _value.suku
          : suku // ignore: cast_nullable_to_non_nullable
              as String?,
      agama: agama == freezed
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String?,
      pendidikan: pendidikan == freezed
          ? _value.pendidikan
          : pendidikan // ignore: cast_nullable_to_non_nullable
              as String?,
      pekerjaan: pekerjaan == freezed
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as String?,
      statusPernikahan: statusPernikahan == freezed
          ? _value.statusPernikahan
          : statusPernikahan // ignore: cast_nullable_to_non_nullable
              as String?,
      golonganDarah: golonganDarah == freezed
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String?,
      bahasa: bahasa == freezed
          ? _value.bahasa
          : bahasa // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      rt: rt == freezed
          ? _value.rt
          : rt // ignore: cast_nullable_to_non_nullable
              as String?,
      rw: rw == freezed
          ? _value.rw
          : rw // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsi: provinsi == freezed
          ? _value.provinsi
          : provinsi // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: kota == freezed
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatan: kecamatan == freezed
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String?,
      kelurahan: kelurahan == freezed
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as String?,
      kodePos: kodePos == freezed
          ? _value.kodePos
          : kodePos // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedBy: deletedBy == freezed
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@JsonKey(name: 'name_prefix') this.namePrefix,
      @JsonKey(name: 'name_suffix') this.nameSuffix,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'nik') required this.nik,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'birth_place') this.birthPlace,
      @JsonKey(name: 'birth_date') this.birthDate,
      @JsonKey(name: 'no_rm') this.noRm,
      @JsonKey(name: 'no_passport') this.noPassport,
      @JsonKey(name: 'kewarganegaraan') this.kewarganegaraan,
      @JsonKey(name: 'suku') this.suku,
      @JsonKey(name: 'agama') this.agama,
      @JsonKey(name: 'pendidikan') this.pendidikan,
      @JsonKey(name: 'pekerjaan') this.pekerjaan,
      @JsonKey(name: 'status_pernikahan') this.statusPernikahan,
      @JsonKey(name: 'golongan_darah') this.golonganDarah,
      @JsonKey(name: 'bahasa') this.bahasa,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'address_rt') this.rt,
      @JsonKey(name: 'address_rw') this.rw,
      @JsonKey(name: 'address_provinsi') this.provinsi,
      @JsonKey(name: 'address_kota') this.kota,
      @JsonKey(name: 'address_kecamatan') this.kecamatan,
      @JsonKey(name: 'address_kelurahan') this.kelurahan,
      @JsonKey(name: 'address_kodepos') this.kodePos,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'updated_by') this.updatedBy,
      @JsonKey(name: 'delete_by') this.deletedBy});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'name_prefix')
  final String? namePrefix;
  @override
  @JsonKey(name: 'name_suffix')
  final String? nameSuffix;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'nik')
  final String nik;
  @override
  @JsonKey(name: 'email_verified_at')
  final DateTime? emailVerifiedAt;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'birth_place')
  final String? birthPlace;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @override
  @JsonKey(name: 'no_rm')
  final String? noRm;
  @override
  @JsonKey(name: 'no_passport')
  final String? noPassport;
  @override
  @JsonKey(name: 'kewarganegaraan')
  final String? kewarganegaraan;
  @override
  @JsonKey(name: 'suku')
  final String? suku;
  @override
  @JsonKey(name: 'agama')
  final String? agama;
  @override
  @JsonKey(name: 'pendidikan')
  final String? pendidikan;
  @override
  @JsonKey(name: 'pekerjaan')
  final String? pekerjaan;
  @override
  @JsonKey(name: 'status_pernikahan')
  final String? statusPernikahan;
  @override
  @JsonKey(name: 'golongan_darah')
  final String? golonganDarah;
  @override
  @JsonKey(name: 'bahasa')
  final String? bahasa;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'address_rt')
  final String? rt;
  @override
  @JsonKey(name: 'address_rw')
  final String? rw;
  @override
  @JsonKey(name: 'address_provinsi')
  final String? provinsi;
  @override
  @JsonKey(name: 'address_kota')
  final String? kota;
  @override
  @JsonKey(name: 'address_kecamatan')
  final String? kecamatan;
  @override
  @JsonKey(name: 'address_kelurahan')
  final String? kelurahan;
  @override
  @JsonKey(name: 'address_kodepos')
  final String? kodePos;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'created_by')
  final String? createdBy;
  @override
  @JsonKey(name: 'updated_by')
  final String? updatedBy;
  @override
  @JsonKey(name: 'delete_by')
  final String? deletedBy;

  @override
  String toString() {
    return 'UserModel(namePrefix: $namePrefix, nameSuffix: $nameSuffix, username: $username, email: $email, id: $id, userId: $userId, nik: $nik, emailVerifiedAt: $emailVerifiedAt, phone: $phone, role: $role, name: $name, gender: $gender, birthPlace: $birthPlace, birthDate: $birthDate, noRm: $noRm, noPassport: $noPassport, kewarganegaraan: $kewarganegaraan, suku: $suku, agama: $agama, pendidikan: $pendidikan, pekerjaan: $pekerjaan, statusPernikahan: $statusPernikahan, golonganDarah: $golonganDarah, bahasa: $bahasa, address: $address, rt: $rt, rw: $rw, provinsi: $provinsi, kota: $kota, kecamatan: $kecamatan, kelurahan: $kelurahan, kodePos: $kodePos, status: $status, createdBy: $createdBy, updatedBy: $updatedBy, deletedBy: $deletedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            const DeepCollectionEquality()
                .equals(other.namePrefix, namePrefix) &&
            const DeepCollectionEquality()
                .equals(other.nameSuffix, nameSuffix) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            const DeepCollectionEquality()
                .equals(other.emailVerifiedAt, emailVerifiedAt) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.birthPlace, birthPlace) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            const DeepCollectionEquality().equals(other.noRm, noRm) &&
            const DeepCollectionEquality()
                .equals(other.noPassport, noPassport) &&
            const DeepCollectionEquality()
                .equals(other.kewarganegaraan, kewarganegaraan) &&
            const DeepCollectionEquality().equals(other.suku, suku) &&
            const DeepCollectionEquality().equals(other.agama, agama) &&
            const DeepCollectionEquality()
                .equals(other.pendidikan, pendidikan) &&
            const DeepCollectionEquality().equals(other.pekerjaan, pekerjaan) &&
            const DeepCollectionEquality()
                .equals(other.statusPernikahan, statusPernikahan) &&
            const DeepCollectionEquality()
                .equals(other.golonganDarah, golonganDarah) &&
            const DeepCollectionEquality().equals(other.bahasa, bahasa) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.rt, rt) &&
            const DeepCollectionEquality().equals(other.rw, rw) &&
            const DeepCollectionEquality().equals(other.provinsi, provinsi) &&
            const DeepCollectionEquality().equals(other.kota, kota) &&
            const DeepCollectionEquality().equals(other.kecamatan, kecamatan) &&
            const DeepCollectionEquality().equals(other.kelurahan, kelurahan) &&
            const DeepCollectionEquality().equals(other.kodePos, kodePos) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            const DeepCollectionEquality().equals(other.deletedBy, deletedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(namePrefix),
        const DeepCollectionEquality().hash(nameSuffix),
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(nik),
        const DeepCollectionEquality().hash(emailVerifiedAt),
        const DeepCollectionEquality().hash(phone),
        const DeepCollectionEquality().hash(role),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(gender),
        const DeepCollectionEquality().hash(birthPlace),
        const DeepCollectionEquality().hash(birthDate),
        const DeepCollectionEquality().hash(noRm),
        const DeepCollectionEquality().hash(noPassport),
        const DeepCollectionEquality().hash(kewarganegaraan),
        const DeepCollectionEquality().hash(suku),
        const DeepCollectionEquality().hash(agama),
        const DeepCollectionEquality().hash(pendidikan),
        const DeepCollectionEquality().hash(pekerjaan),
        const DeepCollectionEquality().hash(statusPernikahan),
        const DeepCollectionEquality().hash(golonganDarah),
        const DeepCollectionEquality().hash(bahasa),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(rt),
        const DeepCollectionEquality().hash(rw),
        const DeepCollectionEquality().hash(provinsi),
        const DeepCollectionEquality().hash(kota),
        const DeepCollectionEquality().hash(kecamatan),
        const DeepCollectionEquality().hash(kelurahan),
        const DeepCollectionEquality().hash(kodePos),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(createdBy),
        const DeepCollectionEquality().hash(updatedBy),
        const DeepCollectionEquality().hash(deletedBy)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: 'name_prefix') final String? namePrefix,
      @JsonKey(name: 'name_suffix') final String? nameSuffix,
      @JsonKey(name: 'username') required final String username,
      @JsonKey(name: 'email') required final String email,
      @JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'nik') required final String nik,
      @JsonKey(name: 'email_verified_at') final DateTime? emailVerifiedAt,
      @JsonKey(name: 'phone') required final String phone,
      @JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'gender') final String? gender,
      @JsonKey(name: 'birth_place') final String? birthPlace,
      @JsonKey(name: 'birth_date') final String? birthDate,
      @JsonKey(name: 'no_rm') final String? noRm,
      @JsonKey(name: 'no_passport') final String? noPassport,
      @JsonKey(name: 'kewarganegaraan') final String? kewarganegaraan,
      @JsonKey(name: 'suku') final String? suku,
      @JsonKey(name: 'agama') final String? agama,
      @JsonKey(name: 'pendidikan') final String? pendidikan,
      @JsonKey(name: 'pekerjaan') final String? pekerjaan,
      @JsonKey(name: 'status_pernikahan') final String? statusPernikahan,
      @JsonKey(name: 'golongan_darah') final String? golonganDarah,
      @JsonKey(name: 'bahasa') final String? bahasa,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'address_rt') final String? rt,
      @JsonKey(name: 'address_rw') final String? rw,
      @JsonKey(name: 'address_provinsi') final String? provinsi,
      @JsonKey(name: 'address_kota') final String? kota,
      @JsonKey(name: 'address_kecamatan') final String? kecamatan,
      @JsonKey(name: 'address_kelurahan') final String? kelurahan,
      @JsonKey(name: 'address_kodepos') final String? kodePos,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'created_by') final String? createdBy,
      @JsonKey(name: 'updated_by') final String? updatedBy,
      @JsonKey(name: 'delete_by') final String? deletedBy}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'name_prefix')
  String? get namePrefix;
  @override
  @JsonKey(name: 'name_suffix')
  String? get nameSuffix;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'nik')
  String get nik;
  @override
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'birth_place')
  String? get birthPlace;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @override
  @JsonKey(name: 'no_rm')
  String? get noRm;
  @override
  @JsonKey(name: 'no_passport')
  String? get noPassport;
  @override
  @JsonKey(name: 'kewarganegaraan')
  String? get kewarganegaraan;
  @override
  @JsonKey(name: 'suku')
  String? get suku;
  @override
  @JsonKey(name: 'agama')
  String? get agama;
  @override
  @JsonKey(name: 'pendidikan')
  String? get pendidikan;
  @override
  @JsonKey(name: 'pekerjaan')
  String? get pekerjaan;
  @override
  @JsonKey(name: 'status_pernikahan')
  String? get statusPernikahan;
  @override
  @JsonKey(name: 'golongan_darah')
  String? get golonganDarah;
  @override
  @JsonKey(name: 'bahasa')
  String? get bahasa;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'address_rt')
  String? get rt;
  @override
  @JsonKey(name: 'address_rw')
  String? get rw;
  @override
  @JsonKey(name: 'address_provinsi')
  String? get provinsi;
  @override
  @JsonKey(name: 'address_kota')
  String? get kota;
  @override
  @JsonKey(name: 'address_kecamatan')
  String? get kecamatan;
  @override
  @JsonKey(name: 'address_kelurahan')
  String? get kelurahan;
  @override
  @JsonKey(name: 'address_kodepos')
  String? get kodePos;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'created_by')
  String? get createdBy;
  @override
  @JsonKey(name: 'updated_by')
  String? get updatedBy;
  @override
  @JsonKey(name: 'delete_by')
  String? get deletedBy;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

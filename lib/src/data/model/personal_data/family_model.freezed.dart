// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'family_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FamilyListResponse _$FamilyListResponseFromJson(Map<String, dynamic> json) {
  return _FamilyListResponse.fromJson(json);
}

/// @nodoc
mixin _$FamilyListResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<FamilyModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyListResponseCopyWith<FamilyListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyListResponseCopyWith<$Res> {
  factory $FamilyListResponseCopyWith(
          FamilyListResponse value, $Res Function(FamilyListResponse) then) =
      _$FamilyListResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, List<FamilyModel>? data});
}

/// @nodoc
class _$FamilyListResponseCopyWithImpl<$Res>
    implements $FamilyListResponseCopyWith<$Res> {
  _$FamilyListResponseCopyWithImpl(this._value, this._then);

  final FamilyListResponse _value;
  // ignore: unused_field
  final $Res Function(FamilyListResponse) _then;

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
              as List<FamilyModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_FamilyListResponseCopyWith<$Res>
    implements $FamilyListResponseCopyWith<$Res> {
  factory _$$_FamilyListResponseCopyWith(_$_FamilyListResponse value,
          $Res Function(_$_FamilyListResponse) then) =
      __$$_FamilyListResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, List<FamilyModel>? data});
}

/// @nodoc
class __$$_FamilyListResponseCopyWithImpl<$Res>
    extends _$FamilyListResponseCopyWithImpl<$Res>
    implements _$$_FamilyListResponseCopyWith<$Res> {
  __$$_FamilyListResponseCopyWithImpl(
      _$_FamilyListResponse _value, $Res Function(_$_FamilyListResponse) _then)
      : super(_value, (v) => _then(v as _$_FamilyListResponse));

  @override
  _$_FamilyListResponse get _value => super._value as _$_FamilyListResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_FamilyListResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FamilyModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FamilyListResponse implements _FamilyListResponse {
  const _$_FamilyListResponse(
      {required this.success, this.message, final List<FamilyModel>? data})
      : _data = data;

  factory _$_FamilyListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FamilyListResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  final List<FamilyModel>? _data;
  @override
  List<FamilyModel>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FamilyListResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FamilyListResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_FamilyListResponseCopyWith<_$_FamilyListResponse> get copyWith =>
      __$$_FamilyListResponseCopyWithImpl<_$_FamilyListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamilyListResponseToJson(
      this,
    );
  }
}

abstract class _FamilyListResponse implements FamilyListResponse {
  const factory _FamilyListResponse(
      {required final bool success,
      final String? message,
      final List<FamilyModel>? data}) = _$_FamilyListResponse;

  factory _FamilyListResponse.fromJson(Map<String, dynamic> json) =
      _$_FamilyListResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<FamilyModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyListResponseCopyWith<_$_FamilyListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyDetailResponse _$FamilyDetailResponseFromJson(Map<String, dynamic> json) {
  return _FamilyDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$FamilyDetailResponse {
  String? get message => throw _privateConstructorUsedError;
  FamilyModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyDetailResponseCopyWith<FamilyDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyDetailResponseCopyWith<$Res> {
  factory $FamilyDetailResponseCopyWith(FamilyDetailResponse value,
          $Res Function(FamilyDetailResponse) then) =
      _$FamilyDetailResponseCopyWithImpl<$Res>;
  $Res call({String? message, FamilyModel? data});

  $FamilyModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FamilyDetailResponseCopyWithImpl<$Res>
    implements $FamilyDetailResponseCopyWith<$Res> {
  _$FamilyDetailResponseCopyWithImpl(this._value, this._then);

  final FamilyDetailResponse _value;
  // ignore: unused_field
  final $Res Function(FamilyDetailResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FamilyModel?,
    ));
  }

  @override
  $FamilyModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FamilyModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_FamilyDetailResponseCopyWith<$Res>
    implements $FamilyDetailResponseCopyWith<$Res> {
  factory _$$_FamilyDetailResponseCopyWith(_$_FamilyDetailResponse value,
          $Res Function(_$_FamilyDetailResponse) then) =
      __$$_FamilyDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, FamilyModel? data});

  @override
  $FamilyModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_FamilyDetailResponseCopyWithImpl<$Res>
    extends _$FamilyDetailResponseCopyWithImpl<$Res>
    implements _$$_FamilyDetailResponseCopyWith<$Res> {
  __$$_FamilyDetailResponseCopyWithImpl(_$_FamilyDetailResponse _value,
      $Res Function(_$_FamilyDetailResponse) _then)
      : super(_value, (v) => _then(v as _$_FamilyDetailResponse));

  @override
  _$_FamilyDetailResponse get _value => super._value as _$_FamilyDetailResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_FamilyDetailResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FamilyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FamilyDetailResponse extends _FamilyDetailResponse {
  const _$_FamilyDetailResponse({this.message, this.data}) : super._();

  factory _$_FamilyDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FamilyDetailResponseFromJson(json);

  @override
  final String? message;
  @override
  final FamilyModel? data;

  @override
  String toString() {
    return 'FamilyDetailResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FamilyDetailResponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_FamilyDetailResponseCopyWith<_$_FamilyDetailResponse> get copyWith =>
      __$$_FamilyDetailResponseCopyWithImpl<_$_FamilyDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamilyDetailResponseToJson(
      this,
    );
  }
}

abstract class _FamilyDetailResponse extends FamilyDetailResponse {
  const factory _FamilyDetailResponse(
      {final String? message,
      final FamilyModel? data}) = _$_FamilyDetailResponse;
  const _FamilyDetailResponse._() : super._();

  factory _FamilyDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_FamilyDetailResponse.fromJson;

  @override
  String? get message;
  @override
  FamilyModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyDetailResponseCopyWith<_$_FamilyDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyModel _$FamilyModelFromJson(Map<String, dynamic> json) {
  return _FamilyModel.fromJson(json);
}

/// @nodoc
mixin _$FamilyModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ql_m_user_id')
  String get qlMUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'hubungan')
  String get hubungan => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_keluarga')
  String get statusKeluarga => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'pekerjaan')
  String? get pekerjaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_by')
  String? get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyModelCopyWith<FamilyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyModelCopyWith<$Res> {
  factory $FamilyModelCopyWith(
          FamilyModel value, $Res Function(FamilyModel) then) =
      _$FamilyModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'ql_m_user_id') String qlMUserId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'hubungan') String hubungan,
      @JsonKey(name: 'status_keluarga') String statusKeluarga,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'pekerjaan') String? pekerjaan,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'created_by') String? createdBy,
      @JsonKey(name: 'updated_by') String? updatedBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$FamilyModelCopyWithImpl<$Res> implements $FamilyModelCopyWith<$Res> {
  _$FamilyModelCopyWithImpl(this._value, this._then);

  final FamilyModel _value;
  // ignore: unused_field
  final $Res Function(FamilyModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? qlMUserId = freezed,
    Object? name = freezed,
    Object? hubungan = freezed,
    Object? statusKeluarga = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? pekerjaan = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      qlMUserId: qlMUserId == freezed
          ? _value.qlMUserId
          : qlMUserId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hubungan: hubungan == freezed
          ? _value.hubungan
          : hubungan // ignore: cast_nullable_to_non_nullable
              as String,
      statusKeluarga: statusKeluarga == freezed
          ? _value.statusKeluarga
          : statusKeluarga // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      pekerjaan: pekerjaan == freezed
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FamilyModelCopyWith<$Res>
    implements $FamilyModelCopyWith<$Res> {
  factory _$$_FamilyModelCopyWith(
          _$_FamilyModel value, $Res Function(_$_FamilyModel) then) =
      __$$_FamilyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'ql_m_user_id') String qlMUserId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'hubungan') String hubungan,
      @JsonKey(name: 'status_keluarga') String statusKeluarga,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'pekerjaan') String? pekerjaan,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'created_by') String? createdBy,
      @JsonKey(name: 'updated_by') String? updatedBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$_FamilyModelCopyWithImpl<$Res> extends _$FamilyModelCopyWithImpl<$Res>
    implements _$$_FamilyModelCopyWith<$Res> {
  __$$_FamilyModelCopyWithImpl(
      _$_FamilyModel _value, $Res Function(_$_FamilyModel) _then)
      : super(_value, (v) => _then(v as _$_FamilyModel));

  @override
  _$_FamilyModel get _value => super._value as _$_FamilyModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? qlMUserId = freezed,
    Object? name = freezed,
    Object? hubungan = freezed,
    Object? statusKeluarga = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? pekerjaan = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_FamilyModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      qlMUserId: qlMUserId == freezed
          ? _value.qlMUserId
          : qlMUserId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hubungan: hubungan == freezed
          ? _value.hubungan
          : hubungan // ignore: cast_nullable_to_non_nullable
              as String,
      statusKeluarga: statusKeluarga == freezed
          ? _value.statusKeluarga
          : statusKeluarga // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      pekerjaan: pekerjaan == freezed
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FamilyModel implements _FamilyModel {
  const _$_FamilyModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'ql_m_user_id') required this.qlMUserId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'hubungan') required this.hubungan,
      @JsonKey(name: 'status_keluarga') required this.statusKeluarga,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'pekerjaan') this.pekerjaan,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'updated_by') this.updatedBy,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_FamilyModel.fromJson(Map<String, dynamic> json) =>
      _$$_FamilyModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'ql_m_user_id')
  final String qlMUserId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'hubungan')
  final String hubungan;
  @override
  @JsonKey(name: 'status_keluarga')
  final String statusKeluarga;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'pekerjaan')
  final String? pekerjaan;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'created_by')
  final String? createdBy;
  @override
  @JsonKey(name: 'updated_by')
  final String? updatedBy;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'FamilyModel(id: $id, qlMUserId: $qlMUserId, name: $name, hubungan: $hubungan, statusKeluarga: $statusKeluarga, address: $address, phone: $phone, pekerjaan: $pekerjaan, status: $status, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FamilyModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.qlMUserId, qlMUserId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.hubungan, hubungan) &&
            const DeepCollectionEquality()
                .equals(other.statusKeluarga, statusKeluarga) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.pekerjaan, pekerjaan) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(qlMUserId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(hubungan),
      const DeepCollectionEquality().hash(statusKeluarga),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(pekerjaan),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(updatedBy),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_FamilyModelCopyWith<_$_FamilyModel> get copyWith =>
      __$$_FamilyModelCopyWithImpl<_$_FamilyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamilyModelToJson(
      this,
    );
  }
}

abstract class _FamilyModel implements FamilyModel {
  const factory _FamilyModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'ql_m_user_id') required final String qlMUserId,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'hubungan') required final String hubungan,
      @JsonKey(name: 'status_keluarga') required final String statusKeluarga,
      @JsonKey(name: 'address') required final String address,
      @JsonKey(name: 'phone') required final String phone,
      @JsonKey(name: 'pekerjaan') final String? pekerjaan,
      @JsonKey(name: 'status') required final String status,
      @JsonKey(name: 'created_by') final String? createdBy,
      @JsonKey(name: 'updated_by') final String? updatedBy,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$_FamilyModel;

  factory _FamilyModel.fromJson(Map<String, dynamic> json) =
      _$_FamilyModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'ql_m_user_id')
  String get qlMUserId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'hubungan')
  String get hubungan;
  @override
  @JsonKey(name: 'status_keluarga')
  String get statusKeluarga;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'pekerjaan')
  String? get pekerjaan;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'created_by')
  String? get createdBy;
  @override
  @JsonKey(name: 'updated_by')
  String? get updatedBy;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyModelCopyWith<_$_FamilyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyContent _$FamilyContentFromJson(Map<String, dynamic> json) {
  return _FamilyContent.fromJson(json);
}

/// @nodoc
mixin _$FamilyContent {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'hubungan')
  String get hubungan => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_keluarga')
  String get statusKeluarga => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'pekerjaan')
  String? get pekerjaan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyContentCopyWith<FamilyContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyContentCopyWith<$Res> {
  factory $FamilyContentCopyWith(
          FamilyContent value, $Res Function(FamilyContent) then) =
      _$FamilyContentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'hubungan') String hubungan,
      @JsonKey(name: 'status_keluarga') String statusKeluarga,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'pekerjaan') String? pekerjaan});
}

/// @nodoc
class _$FamilyContentCopyWithImpl<$Res>
    implements $FamilyContentCopyWith<$Res> {
  _$FamilyContentCopyWithImpl(this._value, this._then);

  final FamilyContent _value;
  // ignore: unused_field
  final $Res Function(FamilyContent) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? hubungan = freezed,
    Object? statusKeluarga = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? pekerjaan = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hubungan: hubungan == freezed
          ? _value.hubungan
          : hubungan // ignore: cast_nullable_to_non_nullable
              as String,
      statusKeluarga: statusKeluarga == freezed
          ? _value.statusKeluarga
          : statusKeluarga // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      pekerjaan: pekerjaan == freezed
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FamilyContentCopyWith<$Res>
    implements $FamilyContentCopyWith<$Res> {
  factory _$$_FamilyContentCopyWith(
          _$_FamilyContent value, $Res Function(_$_FamilyContent) then) =
      __$$_FamilyContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'hubungan') String hubungan,
      @JsonKey(name: 'status_keluarga') String statusKeluarga,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'pekerjaan') String? pekerjaan});
}

/// @nodoc
class __$$_FamilyContentCopyWithImpl<$Res>
    extends _$FamilyContentCopyWithImpl<$Res>
    implements _$$_FamilyContentCopyWith<$Res> {
  __$$_FamilyContentCopyWithImpl(
      _$_FamilyContent _value, $Res Function(_$_FamilyContent) _then)
      : super(_value, (v) => _then(v as _$_FamilyContent));

  @override
  _$_FamilyContent get _value => super._value as _$_FamilyContent;

  @override
  $Res call({
    Object? name = freezed,
    Object? hubungan = freezed,
    Object? statusKeluarga = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? pekerjaan = freezed,
  }) {
    return _then(_$_FamilyContent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hubungan: hubungan == freezed
          ? _value.hubungan
          : hubungan // ignore: cast_nullable_to_non_nullable
              as String,
      statusKeluarga: statusKeluarga == freezed
          ? _value.statusKeluarga
          : statusKeluarga // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      pekerjaan: pekerjaan == freezed
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FamilyContent implements _FamilyContent {
  const _$_FamilyContent(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'hubungan') required this.hubungan,
      @JsonKey(name: 'status_keluarga') required this.statusKeluarga,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'pekerjaan') this.pekerjaan});

  factory _$_FamilyContent.fromJson(Map<String, dynamic> json) =>
      _$$_FamilyContentFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'hubungan')
  final String hubungan;
  @override
  @JsonKey(name: 'status_keluarga')
  final String statusKeluarga;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'pekerjaan')
  final String? pekerjaan;

  @override
  String toString() {
    return 'FamilyContent(name: $name, hubungan: $hubungan, statusKeluarga: $statusKeluarga, address: $address, phone: $phone, pekerjaan: $pekerjaan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FamilyContent &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.hubungan, hubungan) &&
            const DeepCollectionEquality()
                .equals(other.statusKeluarga, statusKeluarga) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.pekerjaan, pekerjaan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(hubungan),
      const DeepCollectionEquality().hash(statusKeluarga),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(pekerjaan));

  @JsonKey(ignore: true)
  @override
  _$$_FamilyContentCopyWith<_$_FamilyContent> get copyWith =>
      __$$_FamilyContentCopyWithImpl<_$_FamilyContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamilyContentToJson(
      this,
    );
  }
}

abstract class _FamilyContent implements FamilyContent {
  const factory _FamilyContent(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'hubungan') required final String hubungan,
      @JsonKey(name: 'status_keluarga') required final String statusKeluarga,
      @JsonKey(name: 'address') required final String address,
      @JsonKey(name: 'phone') required final String phone,
      @JsonKey(name: 'pekerjaan') final String? pekerjaan}) = _$_FamilyContent;

  factory _FamilyContent.fromJson(Map<String, dynamic> json) =
      _$_FamilyContent.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'hubungan')
  String get hubungan;
  @override
  @JsonKey(name: 'status_keluarga')
  String get statusKeluarga;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'pekerjaan')
  String? get pekerjaan;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyContentCopyWith<_$_FamilyContent> get copyWith =>
      throw _privateConstructorUsedError;
}

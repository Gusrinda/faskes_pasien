// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'insurance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsuranceListResponse _$InsuranceListResponseFromJson(
    Map<String, dynamic> json) {
  return _InsuranceListResponse.fromJson(json);
}

/// @nodoc
mixin _$InsuranceListResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<InsuranceModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuranceListResponseCopyWith<InsuranceListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceListResponseCopyWith<$Res> {
  factory $InsuranceListResponseCopyWith(InsuranceListResponse value,
          $Res Function(InsuranceListResponse) then) =
      _$InsuranceListResponseCopyWithImpl<$Res>;
  $Res call({bool success, String? message, List<InsuranceModel>? data});
}

/// @nodoc
class _$InsuranceListResponseCopyWithImpl<$Res>
    implements $InsuranceListResponseCopyWith<$Res> {
  _$InsuranceListResponseCopyWithImpl(this._value, this._then);

  final InsuranceListResponse _value;
  // ignore: unused_field
  final $Res Function(InsuranceListResponse) _then;

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
              as List<InsuranceModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_InsuranceListResponseCopyWith<$Res>
    implements $InsuranceListResponseCopyWith<$Res> {
  factory _$$_InsuranceListResponseCopyWith(_$_InsuranceListResponse value,
          $Res Function(_$_InsuranceListResponse) then) =
      __$$_InsuranceListResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? message, List<InsuranceModel>? data});
}

/// @nodoc
class __$$_InsuranceListResponseCopyWithImpl<$Res>
    extends _$InsuranceListResponseCopyWithImpl<$Res>
    implements _$$_InsuranceListResponseCopyWith<$Res> {
  __$$_InsuranceListResponseCopyWithImpl(_$_InsuranceListResponse _value,
      $Res Function(_$_InsuranceListResponse) _then)
      : super(_value, (v) => _then(v as _$_InsuranceListResponse));

  @override
  _$_InsuranceListResponse get _value =>
      super._value as _$_InsuranceListResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_InsuranceListResponse(
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
              as List<InsuranceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsuranceListResponse implements _InsuranceListResponse {
  const _$_InsuranceListResponse(
      {required this.success, this.message, final List<InsuranceModel>? data})
      : _data = data;

  factory _$_InsuranceListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_InsuranceListResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  final List<InsuranceModel>? _data;
  @override
  List<InsuranceModel>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InsuranceListResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceListResponse &&
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
  _$$_InsuranceListResponseCopyWith<_$_InsuranceListResponse> get copyWith =>
      __$$_InsuranceListResponseCopyWithImpl<_$_InsuranceListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsuranceListResponseToJson(
      this,
    );
  }
}

abstract class _InsuranceListResponse implements InsuranceListResponse {
  const factory _InsuranceListResponse(
      {required final bool success,
      final String? message,
      final List<InsuranceModel>? data}) = _$_InsuranceListResponse;

  factory _InsuranceListResponse.fromJson(Map<String, dynamic> json) =
      _$_InsuranceListResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<InsuranceModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_InsuranceListResponseCopyWith<_$_InsuranceListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

InsuranceDetailResponse _$InsuranceDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _InsuranceDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$InsuranceDetailResponse {
  String? get message => throw _privateConstructorUsedError;
  InsuranceModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuranceDetailResponseCopyWith<InsuranceDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceDetailResponseCopyWith<$Res> {
  factory $InsuranceDetailResponseCopyWith(InsuranceDetailResponse value,
          $Res Function(InsuranceDetailResponse) then) =
      _$InsuranceDetailResponseCopyWithImpl<$Res>;
  $Res call({String? message, InsuranceModel? data});

  $InsuranceModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$InsuranceDetailResponseCopyWithImpl<$Res>
    implements $InsuranceDetailResponseCopyWith<$Res> {
  _$InsuranceDetailResponseCopyWithImpl(this._value, this._then);

  final InsuranceDetailResponse _value;
  // ignore: unused_field
  final $Res Function(InsuranceDetailResponse) _then;

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
              as InsuranceModel?,
    ));
  }

  @override
  $InsuranceModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $InsuranceModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_InsuranceDetailResponseCopyWith<$Res>
    implements $InsuranceDetailResponseCopyWith<$Res> {
  factory _$$_InsuranceDetailResponseCopyWith(_$_InsuranceDetailResponse value,
          $Res Function(_$_InsuranceDetailResponse) then) =
      __$$_InsuranceDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, InsuranceModel? data});

  @override
  $InsuranceModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_InsuranceDetailResponseCopyWithImpl<$Res>
    extends _$InsuranceDetailResponseCopyWithImpl<$Res>
    implements _$$_InsuranceDetailResponseCopyWith<$Res> {
  __$$_InsuranceDetailResponseCopyWithImpl(_$_InsuranceDetailResponse _value,
      $Res Function(_$_InsuranceDetailResponse) _then)
      : super(_value, (v) => _then(v as _$_InsuranceDetailResponse));

  @override
  _$_InsuranceDetailResponse get _value =>
      super._value as _$_InsuranceDetailResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_InsuranceDetailResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InsuranceModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsuranceDetailResponse extends _InsuranceDetailResponse {
  const _$_InsuranceDetailResponse({this.message, this.data}) : super._();

  factory _$_InsuranceDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_InsuranceDetailResponseFromJson(json);

  @override
  final String? message;
  @override
  final InsuranceModel? data;

  @override
  String toString() {
    return 'InsuranceDetailResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceDetailResponse &&
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
  _$$_InsuranceDetailResponseCopyWith<_$_InsuranceDetailResponse>
      get copyWith =>
          __$$_InsuranceDetailResponseCopyWithImpl<_$_InsuranceDetailResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsuranceDetailResponseToJson(
      this,
    );
  }
}

abstract class _InsuranceDetailResponse extends InsuranceDetailResponse {
  const factory _InsuranceDetailResponse(
      {final String? message,
      final InsuranceModel? data}) = _$_InsuranceDetailResponse;
  const _InsuranceDetailResponse._() : super._();

  factory _InsuranceDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_InsuranceDetailResponse.fromJson;

  @override
  String? get message;
  @override
  InsuranceModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_InsuranceDetailResponseCopyWith<_$_InsuranceDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

InsuranceModel _$InsuranceModelFromJson(Map<String, dynamic> json) {
  return _InsuranceModel.fromJson(json);
}

/// @nodoc
mixin _$InsuranceModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ql_m_user_id')
  String get qlMUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_card')
  String get noCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'cara_bayar')
  String get caraBayar => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade')
  String get grade => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
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
  $InsuranceModelCopyWith<InsuranceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceModelCopyWith<$Res> {
  factory $InsuranceModelCopyWith(
          InsuranceModel value, $Res Function(InsuranceModel) then) =
      _$InsuranceModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'ql_m_user_id') String qlMUserId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'no_card') String noCard,
      @JsonKey(name: 'cara_bayar') String caraBayar,
      @JsonKey(name: 'grade') String grade,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'created_by') String? createdBy,
      @JsonKey(name: 'updated_by') String? updatedBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$InsuranceModelCopyWithImpl<$Res>
    implements $InsuranceModelCopyWith<$Res> {
  _$InsuranceModelCopyWithImpl(this._value, this._then);

  final InsuranceModel _value;
  // ignore: unused_field
  final $Res Function(InsuranceModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? qlMUserId = freezed,
    Object? name = freezed,
    Object? noCard = freezed,
    Object? caraBayar = freezed,
    Object? grade = freezed,
    Object? imageUrl = freezed,
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
      noCard: noCard == freezed
          ? _value.noCard
          : noCard // ignore: cast_nullable_to_non_nullable
              as String,
      caraBayar: caraBayar == freezed
          ? _value.caraBayar
          : caraBayar // ignore: cast_nullable_to_non_nullable
              as String,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_InsuranceModelCopyWith<$Res>
    implements $InsuranceModelCopyWith<$Res> {
  factory _$$_InsuranceModelCopyWith(
          _$_InsuranceModel value, $Res Function(_$_InsuranceModel) then) =
      __$$_InsuranceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'ql_m_user_id') String qlMUserId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'no_card') String noCard,
      @JsonKey(name: 'cara_bayar') String caraBayar,
      @JsonKey(name: 'grade') String grade,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'created_by') String? createdBy,
      @JsonKey(name: 'updated_by') String? updatedBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$_InsuranceModelCopyWithImpl<$Res>
    extends _$InsuranceModelCopyWithImpl<$Res>
    implements _$$_InsuranceModelCopyWith<$Res> {
  __$$_InsuranceModelCopyWithImpl(
      _$_InsuranceModel _value, $Res Function(_$_InsuranceModel) _then)
      : super(_value, (v) => _then(v as _$_InsuranceModel));

  @override
  _$_InsuranceModel get _value => super._value as _$_InsuranceModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? qlMUserId = freezed,
    Object? name = freezed,
    Object? noCard = freezed,
    Object? caraBayar = freezed,
    Object? grade = freezed,
    Object? imageUrl = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_InsuranceModel(
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
      noCard: noCard == freezed
          ? _value.noCard
          : noCard // ignore: cast_nullable_to_non_nullable
              as String,
      caraBayar: caraBayar == freezed
          ? _value.caraBayar
          : caraBayar // ignore: cast_nullable_to_non_nullable
              as String,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_InsuranceModel implements _InsuranceModel {
  const _$_InsuranceModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'ql_m_user_id') required this.qlMUserId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'no_card') required this.noCard,
      @JsonKey(name: 'cara_bayar') required this.caraBayar,
      @JsonKey(name: 'grade') required this.grade,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'updated_by') this.updatedBy,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_InsuranceModel.fromJson(Map<String, dynamic> json) =>
      _$$_InsuranceModelFromJson(json);

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
  @JsonKey(name: 'no_card')
  final String noCard;
  @override
  @JsonKey(name: 'cara_bayar')
  final String caraBayar;
  @override
  @JsonKey(name: 'grade')
  final String grade;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
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
    return 'InsuranceModel(id: $id, qlMUserId: $qlMUserId, name: $name, noCard: $noCard, caraBayar: $caraBayar, grade: $grade, imageUrl: $imageUrl, status: $status, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.qlMUserId, qlMUserId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.noCard, noCard) &&
            const DeepCollectionEquality().equals(other.caraBayar, caraBayar) &&
            const DeepCollectionEquality().equals(other.grade, grade) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
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
      const DeepCollectionEquality().hash(noCard),
      const DeepCollectionEquality().hash(caraBayar),
      const DeepCollectionEquality().hash(grade),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(updatedBy),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_InsuranceModelCopyWith<_$_InsuranceModel> get copyWith =>
      __$$_InsuranceModelCopyWithImpl<_$_InsuranceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsuranceModelToJson(
      this,
    );
  }
}

abstract class _InsuranceModel implements InsuranceModel {
  const factory _InsuranceModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'ql_m_user_id') required final String qlMUserId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'no_card') required final String noCard,
          @JsonKey(name: 'cara_bayar') required final String caraBayar,
          @JsonKey(name: 'grade') required final String grade,
          @JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'created_by') final String? createdBy,
          @JsonKey(name: 'updated_by') final String? updatedBy,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$_InsuranceModel;

  factory _InsuranceModel.fromJson(Map<String, dynamic> json) =
      _$_InsuranceModel.fromJson;

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
  @JsonKey(name: 'no_card')
  String get noCard;
  @override
  @JsonKey(name: 'cara_bayar')
  String get caraBayar;
  @override
  @JsonKey(name: 'grade')
  String get grade;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
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
  _$$_InsuranceModelCopyWith<_$_InsuranceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

InsuranceContent _$InsuranceContentFromJson(Map<String, dynamic> json) {
  return _InsuranceContent.fromJson(json);
}

/// @nodoc
mixin _$InsuranceContent {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_card')
  String get noCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'cara_bayar')
  String get caraBayar => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade')
  String get grade => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuranceContentCopyWith<InsuranceContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceContentCopyWith<$Res> {
  factory $InsuranceContentCopyWith(
          InsuranceContent value, $Res Function(InsuranceContent) then) =
      _$InsuranceContentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'no_card') String noCard,
      @JsonKey(name: 'cara_bayar') String caraBayar,
      @JsonKey(name: 'grade') String grade,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$InsuranceContentCopyWithImpl<$Res>
    implements $InsuranceContentCopyWith<$Res> {
  _$InsuranceContentCopyWithImpl(this._value, this._then);

  final InsuranceContent _value;
  // ignore: unused_field
  final $Res Function(InsuranceContent) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? noCard = freezed,
    Object? caraBayar = freezed,
    Object? grade = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      noCard: noCard == freezed
          ? _value.noCard
          : noCard // ignore: cast_nullable_to_non_nullable
              as String,
      caraBayar: caraBayar == freezed
          ? _value.caraBayar
          : caraBayar // ignore: cast_nullable_to_non_nullable
              as String,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InsuranceContentCopyWith<$Res>
    implements $InsuranceContentCopyWith<$Res> {
  factory _$$_InsuranceContentCopyWith(
          _$_InsuranceContent value, $Res Function(_$_InsuranceContent) then) =
      __$$_InsuranceContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'no_card') String noCard,
      @JsonKey(name: 'cara_bayar') String caraBayar,
      @JsonKey(name: 'grade') String grade,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$$_InsuranceContentCopyWithImpl<$Res>
    extends _$InsuranceContentCopyWithImpl<$Res>
    implements _$$_InsuranceContentCopyWith<$Res> {
  __$$_InsuranceContentCopyWithImpl(
      _$_InsuranceContent _value, $Res Function(_$_InsuranceContent) _then)
      : super(_value, (v) => _then(v as _$_InsuranceContent));

  @override
  _$_InsuranceContent get _value => super._value as _$_InsuranceContent;

  @override
  $Res call({
    Object? name = freezed,
    Object? noCard = freezed,
    Object? caraBayar = freezed,
    Object? grade = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_InsuranceContent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      noCard: noCard == freezed
          ? _value.noCard
          : noCard // ignore: cast_nullable_to_non_nullable
              as String,
      caraBayar: caraBayar == freezed
          ? _value.caraBayar
          : caraBayar // ignore: cast_nullable_to_non_nullable
              as String,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsuranceContent implements _InsuranceContent {
  const _$_InsuranceContent(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'no_card') required this.noCard,
      @JsonKey(name: 'cara_bayar') required this.caraBayar,
      @JsonKey(name: 'grade') required this.grade,
      @JsonKey(name: 'image_url') required this.imageUrl});

  factory _$_InsuranceContent.fromJson(Map<String, dynamic> json) =>
      _$$_InsuranceContentFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'no_card')
  final String noCard;
  @override
  @JsonKey(name: 'cara_bayar')
  final String caraBayar;
  @override
  @JsonKey(name: 'grade')
  final String grade;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'InsuranceContent(name: $name, noCard: $noCard, caraBayar: $caraBayar, grade: $grade, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceContent &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.noCard, noCard) &&
            const DeepCollectionEquality().equals(other.caraBayar, caraBayar) &&
            const DeepCollectionEquality().equals(other.grade, grade) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(noCard),
      const DeepCollectionEquality().hash(caraBayar),
      const DeepCollectionEquality().hash(grade),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$$_InsuranceContentCopyWith<_$_InsuranceContent> get copyWith =>
      __$$_InsuranceContentCopyWithImpl<_$_InsuranceContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsuranceContentToJson(
      this,
    );
  }
}

abstract class _InsuranceContent implements InsuranceContent {
  const factory _InsuranceContent(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'no_card') required final String noCard,
          @JsonKey(name: 'cara_bayar') required final String caraBayar,
          @JsonKey(name: 'grade') required final String grade,
          @JsonKey(name: 'image_url') required final String imageUrl}) =
      _$_InsuranceContent;

  factory _InsuranceContent.fromJson(Map<String, dynamic> json) =
      _$_InsuranceContent.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'no_card')
  String get noCard;
  @override
  @JsonKey(name: 'cara_bayar')
  String get caraBayar;
  @override
  @JsonKey(name: 'grade')
  String get grade;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_InsuranceContentCopyWith<_$_InsuranceContent> get copyWith =>
      throw _privateConstructorUsedError;
}

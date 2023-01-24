// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressState {
  UserModel get user => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  FormTextInput get fieldAddress => throw _privateConstructorUsedError;
  FormTextInput get fieldRT => throw _privateConstructorUsedError;
  FormTextInput get fieldRW => throw _privateConstructorUsedError;
  FormTextInput get fieldProvince => throw _privateConstructorUsedError;
  ProvinceModel? get province => throw _privateConstructorUsedError;
  FormTextInput get fieldCity => throw _privateConstructorUsedError;
  CityModel? get city => throw _privateConstructorUsedError;
  FormTextInput get fieldDistrict => throw _privateConstructorUsedError;
  DistrictModel? get district => throw _privateConstructorUsedError;
  FormTextInput get fieldVillage => throw _privateConstructorUsedError;
  VillageModel? get village => throw _privateConstructorUsedError;
  FormTextInput get fieldPostalCode => throw _privateConstructorUsedError;
  ToastData? get toastData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res>;
  $Res call(
      {UserModel user,
      FormzStatus status,
      FormTextInput fieldAddress,
      FormTextInput fieldRT,
      FormTextInput fieldRW,
      FormTextInput fieldProvince,
      ProvinceModel? province,
      FormTextInput fieldCity,
      CityModel? city,
      FormTextInput fieldDistrict,
      DistrictModel? district,
      FormTextInput fieldVillage,
      VillageModel? village,
      FormTextInput fieldPostalCode,
      ToastData? toastData});

  $UserModelCopyWith<$Res> get user;
  $ProvinceModelCopyWith<$Res>? get province;
  $CityModelCopyWith<$Res>? get city;
  $DistrictModelCopyWith<$Res>? get district;
  $VillageModelCopyWith<$Res>? get village;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res> implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  final AddressState _value;
  // ignore: unused_field
  final $Res Function(AddressState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
    Object? fieldAddress = freezed,
    Object? fieldRT = freezed,
    Object? fieldRW = freezed,
    Object? fieldProvince = freezed,
    Object? province = freezed,
    Object? fieldCity = freezed,
    Object? city = freezed,
    Object? fieldDistrict = freezed,
    Object? district = freezed,
    Object? fieldVillage = freezed,
    Object? village = freezed,
    Object? fieldPostalCode = freezed,
    Object? toastData = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      fieldAddress: fieldAddress == freezed
          ? _value.fieldAddress
          : fieldAddress // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldRT: fieldRT == freezed
          ? _value.fieldRT
          : fieldRT // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldRW: fieldRW == freezed
          ? _value.fieldRW
          : fieldRW // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldProvince: fieldProvince == freezed
          ? _value.fieldProvince
          : fieldProvince // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      fieldCity: fieldCity == freezed
          ? _value.fieldCity
          : fieldCity // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      fieldDistrict: fieldDistrict == freezed
          ? _value.fieldDistrict
          : fieldDistrict // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictModel?,
      fieldVillage: fieldVillage == freezed
          ? _value.fieldVillage
          : fieldVillage // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      village: village == freezed
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as VillageModel?,
      fieldPostalCode: fieldPostalCode == freezed
          ? _value.fieldPostalCode
          : fieldPostalCode // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      toastData: toastData == freezed
          ? _value.toastData
          : toastData // ignore: cast_nullable_to_non_nullable
              as ToastData?,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $ProvinceModelCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $ProvinceModelCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value));
    });
  }

  @override
  $CityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value));
    });
  }

  @override
  $DistrictModelCopyWith<$Res>? get district {
    if (_value.district == null) {
      return null;
    }

    return $DistrictModelCopyWith<$Res>(_value.district!, (value) {
      return _then(_value.copyWith(district: value));
    });
  }

  @override
  $VillageModelCopyWith<$Res>? get village {
    if (_value.village == null) {
      return null;
    }

    return $VillageModelCopyWith<$Res>(_value.village!, (value) {
      return _then(_value.copyWith(village: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddressStateCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$_AddressStateCopyWith(
          _$_AddressState value, $Res Function(_$_AddressState) then) =
      __$$_AddressStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel user,
      FormzStatus status,
      FormTextInput fieldAddress,
      FormTextInput fieldRT,
      FormTextInput fieldRW,
      FormTextInput fieldProvince,
      ProvinceModel? province,
      FormTextInput fieldCity,
      CityModel? city,
      FormTextInput fieldDistrict,
      DistrictModel? district,
      FormTextInput fieldVillage,
      VillageModel? village,
      FormTextInput fieldPostalCode,
      ToastData? toastData});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $ProvinceModelCopyWith<$Res>? get province;
  @override
  $CityModelCopyWith<$Res>? get city;
  @override
  $DistrictModelCopyWith<$Res>? get district;
  @override
  $VillageModelCopyWith<$Res>? get village;
}

/// @nodoc
class __$$_AddressStateCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res>
    implements _$$_AddressStateCopyWith<$Res> {
  __$$_AddressStateCopyWithImpl(
      _$_AddressState _value, $Res Function(_$_AddressState) _then)
      : super(_value, (v) => _then(v as _$_AddressState));

  @override
  _$_AddressState get _value => super._value as _$_AddressState;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
    Object? fieldAddress = freezed,
    Object? fieldRT = freezed,
    Object? fieldRW = freezed,
    Object? fieldProvince = freezed,
    Object? province = freezed,
    Object? fieldCity = freezed,
    Object? city = freezed,
    Object? fieldDistrict = freezed,
    Object? district = freezed,
    Object? fieldVillage = freezed,
    Object? village = freezed,
    Object? fieldPostalCode = freezed,
    Object? toastData = freezed,
  }) {
    return _then(_$_AddressState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      fieldAddress: fieldAddress == freezed
          ? _value.fieldAddress
          : fieldAddress // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldRT: fieldRT == freezed
          ? _value.fieldRT
          : fieldRT // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldRW: fieldRW == freezed
          ? _value.fieldRW
          : fieldRW // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      fieldProvince: fieldProvince == freezed
          ? _value.fieldProvince
          : fieldProvince // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      fieldCity: fieldCity == freezed
          ? _value.fieldCity
          : fieldCity // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      fieldDistrict: fieldDistrict == freezed
          ? _value.fieldDistrict
          : fieldDistrict // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictModel?,
      fieldVillage: fieldVillage == freezed
          ? _value.fieldVillage
          : fieldVillage // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      village: village == freezed
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as VillageModel?,
      fieldPostalCode: fieldPostalCode == freezed
          ? _value.fieldPostalCode
          : fieldPostalCode // ignore: cast_nullable_to_non_nullable
              as FormTextInput,
      toastData: toastData == freezed
          ? _value.toastData
          : toastData // ignore: cast_nullable_to_non_nullable
              as ToastData?,
    ));
  }
}

/// @nodoc

class _$_AddressState implements _AddressState {
  const _$_AddressState(
      {required this.user,
      this.status = FormzStatus.pure,
      required this.fieldAddress,
      required this.fieldRT,
      required this.fieldRW,
      required this.fieldProvince,
      this.province,
      required this.fieldCity,
      this.city,
      required this.fieldDistrict,
      this.district,
      required this.fieldVillage,
      this.village,
      required this.fieldPostalCode,
      this.toastData});

  @override
  final UserModel user;
  @override
  @JsonKey()
  final FormzStatus status;
  @override
  final FormTextInput fieldAddress;
  @override
  final FormTextInput fieldRT;
  @override
  final FormTextInput fieldRW;
  @override
  final FormTextInput fieldProvince;
  @override
  final ProvinceModel? province;
  @override
  final FormTextInput fieldCity;
  @override
  final CityModel? city;
  @override
  final FormTextInput fieldDistrict;
  @override
  final DistrictModel? district;
  @override
  final FormTextInput fieldVillage;
  @override
  final VillageModel? village;
  @override
  final FormTextInput fieldPostalCode;
  @override
  final ToastData? toastData;

  @override
  String toString() {
    return 'AddressState(user: $user, status: $status, fieldAddress: $fieldAddress, fieldRT: $fieldRT, fieldRW: $fieldRW, fieldProvince: $fieldProvince, province: $province, fieldCity: $fieldCity, city: $city, fieldDistrict: $fieldDistrict, district: $district, fieldVillage: $fieldVillage, village: $village, fieldPostalCode: $fieldPostalCode, toastData: $toastData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.fieldAddress, fieldAddress) &&
            const DeepCollectionEquality().equals(other.fieldRT, fieldRT) &&
            const DeepCollectionEquality().equals(other.fieldRW, fieldRW) &&
            const DeepCollectionEquality()
                .equals(other.fieldProvince, fieldProvince) &&
            const DeepCollectionEquality().equals(other.province, province) &&
            const DeepCollectionEquality().equals(other.fieldCity, fieldCity) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.fieldDistrict, fieldDistrict) &&
            const DeepCollectionEquality().equals(other.district, district) &&
            const DeepCollectionEquality()
                .equals(other.fieldVillage, fieldVillage) &&
            const DeepCollectionEquality().equals(other.village, village) &&
            const DeepCollectionEquality()
                .equals(other.fieldPostalCode, fieldPostalCode) &&
            const DeepCollectionEquality().equals(other.toastData, toastData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(fieldAddress),
      const DeepCollectionEquality().hash(fieldRT),
      const DeepCollectionEquality().hash(fieldRW),
      const DeepCollectionEquality().hash(fieldProvince),
      const DeepCollectionEquality().hash(province),
      const DeepCollectionEquality().hash(fieldCity),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(fieldDistrict),
      const DeepCollectionEquality().hash(district),
      const DeepCollectionEquality().hash(fieldVillage),
      const DeepCollectionEquality().hash(village),
      const DeepCollectionEquality().hash(fieldPostalCode),
      const DeepCollectionEquality().hash(toastData));

  @JsonKey(ignore: true)
  @override
  _$$_AddressStateCopyWith<_$_AddressState> get copyWith =>
      __$$_AddressStateCopyWithImpl<_$_AddressState>(this, _$identity);
}

abstract class _AddressState implements AddressState {
  const factory _AddressState(
      {required final UserModel user,
      final FormzStatus status,
      required final FormTextInput fieldAddress,
      required final FormTextInput fieldRT,
      required final FormTextInput fieldRW,
      required final FormTextInput fieldProvince,
      final ProvinceModel? province,
      required final FormTextInput fieldCity,
      final CityModel? city,
      required final FormTextInput fieldDistrict,
      final DistrictModel? district,
      required final FormTextInput fieldVillage,
      final VillageModel? village,
      required final FormTextInput fieldPostalCode,
      final ToastData? toastData}) = _$_AddressState;

  @override
  UserModel get user;
  @override
  FormzStatus get status;
  @override
  FormTextInput get fieldAddress;
  @override
  FormTextInput get fieldRT;
  @override
  FormTextInput get fieldRW;
  @override
  FormTextInput get fieldProvince;
  @override
  ProvinceModel? get province;
  @override
  FormTextInput get fieldCity;
  @override
  CityModel? get city;
  @override
  FormTextInput get fieldDistrict;
  @override
  DistrictModel? get district;
  @override
  FormTextInput get fieldVillage;
  @override
  VillageModel? get village;
  @override
  FormTextInput get fieldPostalCode;
  @override
  ToastData? get toastData;
  @override
  @JsonKey(ignore: true)
  _$$_AddressStateCopyWith<_$_AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

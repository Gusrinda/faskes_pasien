import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'address_rt') required String rt,
    @JsonKey(name: 'address_rw') required String rw,
    @JsonKey(name: 'address_provinsi') required String provinsi,
    @JsonKey(name: 'address_kota') required String kota,
    @JsonKey(name: 'address_kecamatan') required String kecamatan,
    @JsonKey(name: 'address_kelurahan') required String kelurahan,
    @JsonKey(name: 'address_kodepos') required String kodePos,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

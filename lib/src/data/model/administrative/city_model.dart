import 'package:pasien/src/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityListResponse extends ApiResponse<List<CityModel>>
    with _$CityListResponse {
  const factory CityListResponse({
    required bool success,
    String? message,
    List<CityModel>? data,
  }) = _CityListResponse;

  factory CityListResponse.fromJson(Map<String, dynamic> json) =>
      _$CityListResponseFromJson(json);
}

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    @JsonKey(name: 'kode') required String code,
    @JsonKey(name: 'value_1') required String name,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}

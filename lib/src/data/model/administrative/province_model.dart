import 'package:pasien/src/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_model.freezed.dart';
part 'province_model.g.dart';

@freezed
class ProvinceListResponse extends ApiResponse<List<ProvinceModel>>
    with _$ProvinceListResponse {
  const factory ProvinceListResponse({
    required bool success,
    String? message,
    List<ProvinceModel>? data,
  }) = _ProvinceListResponse;

  factory ProvinceListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProvinceListResponseFromJson(json);
}

@freezed
class ProvinceModel with _$ProvinceModel {
  const factory ProvinceModel({
    @JsonKey(name: 'kode') required String code,
    @JsonKey(name: 'value_1') required String name,
  }) = _ProvinceModel;

  factory ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinceModelFromJson(json);
}

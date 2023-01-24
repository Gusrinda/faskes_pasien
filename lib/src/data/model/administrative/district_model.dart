import 'package:pasien/src/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'district_model.freezed.dart';
part 'district_model.g.dart';

@freezed
class DistrictListResponse extends ApiResponse<List<DistrictModel>>
    with _$DistrictListResponse {
  const factory DistrictListResponse({
    required bool success,
    String? message,
    List<DistrictModel>? data,
  }) = _DistrictListResponse;

  factory DistrictListResponse.fromJson(Map<String, dynamic> json) =>
      _$DistrictListResponseFromJson(json);
}

@freezed
class DistrictModel with _$DistrictModel {
  const factory DistrictModel({
    @JsonKey(name: 'kode') required String code,
    @JsonKey(name: 'value_1') required String name,
  }) = _DistrictModel;

  factory DistrictModel.fromJson(Map<String, dynamic> json) =>
      _$DistrictModelFromJson(json);
}

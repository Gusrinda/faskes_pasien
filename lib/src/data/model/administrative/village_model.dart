import 'package:pasien/src/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'village_model.freezed.dart';
part 'village_model.g.dart';

@freezed
class VillageListResponse extends ApiResponse<List<VillageModel>>
    with _$VillageListResponse {
  const factory VillageListResponse({
    required bool success,
    String? message,
    List<VillageModel>? data,
  }) = _VillageListResponse;

  factory VillageListResponse.fromJson(Map<String, dynamic> json) =>
      _$VillageListResponseFromJson(json);
}

@freezed
class VillageModel with _$VillageModel {
  const factory VillageModel({
    @JsonKey(name: 'kode') required String code,
    @JsonKey(name: 'value_1') required String name,
  }) = _VillageModel;

  factory VillageModel.fromJson(Map<String, dynamic> json) =>
      _$VillageModelFromJson(json);
}

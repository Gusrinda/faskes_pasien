import 'package:pasien/src/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'insurance_model.freezed.dart';
part 'insurance_model.g.dart';

@freezed
class InsuranceListResponse extends ApiResponse<List<InsuranceModel>>
    with _$InsuranceListResponse {
  const factory InsuranceListResponse({
    required bool success,
    String? message,
    List<InsuranceModel>? data,
  }) = _InsuranceListResponse;

  factory InsuranceListResponse.fromJson(Map<String, dynamic> json) =>
      _$InsuranceListResponseFromJson(json);
}

@freezed
class InsuranceDetailResponse extends ApiResponse<InsuranceModel>
    with _$InsuranceDetailResponse {
  const InsuranceDetailResponse._();

  const factory InsuranceDetailResponse({
    String? message,
    InsuranceModel? data,
  }) = _InsuranceDetailResponse;

  factory InsuranceDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$InsuranceDetailResponseFromJson(json);

  @override
  bool get success => data != null;
}

@freezed
class InsuranceModel with _$InsuranceModel {
  const factory InsuranceModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'ql_m_user_id') required String qlMUserId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'no_card') required String noCard,
    @JsonKey(name: 'cara_bayar') required String caraBayar,
    @JsonKey(name: 'grade') required String grade,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'updated_by') String? updatedBy,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _InsuranceModel;

  factory InsuranceModel.fromJson(Map<String, dynamic> json) =>
      _$InsuranceModelFromJson(json);
}

@freezed
class InsuranceContent with _$InsuranceContent {
  const factory InsuranceContent({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'no_card') required String noCard,
    @JsonKey(name: 'cara_bayar') required String caraBayar,
    @JsonKey(name: 'grade') required String grade,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _InsuranceContent;

  factory InsuranceContent.fromJson(Map<String, dynamic> json) =>
      _$InsuranceContentFromJson(json);
}

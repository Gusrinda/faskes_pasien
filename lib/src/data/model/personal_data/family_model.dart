import 'package:pasien/src/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_model.freezed.dart';
part 'family_model.g.dart';

@freezed
class FamilyListResponse extends ApiResponse<List<FamilyModel>>
    with _$FamilyListResponse {
  const factory FamilyListResponse({
    required bool success,
    String? message,
    List<FamilyModel>? data,
  }) = _FamilyListResponse;

  factory FamilyListResponse.fromJson(Map<String, dynamic> json) =>
      _$FamilyListResponseFromJson(json);
}

@freezed
class FamilyDetailResponse extends ApiResponse<FamilyModel>
    with _$FamilyDetailResponse {
  const FamilyDetailResponse._();

  const factory FamilyDetailResponse({
    String? message,
    FamilyModel? data,
  }) = _FamilyDetailResponse;

  factory FamilyDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$FamilyDetailResponseFromJson(json);

  @override
  bool get success => data != null;
}

@freezed
class FamilyModel with _$FamilyModel {
  const factory FamilyModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'ql_m_user_id') required String qlMUserId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'hubungan') required String hubungan,
    @JsonKey(name: 'status_keluarga') required String statusKeluarga,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'pekerjaan') String? pekerjaan,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'updated_by') String? updatedBy,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _FamilyModel;

  factory FamilyModel.fromJson(Map<String, dynamic> json) =>
      _$FamilyModelFromJson(json);
}

@freezed
class FamilyContent with _$FamilyContent {
  const factory FamilyContent({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'hubungan') required String hubungan,
    @JsonKey(name: 'status_keluarga') required String statusKeluarga,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'pekerjaan') String? pekerjaan,
  }) = _FamilyContent;

  factory FamilyContent.fromJson(Map<String, dynamic> json) =>
      _$FamilyContentFromJson(json);
}
